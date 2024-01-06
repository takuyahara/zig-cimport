.SILENT:
.PHONY: clean
clean:
	rm -f main main.o

.SILENT:
.PHONY: build
build:
	sudo cp -f ./lib/* /lib
	zig build-exe src/main.zig -ladd -lc -O ReleaseSmall