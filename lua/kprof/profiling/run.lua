local self = {}
KProf.Profiling.Run = KProf.MakeConstructor (self, KProf.Serialization.ISerializable)

--[[
	Events:
]]

function self:ctor (bufferSize)
	bufferSize = bufferSize or 16
	
	self.CircularBuffer = {}
	self.CircularBuffer.Buffer     = {}
	self.CircularBuffer.Count      = 0
	self.CircularBuffer.Size       = bufferSize
	self.CircularBuffer.StartIndex = 1
	self.CircularBuffer.NextIndex  = 1
	
	KProf.EventProvider (self)
end

-- ISerializable

-- Run
function self:AddFrame (frame)
	if self.CircularBuffer.Count == self.CircularBuffer.Size then
	else
		self.CircularBuffer.Count = self.CircularBuffer.Count + 1
		self.CircularBuffer.NextIndex = 
	end
end

function self:Clear ()
	self.CircularBuffer.Buffer     = {}
	self.CircularBuffer.Count      = 0
	self.CircularBuffer.Size       = bufferSize
	self.CircularBuffer.StartIndex = 1
	self.CircularBuffer.NextIndex  = 1
end

function self:GetBufferSize ()
	return self.BufferSize
end