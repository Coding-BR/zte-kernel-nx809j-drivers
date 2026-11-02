import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.address.AddressSet;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionManager;
import ghidra.program.model.symbol.Symbol;
import ghidra.program.model.symbol.SymbolIterator;
import ghidra.program.model.symbol.SourceType;

public class RepairAw22xxxI2cReadBoundary extends GhidraScript {
    private static final String FUNCTION_NAME = "aw22xxx_i2c_read";
    private static final int BODY_BYTES = 312;

    @Override
    protected void run() throws Exception {
        Address entry = null;
        SymbolIterator symbols = currentProgram.getSymbolTable().getSymbols(FUNCTION_NAME);
        while (symbols.hasNext()) {
            Symbol symbol = symbols.next();
            if (symbol.isPrimary()) {
                entry = symbol.getAddress();
                break;
            }
        }
        if (entry == null) {
            throw new IllegalStateException("missing imported symbol " + FUNCTION_NAME);
        }
        Address end = entry.add(BODY_BYTES - 1);
        FunctionManager manager = currentProgram.getFunctionManager();
        int removed = 0;
        for (Function function : manager.getFunctions(entry, true)) {
            Address start = function.getEntryPoint();
            if (start.equals(entry)) {
                continue;
            }
            if (new AddressSet(entry, end).contains(start)) {
                manager.removeFunction(start);
                removed++;
            }
        }
        Function target = manager.getFunctionAt(entry);
        if (target == null) {
            target = manager.createFunction(FUNCTION_NAME, entry,
                    new AddressSet(entry, end), SourceType.USER_DEFINED);
        } else {
            target.setName(FUNCTION_NAME, SourceType.USER_DEFINED);
            target.setBody(new AddressSet(entry, end));
        }
        println("Repaired " + FUNCTION_NAME + " body to " + BODY_BYTES +
                " bytes at " + entry + "; removed nested functions=" + removed);
    }
}
