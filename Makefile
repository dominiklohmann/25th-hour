.PHONY: all
all: install

25th-hour.heic:
	git submodule update external/wallpapper
	swift run --package-path external/wallpapper \
			wallpapper -i wallpapper.json -o 25th-hour.heic

.PHONY: install
install: 25th-hour.heic
	git submodule update external/macos-wallpaper
	swift run --package-path external/macos-wallpaper \
			wallpaper set 25th-hour.heic

.PHONY: all
clean:
	rm -f 25th-hour.heic
