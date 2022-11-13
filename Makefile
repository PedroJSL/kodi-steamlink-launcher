SHELL = /bin/bash

BUNDLE = kodi-steamlink-launcher
VERSION = '1.0.0'
PLUGIN_RESOURCES = plugin.program.steamlink

.PHONY: dist
dist: dist-clean
	@mkdir -p dist
	@/Users/psuarez/Downloads/7z2107-mac/7zz a -tzip dist/$(BUNDLE)-$(VERSION).zip $(PLUGIN_RESOURCES)

.PHONY: clean
clean:
	@rm -f dist/*.zip

.PHONY: dist-clean
dist-clean:
	@rm -rf dist/