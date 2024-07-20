# Oopsy ¯\\\_(ツ)\_/¯
An oop library for lua that was made on accident
<br>
I'm probably going to add stuff like inheritance and what not, but I'll probably do it later

# How to Use
import the module with
`require("oopsy")`
and define a class with
```lua
name = class({
	init = function(self, args)
		self.x = args[1]
		self.y = args[2]
	end,
	method = function(self)
		doStuff()
	end
})
```