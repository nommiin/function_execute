# function_execute
Allows you to call built-in functions by passing in their name as a string

# Usage
Simply copy in "function_execute.gml" into a script resource in your project, use `function_execute` to actually call functions.

# Example
```js
function_execute("show_message", "Hello!");
key_left = function_execute("keyboard_check", vk_left);
show_debug_message("You are " + (function_execute("os_is_network_connected") ? "online :D" : "offline :("));
```

# Credit
Credit to @[AndrewBGM](https://github.com/AndrewBGM) for writing [function-execute](https://github.com/GameMakerDiscord/function-execute/) which inspired the creation of this
