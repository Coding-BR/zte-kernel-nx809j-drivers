// Removes one candidate-only ELF data-symbol family before canonical decompilation.
// @category AndroidKernel

import java.util.ArrayList;
import java.util.List;

import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.Data;
import ghidra.program.model.listing.Listing;
import ghidra.program.model.symbol.Symbol;
import ghidra.program.model.symbol.SymbolIterator;
import ghidra.program.model.symbol.SymbolTable;

public class NormalizeGhidraDataSymbols extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] arguments = getScriptArgs();
        if (arguments.length != 1 || arguments[0].trim().isEmpty()) {
            throw new IllegalArgumentException(
                "Usage: NormalizeGhidraDataSymbols.java <exact-data-symbol-prefix>"
            );
        }

        String prefix = arguments[0];
        String indexedPrefix = prefix + "[";
        SymbolTable symbols = currentProgram.getSymbolTable();
        Listing listing = currentProgram.getListing();
        List<Symbol> removable = new ArrayList<>();
        SymbolIterator iterator = symbols.getAllSymbols(true);

        while (iterator.hasNext()) {
            monitor.checkCancelled();
            Symbol symbol = iterator.next();
            String name = symbol.getName();
            if (name.equals(prefix) || name.startsWith(indexedPrefix)) {
                removable.add(symbol);
            }
        }

        int removed = 0;
        int clearedDataObjects = 0;
        for (Symbol symbol : removable) {
            monitor.checkCancelled();
            Data data = listing.getDataAt(symbol.getAddress());
            if (data != null) {
                listing.clearCodeUnits(data.getMinAddress(), data.getMaxAddress(), false);
                ++clearedDataObjects;
            }
            if (symbol.delete()) {
                ++removed;
            }
        }
        println("Cleared " + clearedDataObjects + " data objects and removed " + removed +
            " symbols for canonical data family " + prefix);
    }
}
