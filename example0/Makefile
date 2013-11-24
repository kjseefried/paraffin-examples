#
# This makefile build the test program for Windows in a cycgwin
# environment and under Linux using the linux environment.
#
ifeq ($(OS),Windows_NT)
os=Windows
hw=unknown
else
os=$(shell uname -s)
hw=$(shell uname -i)
endif

sys=$(os)-$(hw)
builddir=build-$(sys)
bindir=bin-$(sys)

project=example
export vendor=../3pty

env= -XPARAFFIN_ROOT=$(vendor)/paraffin-code \
	-XOS=$(os) \
	-XBUILD_DIR=$(builddir) \
	-XBIN_DIR=$(bindir)

all :: $(bindir) $(builddir)
	gnatmake $(env) -P $(project).gpr  

$(bindir) $(builddir) ::
	mkdir -p $@

clean :: $(bindir) $(builddir)
	gnatclean $(env) -P $(project).gpr
	$(RM) -rf $(builddir)

distclean :: clean
	$(RM) -rf ./fontconfig $(bindir)
