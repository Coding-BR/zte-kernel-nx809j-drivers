// Defines exact stock-backed global objects so Ghidra does not render byte
// aliases as structure slices or pointer arithmetic as integer casts.
// @category AndroidKernel

import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.data.ArrayDataType;
import ghidra.program.model.data.ByteDataType;
import ghidra.program.model.data.DataType;
import ghidra.program.model.listing.Data;
import ghidra.program.model.symbol.Symbol;
import ghidra.program.model.symbol.SymbolIterator;

public class RepairAw22xxxPlayData extends GhidraScript {
    private Address symbolAddress(String name) {
        SymbolIterator iterator = currentProgram.getSymbolTable().getSymbols(name);
        while (iterator.hasNext()) {
            Symbol symbol = iterator.next();
            if (symbol.getAddress().isMemoryAddress()) {
                return symbol.getAddress();
            }
        }
        return null;
    }

    private void define(String name, DataType type, int bytes) throws Exception {
        Address address = symbolAddress(name);
        if (address == null) {
            println("data target not found: " + name);
            return;
        }
        currentProgram.getListing().clearCodeUnits(address, address.add(bytes - 1), false);
        Data data = createData(address, type);
        println("defined data: " + name + " at " + address + " -> "
            + (data == null ? "null" : data.getDataType().getDisplayName()));
    }

    @Override
    protected void run() throws Exception {
        define("duration", ByteDataType.dataType, 1);
        define("user_para_data", new ArrayDataType(ByteDataType.dataType, 0x61ab, 1), 0x61ab);
        define("kthread_status", ByteDataType.dataType, 1);
    }
}
