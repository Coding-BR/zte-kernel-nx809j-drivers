// Clears an incorrect no-return inference before exporting kernel-module semantics.
// @category AndroidKernel

import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.symbol.Symbol;
import ghidra.program.model.symbol.SymbolIterator;

public class ClearGhidraNoReturn extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] arguments = getScriptArgs();
        if (arguments.length != 1 || arguments[0].trim().isEmpty()) {
            throw new IllegalArgumentException(
                "Usage: ClearGhidraNoReturn.java <function-name>"
            );
        }

        String functionName = arguments[0];
        int cleared = 0;
        FunctionIterator iterator = currentProgram.getFunctionManager().getFunctions(true);
        while (iterator.hasNext()) {
            monitor.checkCancelled();
            Function function = iterator.next();
            if (functionName.equals(function.getName())) {
                function.setNoReturn(false);
                cleared++;
            }
        }
        SymbolIterator symbols = currentProgram.getSymbolTable().getAllSymbols(true);
        while (symbols.hasNext()) {
            monitor.checkCancelled();
            Symbol symbol = symbols.next();
            if (!functionName.equals(symbol.getName()) || !symbol.getAddress().isMemoryAddress()) {
                continue;
            }
            Function function = currentProgram.getFunctionManager().getFunctionAt(symbol.getAddress());
            if (function == null) {
                function = createFunction(symbol.getAddress(), functionName);
            }
            if (function != null) {
                function.setNoReturn(false);
                cleared++;
            }
        }
        println("Cleared no-return inference for " + cleared + " function(s): " + functionName);
    }
}
