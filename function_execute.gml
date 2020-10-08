// Index all built-in functions with thier names
global.__funcMapping__ = ds_map_create();
for(var i = 0; i < 10000; i++) {
	var _funcName = script_get_name(i);
	if (_funcName != "<unknown>") {
		global.__funcMapping__[? _funcName] = i;	
	} else break;
}

/// @function function_execute( _func, _args... )
/// @argument {string} _func - The name of the function
/// @argument {any} _args... - The arguments to pass into the function
/// @returns {any}
function function_execute( _func, _args ) {
	var _funcGet = global.__funcMapping__[? _func];
	if (_funcGet != undefined) {
		if (argument_count > 1) {
			var _funcArg = array_create(argument_count - 1);
			for(var i = 1; i < argument_count; i++) {
				array_push(_funcArguments, argument[i]);	
			}
			return script_execute_ext(_funcGet, _funcArg);
		} else return script_execute(_funcGet);
	} else {
		throw "Could find function named \"" + _func + "\"";
	}
}
