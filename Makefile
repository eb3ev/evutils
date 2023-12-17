
#= Evutils - Makefile



include config.mk

install:
ifeq ("$(wildcard ${TARGET})", "")
	@echo ":: evutils: Creating bin directory..."
	mkdir -p "${TARGET}"
endif
	@echo ":: evutils: Copying scripts from ${SRC} to ${TARGET}..."
	cp ${SRC}/evar ${TARGET}/evar
	cp ${SRC}/evaudio ${TARGET}/evaudio
	cp ${SRC}/evbm ${TARGET}/evbm
	cp ${SRC}/evbrowser ${TARGET}/evbrowser
	cp ${SRC}/evclip ${TARGET}/evclip
	cp ${SRC}/evctl ${TARGET}/evctl
	cp ${SRC}/evdl ${TARGET}/evdl
	cp ${SRC}/eved ${TARGET}/eved
	cp ${SRC}/evemoji ${TARGET}/evemoji
	cp ${SRC}/evfm ${TARGET}/evfm
	cp ${SRC}/evlaunch ${TARGET}/evlaunch
	cp ${SRC}/evman ${TARGET}/evman
	cp ${SRC}/evmenu ${TARGET}/evmenu
	cp ${SRC}/evmk ${TARGET}/evmk
	cp ${SRC}/evmount ${TARGET}/evmount
	cp ${SRC}/evop ${TARGET}/evop
	cp ${SRC}/evpass ${TARGET}/evpass
	cp ${SRC}/evpause ${TARGET}/evpause
	cp ${SRC}/evpip ${TARGET}/evpip
	cp ${SRC}/evrn ${TARGET}/evrn
	cp ${SRC}/evsl ${TARGET}/evsl
	cp ${SRC}/evsearch ${TARGET}/evsearch
	cp ${SRC}/evspeedtest ${TARGET}/evspeedtest
	cp ${SRC}/evterm ${TARGET}/evterm
	cp ${SRC}/evvar ${TARGET}/evvar
	cp ${SRC}/evwall ${TARGET}/evwall
	cp ${SRC}/evwkill ${TARGET}/evwkill
	cp ${SRC}/evwrite ${TARGET}/evwrite
	cp ${SRC}/evxar ${TARGET}/evxar
	@echo ":: evutils: Making scripts executable..."
	chmod +x ${TARGET}/*
	@echo ":: evutils: Finished installing."

uninstall:
	@echo ":: evutils: Deleting contents of bin..."
	rm -rf ${BIN}/*
	@echo ":: evutils: Finished uninstalling."

