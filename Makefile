ifeq ($(strip $(DEVKITPRO)),)
$(error "Please set DEVKITPRO in your environment. export DEVKITPRO=<path to>devkitPro")
endif
 

install: libnds-install dswifi-install maxmod-install default-arm7-install filesystem-install

libnds-install:
	@$(MAKE) -C libnds install

dswifi-install:
	@$(MAKE) -C dswifi install

maxmod-install:
	@$(MAKE) -C maxmod install-nds

default-arm7-install:
	@$(MAKE) -C default_arm7 install

filesystem-install:
	@$(MAKE) -C filesystem install
