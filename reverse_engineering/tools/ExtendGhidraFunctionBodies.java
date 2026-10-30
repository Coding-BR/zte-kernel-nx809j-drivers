// Extends selected Ghidra function bodies to independently verified ELF symbol sizes.
// @category AndroidKernel

import ghidra.app.script.GhidraScript;
import ghidra.app.cmd.disassemble.DisassembleCommand;
import ghidra.program.model.address.Address;
import ghidra.program.model.address.AddressSet;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.listing.FunctionManager;
import java.util.ArrayList;
import java.util.List;

public class ExtendGhidraFunctionBodies extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] arguments = getScriptArgs();
        if (arguments.length == 0) {
            throw new IllegalArgumentException(
                "Usage: ExtendGhidraFunctionBodies.java <entry:size> ..."
            );
        }

        for (String argument : arguments) {
            int separator = argument.indexOf(':');
            if (separator <= 0 || separator == argument.length() - 1) {
                throw new IllegalArgumentException(
                    "Invalid function extent (expected entry:size): " + argument
                );
            }
            long entryValue = Long.parseLong(argument.substring(0, separator), 16);
            long size = Long.parseLong(argument.substring(separator + 1), 16);
            if (size <= 0) {
                throw new IllegalArgumentException("Function size must be positive: " + argument);
            }

            Address entry = currentProgram.getAddressFactory()
                .getDefaultAddressSpace().getAddress(entryValue);
            Function function = currentProgram.getFunctionManager().getFunctionAt(entry);
            if (function == null) {
                throw new IllegalStateException("No Ghidra function at " + entry);
            }
            Address end = entry.add(size - 1);
            AddressSet extent = new AddressSet(entry, end);
            FunctionManager functionManager = currentProgram.getFunctionManager();
            List<Address> conflictingEntries = new ArrayList<>();
            FunctionIterator iterator = functionManager.getFunctions(true);
            while (iterator.hasNext()) {
                Function other = iterator.next();
                if (other != function
                    && other.getBody().intersects(extent)
                    && !conflictingEntries.contains(other.getEntryPoint())) {
                    conflictingEntries.add(other.getEntryPoint());
                }
            }
            for (Address conflictingEntry : conflictingEntries) {
                functionManager.removeFunction(conflictingEntry);
                println("Removed nested conflicting function at " + conflictingEntry);
            }
            for (Address cursor = entry; cursor.compareTo(end) <= 0; cursor = cursor.add(4)) {
                Address instructionEnd = cursor.add(3);
                if (currentProgram.getListing().getInstructionAt(cursor) == null) {
                    currentProgram.getListing().clearCodeUnits(cursor, instructionEnd, false);
                    DisassembleCommand command = new DisassembleCommand(cursor, null, false);
                    command.enableCodeAnalysis(false);
                    if (!command.applyTo(currentProgram, monitor)) {
                        println("Unable to disassemble missing instruction at " + cursor
                            + ": " + command.getStatusMsg());
                    }
                }
            }
            function.setBody(extent);
            println("Extended " + function.getName() + " at " + entry + " to " + size + " bytes");
        }
    }
}
