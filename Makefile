# Use perevir to run the test
test: test/perevirka.md
	pandoc-lua test/perevir $<

# Ensure that the `test` target is run each time it's called.
.PHONY: test
