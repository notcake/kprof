if SERVER or
   file.Exists ("kprof/kprof.lua", "LUA") or
   file.Exists ("kprof/kprof.lua", "LCL") and GetConVar ("sv_allowcslua"):GetBool () then
	include ("kprof/kprof.lua")
end