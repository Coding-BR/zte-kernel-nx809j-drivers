// Gives the imported printk call the minimal varargs signature needed to
// render the already-proven AArch64 argument registers in Ghidra.
// @category AndroidKernel

import ghidra.app.script.GhidraScript;
import ghidra.program.model.data.CharDataType;
import ghidra.program.model.data.PointerDataType;
import ghidra.program.model.data.VoidDataType;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.listing.Parameter;
import ghidra.program.model.listing.ParameterImpl;
import ghidra.program.model.symbol.SourceType;

public class RepairAw22xxxImaxSignature extends GhidraScript {
    @Override
    protected void run() throws Exception {
        int changed = 0;
        FunctionIterator iterator = currentProgram.getFunctionManager().getFunctions(true);
        while (iterator.hasNext()) {
            monitor.checkCancelled();
            Function function = iterator.next();
            if (!"_printk".equals(function.getName())) {
                continue;
            }
            Parameter format = new ParameterImpl(
                "format", new PointerDataType(CharDataType.dataType), currentProgram
            );
            function.setReturnType(VoidDataType.dataType, SourceType.USER_DEFINED);
            function.replaceParameters(
                Function.FunctionUpdateType.DYNAMIC_STORAGE_ALL_PARAMS,
                true,
                SourceType.USER_DEFINED,
                new Parameter[] { format }
            );
            function.setVarArgs(true);
            function.setNoReturn(false);
            changed++;
        }
        println("Repaired _printk signature for " + changed + " function(s)");
    }
}
