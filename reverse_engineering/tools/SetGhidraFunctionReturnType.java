// Sets a directly evidenced scalar return type before exporting decompiler semantics.
// @category AndroidKernel

import ghidra.app.script.GhidraScript;
import ghidra.program.model.data.DataType;
import ghidra.program.model.data.IntegerDataType;
import ghidra.program.model.data.VoidDataType;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.symbol.SourceType;

public class SetGhidraFunctionReturnType extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] arguments = getScriptArgs();
        if (arguments.length != 2 || arguments[0].trim().isEmpty()) {
            throw new IllegalArgumentException(
                "Usage: SetGhidraFunctionReturnType.java <function-name> <void|int>"
            );
        }

        String functionName = arguments[0];
        String typeName = arguments[1].toLowerCase();
        DataType returnType;
        if ("void".equals(typeName)) {
            returnType = VoidDataType.dataType;
        }
        else if ("int".equals(typeName)) {
            returnType = IntegerDataType.dataType;
        }
        else {
            throw new IllegalArgumentException("Supported return types: void, int");
        }

        int changed = 0;
        FunctionIterator iterator = currentProgram.getFunctionManager().getFunctions(true);
        while (iterator.hasNext()) {
            monitor.checkCancelled();
            Function function = iterator.next();
            if (!functionName.equals(function.getName())) {
                continue;
            }
            function.setReturnType(returnType, SourceType.USER_DEFINED);
            function.setNoReturn(false);
            changed++;
        }
        println("Set return type for " + changed + " function(s): " + functionName + " -> " + typeName);
    }
}
