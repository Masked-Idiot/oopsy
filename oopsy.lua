function class(parents, methods)
	local class_ = methods
	local instance = {}
	instance.init = class_.init
	instance.methods = methods
	for i,parent in ipairs(parents) do
		for name,method in pairs(parent.methods) do
			if name ~= "init" then
				instance.methods[name] = method
				class_[name] = method
			end
		end
	end
	function instance:new(args)
		class_:init(args)
		return class_
	end
	return instance
end