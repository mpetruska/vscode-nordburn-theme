
.PHONY: help
help:
	@echo "Usage: make <target>"
	@echo
	@echo "Targets:"
	@echo "  help    -- show this help"
	@echo "  login   -- vsce login"
	@echo "  publish -- publish the theme with vsce"

.PHONY: login
login:
	npx --package @vscode/vsce -- vsce login MarkPetruska

.PHONY: publish
publish:
	npx --package @vscode/vsce -- vsce package
	npx --package @vscode/vsce -- vsce publish
