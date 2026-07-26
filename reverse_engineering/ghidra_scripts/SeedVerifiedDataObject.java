// @category AndroidKernel

import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.data.Undefined1DataType;
import ghidra.program.model.listing.Data;
import ghidra.program.model.listing.Listing;
import ghidra.program.model.symbol.Symbol;
import ghidra.program.model.symbol.SymbolIterator;

/**
 * Seeds one data object as an addressable byte after an ELF relocation has
 * independently proved that a function computes its address without a load.
 */
public class SeedVerifiedDataObject extends GhidraScript {
    @Override
    protected void run() throws Exception {
        String[] arguments = getScriptArgs();
        if (arguments.length != 2) {
            throw new IllegalArgumentException(
                "Usage: SeedVerifiedDataObject.java <symbol> <object-size-bytes>"
            );
        }

        String symbolName = arguments[0];
        long size = Long.parseLong(arguments[1]);
        if (size <= 0) {
            throw new IllegalArgumentException("object-size-bytes must be positive");
        }

        Symbol match = null;
        SymbolIterator symbols = currentProgram.getSymbolTable().getAllSymbols(true);
        while (symbols.hasNext()) {
            Symbol symbol = symbols.next();
            if (symbol.isExternal() || !symbolName.equals(symbol.getName())) {
                continue;
            }
            if (match != null) {
                throw new IllegalStateException("symbol is ambiguous: " + symbolName);
            }
            match = symbol;
        }
        if (match == null) {
            throw new IllegalStateException("symbol was not found: " + symbolName);
        }

        Address address = match.getAddress();
        Address end = address.add(size - 1);
        Listing listing = currentProgram.getListing();
        listing.clearCodeUnits(address, end, false);
        Data data = listing.createData(address, Undefined1DataType.dataType);
        if (data == null || data.getLength() != 1) {
            throw new IllegalStateException("could not seed byte data at " + address);
        }
        println("Seeded verified data object " + symbolName + " at " + address);
    }
}
