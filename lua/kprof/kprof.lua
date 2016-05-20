if KProf then return end
KProf = KProf or {}

include ("glib/glib.lua")
include ("gooey/gooey.lua")

GLib.Initialize ("KProf", KProf)
GLib.AddCSLuaPackSystem ("KProf")
GLib.AddCSLuaPackFile ("autorun/kprof.lua")
GLib.AddCSLuaPackFolderRecursive ("kprof")

include ("profiling.lua")

if CLIENT then
	KProf.IncludeDirectory ("kprof/ui")
end

KProf.AddReloadCommand ("kprof/kprof.lua", "kprof", "KProf")