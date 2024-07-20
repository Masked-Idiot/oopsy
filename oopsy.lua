function class(methods)
	local class_ = methods
	instance={}
	function instance:new(args)
		local inst = class_
		class_.init(inst, args)
		return inst
	end
	instance.init = class_.init
	return instance
end