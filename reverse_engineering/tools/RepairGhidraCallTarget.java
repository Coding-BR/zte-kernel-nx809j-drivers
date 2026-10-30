// Repairs one call reference using a relocation-aware Assembly proof.
// @category AndroidKernel

import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Instruction;
import ghidra.program.model.symbol.RefType;
import ghidra.program.model.symbol.Reference;
import ghidra.program.model.symbol.ReferenceManager;
import ghidra.program.model.symbol.SourceType;

public class RepairGhidraCallTarget extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] arguments = getScriptArgs();
        if (arguments.length != 2) {
            throw new IllegalArgumentException(
                "Usage: RepairGhidraCallTarget.java <callsite-address> <target-address>"
            );
        }

        Address callsite = toAddr(arguments[0]);
        Address target = toAddr(arguments[1]);
        Instruction instruction = currentProgram.getListing().getInstructionAt(callsite);
        if (instruction == null) {
            throw new IllegalArgumentException("No instruction at callsite " + callsite);
        }

        ReferenceManager references = currentProgram.getReferenceManager();
        int removed = 0;
        for (Reference reference : instruction.getReferencesFrom()) {
            if (reference.getReferenceType().isCall()) {
                references.delete(reference);
                removed++;
            }
        }
        references.addMemoryReference(
            callsite, target, RefType.UNCONDITIONAL_CALL, SourceType.USER_DEFINED, 0
        );
        println("Repaired call reference at " + callsite + " -> " + target +
            "; removed " + removed + " prior call reference(s)");
    }
}
