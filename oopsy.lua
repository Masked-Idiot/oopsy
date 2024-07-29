return function(parents, methods)
	local class_ = methods
	local instance = {}
	instance.init = class_.init
    instance.methods = {}
	for i,parent in ipairs(parents) do
		for name,method in pairs(parent.methods) do
			if name ~= "init" then
				instance.methods[name] = method
				class_[name] = method
			end
		end
	end
    for name,method in pairs(methods) do
        instance.methods[name] = method
        class_[name] = method
    end
	function instance:new(args)
		class_:init(args)
		return class_
	end
	return instance
end
