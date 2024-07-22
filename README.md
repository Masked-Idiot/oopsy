# Oopsy ¯\\\_(ツ)\_/¯
An oop library for lua that was made on accident

fyi the main.lua file is what it should look like for a class/subclass, the actual module is oopsy.lua
<br>
I'm probably going to add stuff like inheritance and what not, but I'll probably do it later

# How to Use
import the module with
```lua
require("oopsy")
```
and define a class with
```lua
name = class({},{
	init = function(self, args)
		self.x = args[1]
		self.y = args[2]
	end,
	method = function(self)
		doStuff()
	end
})
```
# Inheritance
I only recently added inhertance so it might be a little weird
Define a subclass with
```lua
name = class({parent},{
	init = function(self, args)
		parent.init(self, args)
		self.attr1 = args[3]
		self.attr2 = args[4]
	end,
	method = function(self)
		doStuff()
	end
})
```
look in [main.lua](https://github.com/Masked-Idiot/oopsy/blob/main/main.lua) for better examples, these ones suck lol