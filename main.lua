require("class")
local person = class({
	init = function(this, args)
        this.name = args[1]
        this.age = args[2]
	end,
	describe = function(self)
		print("Hello, I am " .. self.name .. ", and I am " .. tostring(self.age) .. " years old!")
	end
})

local liam = person:new({"Liam", 13})
liam:describe()