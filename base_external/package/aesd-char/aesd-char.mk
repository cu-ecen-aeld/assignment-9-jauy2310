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

AESD_CHAR_MODULE_MAKE_OPTS = KERNELDIR=$(LINUX_DIR)

$(eval $(kernel-module))
$(eval $(generic-package))