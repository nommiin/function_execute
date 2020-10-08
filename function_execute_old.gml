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
		switch (argument_count) {
		    case 1: return script_execute(_funcGet);
		    case 2: return script_execute(_funcGet, argument[1]);
		    case 3: return script_execute(_funcGet, argument[1], argument[2]);
		    case 4: return script_execute(_funcGet, argument[1], argument[2], argument[3]);
		    case 5: return script_execute(_funcGet, argument[1], argument[2], argument[3], argument[4]);
		    case 6: return script_execute(_funcGet, argument[1], argument[2], argument[3], argument[4], argument[5]);
		    case 7: return script_execute(_funcGet, argument[1], argument[2], argument[3], argument[4], argument[5], argument[6]);
		    case 8: return script_execute(_funcGet, argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7]);
		    case 9: return script_execute(_funcGet, argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8]);
		    case 10: return script_execute(_funcGet, argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8], argument[9]);
		    case 11: return script_execute(_funcGet, argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8], argument[9], argument[10]);
		    case 12: return script_execute(_funcGet, argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8], argument[9], argument[10], argument[11]);
		    case 13: return script_execute(_funcGet, argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8], argument[9], argument[10], argument[11], argument[12]);
		    case 14: return script_execute(_funcGet, argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8], argument[9], argument[10], argument[11], argument[12], argument[13]);
		    case 15: return script_execute(_funcGet, argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8], argument[9], argument[10], argument[11], argument[12], argument[13], argument[14]);
		    case 16: return script_execute(_funcGet, argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8], argument[9], argument[10], argument[11], argument[12], argument[13], argument[14], argument[15]);
			default: throw "Could not call function, unsupported amount of arguments given";
		}
	} else {
		throw "Could find function named \"" + _func + "\"";
	}
}
