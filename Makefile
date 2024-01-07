.SILENT:
.PHONY: install
install:
	sudo cp -f lib/* /usr/include

.SILENT:
.PHONY: clean
clean:
	rm -f main main.o

.SILENT:
.PHONY: build
build:
	zig build-exe src/main.zig -L/usr/include -ladd -lc -O ReleaseSmall
