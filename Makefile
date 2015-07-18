check:
	$(Q)cd tests && ./setup-tests
	$(Q)cd tests && ./test-suite

clean-check:
	find tests/ \( -name "*.test.output.expected" \
	               -o -name "*.test.output.got" \
	               -o -name "*.test.output.diff" \
	               -o -name "*.test.error.expected" \
	               -o -name "*.test.error.got" \
	               -o -name "*.test.error.diff" \
	            \) -exec rm {} \;
