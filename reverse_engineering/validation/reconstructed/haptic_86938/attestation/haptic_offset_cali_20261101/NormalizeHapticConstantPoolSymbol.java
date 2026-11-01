// Ghidra-only label normalization for the byte-proven d2s_gain constant pool.
// This edits analysis metadata, never the ELF module or executable bytes.
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.symbol.SourceType;
import ghidra.program.model.symbol.Symbol;
import java.util.List;

public class NormalizeHapticConstantPoolSymbol extends GhidraScript {
	@Override
	protected void run() throws Exception {
		if (!"haptic_86938.ko".equals(currentProgram.getName())) {
			throw new IllegalStateException("unexpected Ghidra program: " + currentProgram.getName());
		}

		List<Symbol> symbols = currentProgram.getSymbolTable().getSymbols("d2s_gain", null);
		if (symbols.isEmpty()) {
			throw new IllegalStateException("d2s_gain symbol is missing");
		}
		if (symbols.size() != 1) {
			throw new IllegalStateException("d2s_gain symbol is ambiguous");
		}
		Symbol table = symbols.get(0);

		byte[] expected = new byte[] {
			(byte)0xfe, 0x07, 0x00, 0x00, (byte)0xfd, 0x0b, 0x00, 0x00,
			(byte)0xfb, 0x13, 0x00, 0x00, (byte)0xf7, 0x23, 0x00, 0x00,
			(byte)0xf5, 0x2b, 0x00, 0x00, (byte)0xef, 0x43, 0x00, 0x00,
			(byte)0xeb, 0x53, 0x00, 0x00, (byte)0xd7, (byte)0xa3, 0x00, 0x00
		};
		Address address = table.getAddress();
		byte[] observed = new byte[expected.length];
		currentProgram.getMemory().getBytes(address, observed);
		for (int i = 0; i < expected.length; i++) {
			if (observed[i] != expected[i]) {
				throw new IllegalStateException(
					"d2s_gain bytes differ at +0x" + Integer.toHexString(i));
			}
		}

		String defaultDataLabel = "DAT_" + address.toString().replace("0x", "");
		table.setName(defaultDataLabel, SourceType.DEFAULT);
		println("Normalized Ghidra label " + address + " to " + defaultDataLabel
			+ " after verifying all 32 constant-pool bytes.");
	}
}
