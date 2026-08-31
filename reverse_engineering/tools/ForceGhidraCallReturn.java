// Marks directly observed call sites as returning when an imported ELF symbol
// was incorrectly inferred as non-returning by Ghidra.
// @category AndroidKernel

import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.FlowOverride;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.listing.Instruction;
import ghidra.program.model.listing.InstructionIterator;
import ghidra.program.model.symbol.Reference;

public class ForceGhidraCallReturn extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] arguments = getScriptArgs();
        if (arguments.length != 1 || arguments[0].trim().isEmpty()) {
            throw new IllegalArgumentException(
                "Usage: ForceGhidraCallReturn.java <function-name>"
            );
        }

        String functionName = arguments[0];
        int changed = 0;
        FunctionIterator iterator = currentProgram.getFunctionManager().getFunctions(true);
        while (iterator.hasNext()) {
            monitor.checkCancelled();
            Function function = iterator.next();
            if (!functionName.equals(function.getName())) {
                continue;
            }
            InstructionIterator instructions = currentProgram.getListing().getInstructions(function.getBody(), true);
            while (instructions.hasNext()) {
                monitor.checkCancelled();
                Instruction instruction = instructions.next();
                if (!instruction.getFlowType().isCall()) {
                    continue;
                }
                for (Reference reference : instruction.getReferencesFrom()) {
                    if (reference.getReferenceType().isCall()) {
                        instruction.setFlowOverride(FlowOverride.CALL_RETURN);
                        changed++;
                        break;
                    }
                }
            }
        }
        println("Forced returning call flow at " + changed + " call site(s) in: " + functionName);
    }
}
