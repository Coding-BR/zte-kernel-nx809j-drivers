// Exports deterministic reverse-engineering evidence for relocatable Linux kernel modules.
// @category AndroidKernel

import java.io.BufferedWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileOptions;
import ghidra.app.decompiler.DecompileResults;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Data;
import ghidra.program.model.listing.DataIterator;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.listing.FunctionManager;
import ghidra.program.model.listing.Instruction;
import ghidra.program.model.listing.InstructionIterator;
import ghidra.program.model.listing.Listing;
import ghidra.program.model.listing.Parameter;
import ghidra.program.model.mem.MemoryBlock;
import ghidra.program.model.pcode.PcodeOp;
import ghidra.program.model.symbol.Reference;
import ghidra.program.model.symbol.Symbol;
import ghidra.program.model.symbol.SymbolIterator;
import ghidra.program.model.symbol.SymbolTable;

public class ExportKernelModuleAnalysis extends GhidraScript {
    private Path moduleOutput;
    private int decompileTimeout = 120;

    @Override
    protected void run() throws Exception {
        if (currentProgram == null) {
            throw new IllegalStateException("An active program is required");
        }

        String[] arguments = getScriptArgs();
        if (arguments.length < 1) {
            throw new IllegalArgumentException(
                "Usage: ExportKernelModuleAnalysis.java <output-root> [decompile-timeout-seconds]"
            );
        }
        if (arguments.length >= 2) {
            decompileTimeout = Integer.parseInt(arguments[1]);
        }

        moduleOutput = Paths.get(arguments[0]).resolve(currentProgram.getName());
        Files.createDirectories(moduleOutput);
        Files.createDirectories(moduleOutput.resolve("decompiled"));
        Files.createDirectories(moduleOutput.resolve("pcode"));

        Listing listing = currentProgram.getListing();
        FunctionManager functions = currentProgram.getFunctionManager();
        SymbolTable symbols = currentProgram.getSymbolTable();

        List<Function> localFunctions = new ArrayList<>();
        FunctionIterator functionIterator = functions.getFunctions(true);
        while (functionIterator.hasNext()) {
            Function function = functionIterator.next();
            if (!function.isExternal() && !function.isThunk()) {
                localFunctions.add(function);
            }
        }

        exportManifest(localFunctions.size());
        exportMemoryBlocks();
        exportSymbols(symbols);
        exportExternals(symbols, functions);
        exportStrings(listing);
        exportFunctions(localFunctions, listing, functions, symbols);
        println("Exported " + localFunctions.size() + " functions to " + moduleOutput);
    }

    private void exportManifest(int functionCount) throws IOException {
        String content = "{\n" +
            "  \"schema_version\": 1,\n" +
            "  \"program\": " + json(currentProgram.getName()) + ",\n" +
            "  \"executable_format\": " + json(currentProgram.getExecutableFormat()) + ",\n" +
            "  \"executable_md5\": " + json(currentProgram.getExecutableMD5()) + ",\n" +
            "  \"language\": " + json(currentProgram.getLanguageID().toString()) + ",\n" +
            "  \"compiler_spec\": " +
                json(currentProgram.getCompilerSpec().getCompilerSpecID().toString()) + ",\n" +
            "  \"image_base\": " + json(currentProgram.getImageBase().toString()) + ",\n" +
            "  \"min_address\": " + json(currentProgram.getMinAddress().toString()) + ",\n" +
            "  \"max_address\": " + json(currentProgram.getMaxAddress().toString()) + ",\n" +
            "  \"pointer_size\": " + currentProgram.getDefaultPointerSize() + ",\n" +
            "  \"function_count\": " + functionCount + "\n" +
            "}\n";
        Files.writeString(moduleOutput.resolve("manifest.json"), content, StandardCharsets.UTF_8);
    }

    private void exportMemoryBlocks() throws IOException {
        try (BufferedWriter writer = writer("memory_blocks.jsonl")) {
            for (MemoryBlock block : currentProgram.getMemory().getBlocks()) {
                writer.write("{" +
                    "\"name\":" + json(block.getName()) + "," +
                    "\"start\":" + json(block.getStart().toString()) + "," +
                    "\"end\":" + json(block.getEnd().toString()) + "," +
                    "\"size\":" + block.getSize() + "," +
                    "\"read\":" + block.isRead() + "," +
                    "\"write\":" + block.isWrite() + "," +
                    "\"execute\":" + block.isExecute() + "," +
                    "\"initialized\":" + block.isInitialized() +
                    "}\n");
            }
        }
    }

