var/global/auxtools_debug_server = world.GetConfig("env", "AUXTOOLS_DEBUG_DLL")

/proc/auxtools_stack_trace(msg)
	CRASH(msg)

/proc/auxtools_expr_stub()
	CRASH("auxtools not loaded")

/proc/enable_debugging(mode, port)
	CRASH("auxtools not loaded")

/hook/startup/proc/auxtools_init()
	if (global.auxtools_debug_server)
		LIBCALL(global.auxtools_debug_server, "auxtools_init")()
		enable_debugging()
	return TRUE

/hook/shutdown/proc/auxtools_shutdown()
	if (global.auxtools_debug_server)
		LIBCALL(global.auxtools_debug_server, "auxtools_shutdown")()
	return TRUE
