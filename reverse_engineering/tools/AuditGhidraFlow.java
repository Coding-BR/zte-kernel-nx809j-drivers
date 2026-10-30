// Reports call-flow state used by Ghidra's decompiler for a repaired function.
// @category AndroidKernel

import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.listing.Instruction;
import ghidra.program.model.listing.InstructionIterator;
import ghidra.program.model.symbol.Reference;

public class AuditGhidraFlow extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] arguments = getScriptArgs();
        if (arguments.length != 1 || arguments[0].trim().isEmpty()) {
            throw new IllegalArgumentException("Usage: AuditGhidraFlow.java <function-name>");
        }
        String functionName = arguments[0];
        FunctionIterator iterator = currentProgram.getFunctionManager().getFunctions(true);
        while (iterator.hasNext()) {
            Function function = iterator.next();
            if (!functionName.equals(function.getName())) {
                continue;
            }
            println("function=" + function.getName() + " entry=" + function.getEntryPoint()
                + " body=" + function.getBody().getNumAddresses()
                + " noReturn=" + function.hasNoReturn()
                + " returnType=" + function.getReturnType().getDisplayName());
            InstructionIterator instructions = currentProgram.getListing()
                .getInstructions(function.getBody(), true);
            while (instructions.hasNext()) {
                Instruction instruction = instructions.next();
                if (!instruction.getFlowType().isCall()) {
                    continue;
                }
                String target = "";
                for (Reference reference : instruction.getReferencesFrom()) {
                    if (reference.getReferenceType().isCall()) {
                        Function callee = currentProgram.getFunctionManager()
                            .getFunctionAt(reference.getToAddress());
                        target = reference.getToAddress() + (callee == null ? "" : " " + callee.getName()
                            + " noReturn=" + callee.hasNoReturn()
                            + " returnType=" + callee.getReturnType().getDisplayName());
                    }
                }
                println("call=" + instruction.getAddress() + " flow=" + instruction.getFlowType()
                    + " override=" + instruction.getFlowOverride() + " target=" + target);
            }
        }
    }
}
