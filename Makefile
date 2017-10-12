ifeq ($(strip $(DEVKITPRO)),)
$(error "Please set DEVKITPRO in your environment. export DEVKITPRO=<path to>devkitPro")
endif

SUBDIRS:= libnds dswifi maxmod default_arm7 filesystem


install: libnds-install dswifi-install maxmod-install default-arm7-install libfat-install filesystem-install

libnds-install:
	@$(MAKE) -C libnds install

dswifi-install: libnds-install
	@$(MAKE) -C dswifi install

libfat-install: libnds-install
	@$(MAKE) -C libfat nds-install

maxmod-install: libnds-install
	@$(MAKE) -C maxmod install-nds

default-arm7-install: libnds-install
	@$(MAKE) -C default-arm7 install

filesystem-install: libnds-install
	@$(MAKE) -C filesystem install

clean:
	@for i in $(SUBDIRS); do if test -e $$i/Makefile ; then $(MAKE)  -C $$i clean || { exit 1;} fi; done;
	@$(MAKE) -C libfat nds-clean

