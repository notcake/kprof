local self = {}
KProf.Profiling.Span = KProf.MakeConstructor (self, KProf.PropertySerializable)

--[[
	Events:
		StartTimeChanged (startTime)
		EndTimeChanged (endTime)
]]

function self:ctor ()
	self.StartTime = 0
	self.EndTime   = 0
	
	KProf.EventProvider (self)
end

KProf.EventedProperty (self, "StartTime", "Double")
KProf.EventedProperty (self, "EndTime",   "Double")

-- ISerializable
function self:Serialize (outBuffer)
	self:SerializeProperties (outBuffer)
end

function self:Deserialize (inBuffer)
	self:DeserializeProperties (inBuffer)
end

-- Span
function self:GetDuration ()
	return self.EndTime - self.StartTime
end