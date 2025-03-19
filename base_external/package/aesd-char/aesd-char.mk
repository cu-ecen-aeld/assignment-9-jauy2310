##############################################################
#
# AESD-CHAR
#
##############################################################

AESD_CHAR_VERSION = 110ccda5a04c28541ed8abe7563bece62abbac39
AESD_CHAR_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-jauy2310.git
AESD_CHAR_SITE_METHOD = git
AESD_CHAR_GIT_SUBMODULES = YES

AESD_CHAR_MODULE_SUBDIRS += aesd-char-driver

AESD_CHAR_MODULE_MAKE_OPTS = KERNELDIR=$(LINUX_DIR) ARCH=$(KERNEL_ARCH)

define AESD_CHAR_INSTALL_TARGET_CMDS

	$(INSTALL) -m 755 $(@D)/aesd-char-driver/aesdchar.ko $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 755 $(@D)/aesd-char-driver/aesdchar.ko $(TARGET_DIR)/etc/init.d/

endef

$(eval $(kernel-module))
$(eval $(generic-package))