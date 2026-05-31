.PHONY: switch

switch:
	git add .
	home-manager switch --flake .#$(word 2,$(MAKECMDGOALS))@$(word 3,$(MAKECMDGOALS))

%:
	@:
