// Extends a function body to the ELF symbol size proven by relocation-aware assembly.
// @category AndroidKernel

import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.address.AddressSet;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.listing.Listing;
import java.util.ArrayList;
import java.util.List;

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
            AddressSet repairedBody = new AddressSet(start, start.add(bodyBytes - 1));
            // The ELF symbol table is authoritative for this repair.  Auto-analysis
            // can manufacture a short function inside the proven symbol range
            // (commonly after a premature _printk return), which otherwise prevents
            // setBody() with OverlappingFunctionException.  Remove only functions
            // whose entry point is strictly inside the requested symbol; this keeps
            // the following symbol intact while allowing the requested body to be
            // represented exactly.
            List<Address> nestedEntries = new ArrayList<>();
            FunctionIterator nestedIterator = currentProgram.getFunctionManager().getFunctions(true);
            while (nestedIterator.hasNext()) {
                Function nested = nestedIterator.next();
                Address nestedEntry = nested.getEntryPoint();
                if (nested != function && repairedBody.contains(nestedEntry) && !start.equals(nestedEntry)) {
                    nestedEntries.add(nestedEntry);
                }
            }
            for (Address nestedEntry : nestedEntries) {
                currentProgram.getFunctionManager().removeFunction(nestedEntry);
            }
            function.setBody(repairedBody);
            changed++;
        }
        println("Extended " + changed + " function(s): " + functionName + " to " + bodyBytes + " bytes");
    }
}
