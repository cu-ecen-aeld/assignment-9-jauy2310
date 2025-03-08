
##############################################################
#
# LDD3
#
##############################################################

LDD_VERSION = 5c3cae6ddc96b8645dfa6f6bc4ddbba08aae8789
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-jauy2310.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_MODULE_SUBDIRS = scull misc-modules 

define LDD_BUILD_COMMANDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/misc-modules/hello.ko all
endef

define LDD_INSTALL_COMMANDS
	$(INSTALL) -D -m 0755 $(@D)/misc-modules/hello.ko $(TARGET_DIR)/lib/modules
endef

$(eval $(kernel-module))
$(eval $(generic-package))