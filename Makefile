check:
	$(Q)(cd tests && \
	     export PATH=$$PWD/tools/bin:$$PATH && \
	     ./setup-tools && \
	     ./setup-tests && \
	     ./test-suite)

clean-check:
	find tests/ \( -name "*.test.output.expected" \
	               -o -name "*.test.output.got" \
	               -o -name "*.test.output.diff" \
	               -o -name "*.test.error.expected" \
	               -o -name "*.test.error.got" \
	               -o -name "*.test.error.diff" \
	               -o -name "*.test.pre.sh" \
	               -o -name "*.test.post.sh" \
	            \) -exec rm {} \;
	@rm -rf tests/.coverage tests/htmlcov
