// Applies an evidence-backed non-returning property to a Ghidra function.
// @category AndroidKernel

import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.symbol.Symbol;
import ghidra.program.model.symbol.SymbolIterator;

public class SetGhidraFunctionNoReturn extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] arguments = getScriptArgs();
        if (arguments.length != 1 || arguments[0].trim().isEmpty()) {
            throw new IllegalArgumentException(
                "Usage: SetGhidraFunctionNoReturn.java <function-name>"
            );
        }

        String functionName = arguments[0];
        int changed = 0;
        FunctionIterator functions = currentProgram.getFunctionManager().getFunctions(true);
        while (functions.hasNext()) {
            monitor.checkCancelled();
            Function function = functions.next();
            if (functionName.equals(function.getName())) {
                function.setNoReturn(true);
                changed++;
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
                function.setNoReturn(true);
                changed++;
            }
        }

        if (changed == 0) {
            throw new IllegalStateException("No function or memory symbol found: " + functionName);
        }
        println("Set no-return on " + changed + " function instance(s): " + functionName);
    }
}
