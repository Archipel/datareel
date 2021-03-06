PROJECT_DEP = ../drlb_server/m_thread.h ../drlb_server/drlb_server.h ../drlb_server/m_socket.h ../drlb_server/m_config.h ../drlb_server/m_log.h \
../drlb_server/m_proc.h ../drlb_server/m_help.h ../drlb_server/m_dbase.h ../drlb_server/m_app.h ../drlb_server/m_stats.h ldm_config.h

M_THREAD_DEP = $(PROJECT_DEP) ldm_proto.h ldm_feed_types.h ldm_rpc_messages.h ldm_config.h

M_LDM_PROTO_DEP = $(PROJECT_DEP) ldm_proto.h ldm_feed_types.h ldm_rpc_messages.h ldm_config.h

M_LDM_CONFIG_DEP = $(PROJECT_DEP) ldm_proto.h ldm_feed_types.h ldm_rpc_messages.h ldm_config.h

M_SOCKET_DEP = ../drlb_server/m_socket.h

M_LOG_DEP = $(PROJECT_DEP)

M_HELP_DEP = $(PROJECT_DEP)

M_PROC_DEP = $(PROJECT_DEP)

M_DBASE_DEP = $(PROJECT_DEP)

M_APP_DEP = $(PROJECT_DEP)

M_CONFIG_DEP = $(PROJECT_DEP)

M_STATS_DEP = $(PROJECT_DEP)

drlb_server$(OBJ_EXT):	../drlb_server/drlb_server.cpp $(PROJECT_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) ../drlb_server/drlb_server.cpp

m_thread$(OBJ_EXT):	m_thread.cpp $(M_THREAD_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) m_thread.cpp

ldm_proto$(OBJ_EXT):	ldm_proto.cpp $(LDM_PROTO_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) ldm_proto.cpp

ldm_config$(OBJ_EXT):	ldm_config.cpp $(LDM_CONFIG_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) ldm_config.cpp

m_socket$(OBJ_EXT):	../drlb_server/m_socket.cpp $(M_SOCKET_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) ../drlb_server/m_socket.cpp

m_log$(OBJ_EXT):	../drlb_server/m_log.cpp $(M_LOG_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) ../drlb_server/m_log.cpp

m_help$(OBJ_EXT):	m_help.cpp $(M_HELP_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) m_help.cpp

m_proc$(OBJ_EXT):	../drlb_server/m_proc.cpp $(M_PROC_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) ../drlb_server/m_proc.cpp

m_dbase$(OBJ_EXT):	../drlb_server/m_dbase.cpp $(M_DBASE_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) ../drlb_server/m_dbase.cpp

m_app$(OBJ_EXT):	../drlb_server/m_app.cpp $(M_APP_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) ../drlb_server/m_app.cpp

m_config$(OBJ_EXT):	../drlb_server/m_config.cpp $(M_CONFIG_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) ../drlb_server/m_config.cpp

m_stats$(OBJ_EXT):	../drlb_server/m_stats.cpp $(M_STATS_DEP)
	$(CXX) $(COMPILE_ONLY) $(COMPILE_FLAGS) ../drlb_server/m_stats.cpp

OBJECTS = ldm_proto$(OBJ_EXT) \
ldm_config$(OBJ_EXT) \
m_thread$(OBJ_EXT) \
m_socket$(OBJ_EXT) \
m_help$(OBJ_EXT) \
m_log$(OBJ_EXT) \
m_proc$(OBJ_EXT) \
m_dbase$(OBJ_EXT) \
m_app$(OBJ_EXT) \
m_config$(OBJ_EXT) \
m_stats$(OBJ_EXT) \
drlb_server$(OBJ_EXT)
