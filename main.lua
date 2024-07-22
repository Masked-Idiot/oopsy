require("oopsy")
local person = class({},{
	init = function(self, args)
        self.name = args[1]
        self.age = args[2]
	end,
	describe = function(self)
		print("Hello, I am " .. self.name .. ", and I am " .. tostring(self.age) .. " years old!")
	end
})
local worker = class({person},{
	init = function(self, args)
		person.init(self, args)
		self.salary = args[3]
		self.money = args[4]
	end,
	work = function(self)
		self.money = self.money + self.salary
	end
})

local brink = worker:new({"Mark", 50, 20, 300})
local liam = person:new({"Liam", 13})
liam:describe()