.PHONY: all
all: install

PRE := "[25th-hour]"

external/wallpapper/.git:
	@echo ${PRE} Fetching submodule wallpapper
	@git submodule update --init external/wallpapper

external/macos-wallpaper/.git:
	@echo ${PRE} Fetching submodule mcaos-wallpaper
	@git submodule update --init external/macos-wallpaper

25th-hour.heic: external/wallpapper/.git
	@echo ${PRE} Building dynamic wallpaper
	@swift run --package-path external/wallpapper \
			wallpapper -i wallpapper.json -o 25th-hour.heic

.PHONY: install
install: 25th-hour.heic external/macos-wallpaper/.git
	@echo ${PRE} Setting wallpaper on all visible desktops
	@swift run --package-path external/macos-wallpaper \
			wallpaper set 25th-hour.heic

.PHONY: all
clean:
	@echo ${PRE} Removing dynamic wallpaper
	@rm -f 25th-hour.heic
