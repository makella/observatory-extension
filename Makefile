include ./Makefile.global

EXT_DIR = src/pg

.PHONY: install
.PHONY: run_tests
.PHONY: release
.PHONY: deploy

# Generate and install developmet versions of the extension.
# The extension is named 'dev' with a 'current' alias for easily upgrading.
# It requires sudo.
install: ## Generate and install development version of the extension; requires sudo.
	$(MAKE) -C $(EXT_DIR) install

# Run the tests for the installed development extension.
test:   ## Run the tests for the development version of the extension
	$(MAKE) -C $(EXT_DIR) test

# Generate a new release into release
release: ## Generate a new release of the extension. Only for telease manager
	$(MAKE) -C $(EXT_DIR) release

# Install the current release.
# It requires sudo.
# Use the RELEASE_VERSION environment variable to deploy a specific version:
#     sudo make deploy RELEASE_VERSION=1.0.0
deploy: ## Deploy a released extension. Only for release manager. Requires sudo.
	$(MAKE) -C $(EXT_DIR) deploy

# Cleanup development extension script files
clean-dev: ## clean up development extension script files
	rm -f src/pg/$(EXTENSION)--*.sql

# Cleanup all releases
clean-releases: ## clean up all releases
	rm -f release/$(EXTENSION)--*.sql
	rm -f release/$(EXTENSION).control

# Cleanup current/specific version
clean-release: ## clean up current release
	rm -f release/$(RELEASE_VERSION)--*.sql

# Cleanup all virtual environments
clean-environments: ## clean up all virtual environments
	rm -rf envs/*

clean-all: clean-dev clean-release clean-environments

help:
	@IFS=$$'\n' ; \
	help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//'`); \
	for help_line in $${help_lines[@]}; do \
		IFS=$$'#' ; \
		help_split=($$help_line) ; \
		help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		printf "%-30s %s\n" $$help_command $$help_info ; \
	done
