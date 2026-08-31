// Extends a function body to the ELF symbol size proven by relocation-aware assembly.
// @category AndroidKernel

import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.address.AddressSet;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.listing.Listing;

public class ExtendGhidraFunctionBody extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] arguments = getScriptArgs();
        if (arguments.length != 2 || arguments[0].trim().isEmpty()) {
            throw new IllegalArgumentException(
                "Usage: ExtendGhidraFunctionBody.java <function-name> <body-bytes>"
            );
        }

        String functionName = arguments[0];
        long bodyBytes = Long.parseLong(arguments[1]);
        if (bodyBytes <= 0) {
            throw new IllegalArgumentException("body-bytes must be positive");
        }

        int changed = 0;
        Listing listing = currentProgram.getListing();
        FunctionIterator iterator = currentProgram.getFunctionManager().getFunctions(true);
        while (iterator.hasNext()) {
            monitor.checkCancelled();
            Function function = iterator.next();
            if (!functionName.equals(function.getName())) {
                continue;
            }
            Address start = function.getEntryPoint();
            for (long offset = 0; offset < bodyBytes; offset += 4) {
                monitor.checkCancelled();
                Address instructionAddress = start.add(offset);
                if (listing.getInstructionAt(instructionAddress) == null) {
                    disassemble(instructionAddress);
                }
            }
            function.setBody(new AddressSet(start, start.add(bodyBytes - 1)));
            changed++;
        }
        println("Extended " + changed + " function(s): " + functionName + " to " + bodyBytes + " bytes");
    }
}
