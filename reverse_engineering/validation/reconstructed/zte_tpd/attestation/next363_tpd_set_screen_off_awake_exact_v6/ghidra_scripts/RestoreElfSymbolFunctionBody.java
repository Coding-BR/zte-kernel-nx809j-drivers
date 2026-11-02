import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.address.AddressSet;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionManager;
import ghidra.program.model.listing.Instruction;
import ghidra.program.model.listing.InstructionIterator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class RestoreElfSymbolFunctionBody extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length != 5) {
            throw new IllegalArgumentException(
                "Usage: RestoreElfSymbolFunctionBody.java <function> <entry-hex> <size-bytes> <expected-md5> <recovery-entry-hex>"
            );
        }

        String functionName = args[0];
        long entryOffset = Long.parseUnsignedLong(args[1], 16);
        long expectedSize = Long.parseLong(args[2]);
        String expectedMd5 = args[3].toLowerCase();
        long recoveryOffset = Long.parseUnsignedLong(args[4], 16);
        String observedMd5 = currentProgram.getExecutableMD5().toLowerCase();
        if (!expectedMd5.equals(observedMd5)) {
            throw new IllegalStateException(
                "Module MD5 mismatch: expected " + expectedMd5 + ", got " + observedMd5
            );
        }
        if (expectedSize <= 0 || expectedSize > Integer.MAX_VALUE) {
            throw new IllegalArgumentException("Invalid ELF symbol size: " + expectedSize);
        }

        Address start = currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(entryOffset);
        Address end = start.add(expectedSize - 1);
        Address recoveryStart = currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(recoveryOffset);
        AddressSet desiredBody = new AddressSet(start, end);
        if (!desiredBody.contains(recoveryStart, end)) {
            throw new IllegalArgumentException("Recovery extent is outside the ELF symbol body");
        }

        FunctionManager manager = currentProgram.getFunctionManager();
        Function target = manager.getFunctionAt(start);
        if (target == null || !functionName.equals(target.getName())) {
            throw new IllegalStateException("Expected function not found at " + start + ": " + functionName);
        }
        long originalSize = target.getBody().getNumAddresses();
        if (originalSize > expectedSize) {
            throw new IllegalStateException(
                "Ghidra body exceeds ELF symbol size: " + originalSize + " > " + expectedSize
            );
        }

        List<Address> nestedFunctionEntries = new ArrayList<>();
        Iterator<Function> overlaps = manager.getFunctionsOverlapping(desiredBody);
        while (overlaps.hasNext()) {
            Function function = overlaps.next();
            if (function.getEntryPoint().equals(start)) {
                continue;
            }
            if (!desiredBody.contains(function.getBody())) {
                throw new IllegalStateException(
                    "Partially overlapping function needs review: " + function.getName()
                        + " at " + function.getEntryPoint()
                );
            }
            nestedFunctionEntries.add(function.getEntryPoint());
        }
        for (Address nestedEntry : nestedFunctionEntries) {
            println("Removing auto-created function inside ELF symbol: " + nestedEntry);
            if (!manager.removeFunction(nestedEntry)) {
                throw new IllegalStateException("Could not remove nested function at " + nestedEntry);
            }
        }

        target = manager.getFunctionAt(start);
        target.setNoReturn(false);
        target.setBody(desiredBody);
        boolean tailDecoded = disassemble(recoveryStart);
        if (!tailDecoded) {
            throw new IllegalStateException("Could not disassemble the proven return epilogue at " + recoveryStart);
        }
        if (target.getBody().getNumAddresses() != expectedSize) {
            throw new IllegalStateException(
                "Corrected Ghidra body size mismatch: " + target.getBody().getNumAddresses()
                    + " != " + expectedSize
            );
        }
        int instructionCount = 0;
        InstructionIterator instructions = currentProgram.getListing().getInstructions(desiredBody, true);
        while (instructions.hasNext()) {
            Instruction instruction = instructions.next();
            instructionCount++;
        }
        println("Restored function body from ELF symbol extent: name=" + functionName
            + " entry=" + start + " symbol_size=" + expectedSize
            + " original_ghidra_body_size=" + originalSize
            + " tail_recovery_entry=" + recoveryStart
            + " instructions=" + instructionCount
            + " module_md5=" + observedMd5);
    }
}
