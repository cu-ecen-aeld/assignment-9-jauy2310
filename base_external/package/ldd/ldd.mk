
##############################################################
#
# LDD3
#
##############################################################

LDD_VERSION = eafaf13f433a9d2b08dfab588c6400786fae083d
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-jauy2310.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_MODULE_SUBDIRS = misc-modules 
LDD_MODULE_SUBDIRS += scull

LDD_MODULE_MAKE_OPTS = KERNELDIR=$(LINUX_DIR)

$(eval $(kernel-module))
$(eval $(generic-package))