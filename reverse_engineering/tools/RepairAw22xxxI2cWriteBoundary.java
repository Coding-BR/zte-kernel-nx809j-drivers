// Restore the ELF-bounded body of the exact aw22xxx_i2c_write island.
// The AArch64 bytes and relocations remain authoritative; this only prevents
// Ghidra's function-start analyzer from splitting the exact body into false
// 16-byte subfunctions.
// @category AndroidKernel

import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.address.AddressSet;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.listing.FunctionManager;
import ghidra.program.model.symbol.SourceType;

public class RepairAw22xxxI2cWriteBoundary extends GhidraScript {
    private static final String FUNCTION_NAME = "aw22xxx_i2c_write";
    private static final int BODY_BYTES = 304;

    @Override
    protected void run() throws Exception {
        FunctionManager manager = currentProgram.getFunctionManager();
        Function target = null;
        FunctionIterator iterator = manager.getFunctions(true);
        while (iterator.hasNext()) {
            monitor.checkCancelled();
            Function function = iterator.next();
            if (FUNCTION_NAME.equals(function.getName())) {
                target = function;
                break;
            }
        }
        if (target == null) {
            println("No " + FUNCTION_NAME + " function found");
            return;
        }

        Address entry = target.getEntryPoint();
        Address end = entry.add(BODY_BYTES - 1);
        AddressSet body = new AddressSet(entry, end);

        iterator = manager.getFunctions(true);
        while (iterator.hasNext()) {
            monitor.checkCancelled();
            Function function = iterator.next();
            if (function == target) {
                continue;
            }
            Address otherEntry = function.getEntryPoint();
            if (body.contains(otherEntry)) {
                manager.removeFunction(otherEntry);
            }
        }

        target.setBody(body);
        target.setCustomVariableStorage(false);
        target.setSignatureSource(SourceType.IMPORTED);
        println("Restored " + FUNCTION_NAME + " body to " + BODY_BYTES + " bytes at " + entry);
    }
}
