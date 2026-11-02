// Applies source/evidence-backed signatures so Ghidra prints call arguments
// for exact assembly islands and preserves the worker parameter.
// @category AndroidKernel

import ghidra.app.script.GhidraScript;
import ghidra.program.model.data.ByteDataType;
import ghidra.program.model.data.DataType;
import ghidra.program.model.data.LongDataType;
import ghidra.program.model.data.PointerDataType;
import ghidra.program.model.data.VoidDataType;
import ghidra.program.model.data.Undefined8DataType;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.listing.Parameter;
import ghidra.program.model.listing.ParameterImpl;
import ghidra.program.model.symbol.SourceType;

public class RepairAw22xxxPlaySignatures extends GhidraScript {
    private Function lookupFunction(String name) {
        FunctionIterator iterator = currentProgram.getFunctionManager().getFunctions(true);
        while (iterator.hasNext()) {
            Function function = iterator.next();
            if (name.equals(function.getName())) {
                return function;
            }
        }
        return null;
    }

    private Parameter parameter(String name, DataType type) throws Exception {
        return new ParameterImpl(name, type, currentProgram);
    }

    private void apply(String name, DataType returnType, Parameter... parameters) throws Exception {
        Function function = lookupFunction(name);
        if (function == null) {
            println("signature target not found: " + name);
            return;
        }
        function.setReturnType(returnType, SourceType.USER_DEFINED);
        function.setNoReturn(false);
        function.replaceParameters(
            Function.FunctionUpdateType.DYNAMIC_STORAGE_ALL_PARAMS,
            true,
            SourceType.USER_DEFINED,
            parameters
        );
        println("repaired signature: " + function.getPrototypeString(true, true));
    }

    @Override
    protected void run() throws Exception {
        PointerDataType pointer = new PointerDataType();
        LongDataType scalar = LongDataType.dataType;
        Undefined8DataType unknownScalar = Undefined8DataType.dataType;
        apply("aw22xxx_play", VoidDataType.dataType, parameter("param_1", scalar));
        apply("aw22xxx_init_cfg_update_array", VoidDataType.dataType);
        apply("aw22xxx_set_breath_data", VoidDataType.dataType,
            parameter("param_1", scalar), parameter("param_2", unknownScalar));
        apply("aw22xxx_i2c_write", VoidDataType.dataType,
            parameter("param_1", scalar), parameter("param_2", ByteDataType.dataType),
            parameter("param_3", ByteDataType.dataType));
        apply("aw22xxx_i2c_read", VoidDataType.dataType,
            parameter("param_1", scalar), parameter("param_2", ByteDataType.dataType),
            parameter("param_3", pointer));
    }
}
