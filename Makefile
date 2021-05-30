.PHONY: dev compile update_icons

dev:
	@hugo serve

compile:
	@hugo

update_icons:
	@./geticons.sh