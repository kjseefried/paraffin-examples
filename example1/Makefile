project=example


all ::  dirs
	gnatmake -XPARAFFIN_ROOT=$(PARAFFIN_ROOT) -P $(project).gpr  

dirs ::
	mkdir -p ./build

clean ::
	gnatclean -P $(project).gpr
	rm -rf ./build 

distclean :: clean
	rm -rf ./fontconfig