    private void exportSymbols(SymbolTable symbolTable) throws Exception {
        try (BufferedWriter writer = writer("symbols.jsonl")) {
            SymbolIterator iterator = symbolTable.getAllSymbols(true);
            while (iterator.hasNext()) {
                monitor.checkCancelled();
                Symbol symbol = iterator.next();
                writer.write("{" +
                    "\"name\":" + json(symbol.getName()) + "," +
                    "\"full_name\":" + json(symbol.getName(true)) + "," +
                    "\"address\":" + json(symbol.getAddress().toString()) + "," +
                    "\"type\":" + json(symbol.getSymbolType().toString()) + "," +
                    "\"source\":" + json(symbol.getSource().toString()) + "," +
                    "\"external\":" + symbol.isExternal() + "," +
                    "\"primary\":" + symbol.isPrimary() +
                    "}\n");
            }
        }
    }

    private void exportExternals(SymbolTable symbolTable, FunctionManager functionManager)
            throws Exception {
        try (BufferedWriter writer = writer("externals.jsonl")) {
            SymbolIterator iterator = symbolTable.getExternalSymbols();
            while (iterator.hasNext()) {
                monitor.checkCancelled();
                Symbol symbol = iterator.next();
                Function function = functionManager.getFunctionAt(symbol.getAddress());
                String prototype = function == null ? null : function.getPrototypeString(true, true);
                writer.write("{" +
                    "\"name\":" + json(symbol.getName()) + "," +
                    "\"full_name\":" + json(symbol.getName(true)) + "," +
                    "\"address\":" + json(symbol.getAddress().toString()) + "," +
                    "\"type\":" + json(symbol.getSymbolType().toString()) + "," +
                    "\"prototype\":" + json(prototype) +
                    "}\n");
            }
        }
    }

    private void exportStrings(Listing listing) throws Exception {
        try (BufferedWriter writer = writer("strings.jsonl")) {
            DataIterator iterator = listing.getDefinedData(true);
            while (iterator.hasNext()) {
                monitor.checkCancelled();
                Data data = iterator.next();
                if (!data.hasStringValue()) {
                    continue;
                }
                Object value = data.getValue();
                writer.write("{" +
                    "\"address\":" + json(data.getAddress().toString()) + "," +
                    "\"type\":" + json(data.getDataType().getDisplayName()) + "," +
                    "\"value\":" + json(value == null ? null : value.toString()) +
                    "}\n");
            }
        }
    }

    private void exportFunctions(
            List<Function> localFunctions,
            Listing listing,
            FunctionManager functionManager,
            SymbolTable symbolTable) throws Exception {
        DecompileOptions options = new DecompileOptions();
        DecompInterface decompiler = new DecompInterface();
        decompiler.setOptions(options);
        decompiler.toggleCCode(true);
        decompiler.toggleSyntaxTree(true);
        if (!decompiler.openProgram(currentProgram)) {
            throw new IllegalStateException("Decompiler initialization failed: " + decompiler.getLastMessage());
        }

        try (
            BufferedWriter functionsWriter = writer("functions.jsonl");
            BufferedWriter callsWriter = writer("calls.jsonl");
            BufferedWriter combinedWriter = writer("pseudocode.c")
        ) {
            int index = 0;
            for (Function function : localFunctions) {
                monitor.checkCancelled();
                String fileStem = String.format(
                    "%04d_%s_%s",
                    index,
                    function.getEntryPoint().toString(),
                    safeFileName(function.getName())
                );
                DecompileResults result = decompiler.decompileFunction(
                    function,
                    decompileTimeout,
                    monitor
                );
                boolean completed = result.decompileCompleted();
                String error = result.getErrorMessage();
                String cCode = "";
                if (result.getDecompiledFunction() != null) {
                    cCode = result.getDecompiledFunction().getC();
                }

                Files.writeString(
                    moduleOutput.resolve("decompiled").resolve(fileStem + ".c"),
                    cCode,
                    StandardCharsets.UTF_8
                );
                combinedWriter.write("/* " + function.getEntryPoint() + " " + function.getName(true) + " */\n");
                if (!completed) {
                    combinedWriter.write("/* DECOMPILATION ERROR: " + oneLine(error) + " */\n");
                }
                combinedWriter.write(cCode);
                combinedWriter.write("\n\n");

                functionsWriter.write(functionJson(function, fileStem, completed, error));
                functionsWriter.write("\n");
                exportInstructionsAndCalls(
                    function,
                    fileStem,
                    listing,
                    functionManager,
                    symbolTable,
                    callsWriter
                );
                index++;
            }
        }
        finally {
            decompiler.dispose();
        }
    }

