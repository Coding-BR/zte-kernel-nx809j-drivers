import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.address.AddressSet;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionManager;
import ghidra.program.model.symbol.SourceType;
import ghidra.program.model.symbol.Symbol;
import ghidra.program.model.symbol.SymbolIterator;

public class RepairAw22xxxAllocNameArrayBoundary extends GhidraScript {
    private static final String FUNCTION_NAME = "aw22xxx_alloc_name_array";
    private static final int BODY_BYTES = 528;

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
        AddressSet targetRange = new AddressSet(entry, end);
        FunctionManager manager = currentProgram.getFunctionManager();
        int removed = 0;
        for (Function function : manager.getFunctions(entry, true)) {
            Address start = function.getEntryPoint();
            if (!start.equals(entry) && targetRange.contains(start)) {
                manager.removeFunction(start);
                removed++;
            }
        }
        Function target = manager.getFunctionAt(entry);
        if (target == null) {
            target = manager.createFunction(FUNCTION_NAME, entry, targetRange,
                    SourceType.USER_DEFINED);
        } else {
            target.setName(FUNCTION_NAME, SourceType.USER_DEFINED);
            target.setBody(targetRange);
        }
        println("Repaired " + FUNCTION_NAME + " body to " + BODY_BYTES +
                " bytes at " + entry + "; removed nested functions=" + removed);
    }
}
