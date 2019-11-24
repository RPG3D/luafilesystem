

target("LuaFileSystem")
	set_kind("shared")

	set_languages("c89", "cxx14")
	
	add_rules("mode.debug", "mode.release")
	
	if is_mode("debug") then
		set_symbols("debug")
		set_optimize("none")
	else
		set_optimize("fastest")
	end
	
	add_includedirs("../../Lua")
	
	add_linkdirs("../../Lua/rpg3d/build/$(os)/$(arch)/$(mode)")
	add_links("Lua")
	
	add_headerdirs("../src")
	
	add_files("../src/*.c")
	
	if (is_os("windows")) then
		add_defines("LUA_BUILD_AS_DLL=1")
	end
	
	
	if (is_os("android")) then
		add_defines("ANDROID_STL=gnustl_shared")
	end

	if (is_os("ios")) then
		set_kind("static")
	end