    private String functionJson(
            Function function,
            String fileStem,
            boolean decompiled,
            String error) {
        StringBuilder parameters = new StringBuilder("[");
        Parameter[] values = function.getParameters();
        for (int index = 0; index < values.length; index++) {
            if (index > 0) {
                parameters.append(',');
            }
            Parameter parameter = values[index];
            parameters.append("{")
                .append("\"ordinal\":").append(parameter.getOrdinal()).append(',')
                .append("\"name\":").append(json(parameter.getName())).append(',')
                .append("\"type\":").append(json(parameter.getDataType().getDisplayName()))
                .append("}");
        }
        parameters.append(']');

        return "{" +
            "\"name\":" + json(function.getName()) + "," +
            "\"full_name\":" + json(function.getName(true)) + "," +
            "\"entry\":" + json(function.getEntryPoint().toString()) + "," +
            "\"body_bytes\":" + function.getBody().getNumAddresses() + "," +
            "\"prototype\":" + json(function.getPrototypeString(true, true)) + "," +
            "\"return_type\":" + json(function.getReturnType().getDisplayName()) + "," +
            "\"calling_convention\":" + json(function.getCallingConventionName()) + "," +
            "\"varargs\":" + function.hasVarArgs() + "," +
            "\"thunk\":" + function.isThunk() + "," +
            "\"decompiled\":" + decompiled + "," +
            "\"decompiler_error\":" + json(error) + "," +
            "\"decompiled_file\":" + json("decompiled/" + fileStem + ".c") + "," +
            "\"pcode_file\":" + json("pcode/" + fileStem + ".jsonl") + "," +
            "\"parameters\":" + parameters +
            "}";
    }

    private void exportInstructionsAndCalls(
            Function function,
            String fileStem,
            Listing listing,
            FunctionManager functionManager,
            SymbolTable symbolTable,
            BufferedWriter callsWriter) throws Exception {
        Path pcodeFile = moduleOutput.resolve("pcode").resolve(fileStem + ".jsonl");
        try (BufferedWriter pcodeWriter = Files.newBufferedWriter(pcodeFile, StandardCharsets.UTF_8)) {
            InstructionIterator instructions = listing.getInstructions(function.getBody(), true);
            while (instructions.hasNext()) {
                monitor.checkCancelled();
                Instruction instruction = instructions.next();
                PcodeOp[] operations = instruction.getPcode();
                for (int opIndex = 0; opIndex < operations.length; opIndex++) {
                    pcodeWriter.write("{" +
                        "\"address\":" + json(instruction.getAddress().toString()) + "," +
                        "\"instruction\":" + json(instruction.toString()) + "," +
                        "\"op_index\":" + opIndex + "," +
                        "\"pcode\":" + json(operations[opIndex].toString()) +
                        "}\n");
                }

                for (Reference reference : instruction.getReferencesFrom()) {
                    if (!reference.getReferenceType().isCall()) {
                        continue;
                    }
                    Address targetAddress = reference.getToAddress();
                    Function target = functionManager.getFunctionAt(targetAddress);
                    if (target == null) {
                        target = functionManager.getFunctionContaining(targetAddress);
                    }
                    Symbol targetSymbol = symbolTable.getPrimarySymbol(targetAddress);
                    String targetName = target != null
                        ? target.getName(true)
                        : targetSymbol != null ? targetSymbol.getName(true) : targetAddress.toString();
                    boolean external = (target != null && target.isExternal()) ||
                        (targetSymbol != null && targetSymbol.isExternal());
                    callsWriter.write("{" +
                        "\"caller\":" + json(function.getName(true)) + "," +
                        "\"caller_entry\":" + json(function.getEntryPoint().toString()) + "," +
                        "\"callsite\":" + json(instruction.getAddress().toString()) + "," +
                        "\"target\":" + json(targetName) + "," +
                        "\"target_address\":" + json(targetAddress.toString()) + "," +
                        "\"reference_type\":" + json(reference.getReferenceType().toString()) + "," +
                        "\"external\":" + external +
                        "}\n");
                }
            }
        }
    }

    private BufferedWriter writer(String relativePath) throws IOException {
        return Files.newBufferedWriter(moduleOutput.resolve(relativePath), StandardCharsets.UTF_8);
    }

    private static String safeFileName(String value) {
        String safe = value.replaceAll("[^A-Za-z0-9._-]+", "_");
        if (safe.length() > 100) {
            return safe.substring(0, 100);
        }
        return safe.isEmpty() ? "function" : safe;
    }

    private static String oneLine(String value) {
        return value == null ? "" : value.replace('\r', ' ').replace('\n', ' ');
    }

    private static String json(String value) {
        if (value == null) {
            return "null";
        }
        StringBuilder escaped = new StringBuilder(value.length() + 16);
        escaped.append('"');
        for (int index = 0; index < value.length(); index++) {
            char character = value.charAt(index);
            switch (character) {
                case '"': escaped.append("\\\""); break;
                case '\\': escaped.append("\\\\"); break;
                case '\b': escaped.append("\\b"); break;
                case '\f': escaped.append("\\f"); break;
                case '\n': escaped.append("\\n"); break;
                case '\r': escaped.append("\\r"); break;
                case '\t': escaped.append("\\t"); break;
                default:
                    if (character < 0x20) {
                        escaped.append(String.format("\\u%04x", (int) character));
                    }
                    else {
                        escaped.append(character);
                    }
            }
        }
        escaped.append('"');
        return escaped.toString();
    }
}
