.PHONY:
	build

build:
	@swift build
	@cp .build/debug/terminal-reminder trem
