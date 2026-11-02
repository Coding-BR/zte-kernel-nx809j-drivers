# Exact revalidation: `syna_dev_enter_normal_sensing`

- Driver: `zte_tpd`
- Stock entry: `0x00114294`
- Stock body: 180 bytes
- Candidate C source SHA-256: `656ce052d878be063954e565d01f6a25be8843569a8565a18ae53a8077da0d28`
- Candidate exact assembly SHA-256: `f3188fdbcfc516a8bb2ae66fe38f72db5d18aaee79adef5ec6ac803702b2fe83`

## Source synchronization

The official synchronization tool copied two Kbuild inputs from the versioned reconstruction into the Docker curated snapshot: `syna_dev_enter_normal_sensing.c` and `syna_tcm_run_production_test_exact.S`. No source files were removed. The curated tree manifest changed from `d1c314883d42d67b1ba8a1f8bec290f18de8e83ef52a962f726fbf11609a6caa` to `e0ceb91fae3089f953f8dd95e0aaab3b4e8450da41cef0927b091ff2a3ad1d78`, matching the main source tree.

## Gates

- Canonical Docker build: PASS, 2 independent cycles, Android 16 GKI 6.12.23 / arm64 / clang-r536225; candidate module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.
- AArch64 extraction/comparison: PASS; 45 instructions and 180-byte symbol in stock and candidate.
- KCFI: PASS with transparent decision `BOTH_NO_VALID_KCFI_PREAMBLE`; stock and candidate both have no valid preamble, matching `.text` section and 180-byte size.
- Host ASan/UBSan harness: PASS in 2 cycles, 8 direct cases per cycle; reproducible harness binary hash `e15966c873aa3ecf72eb138b5171e7845f06a161f13f7f1936835e57f1fd53d9`.
- Joern strict gate: PASS; 23 calls, 3 control structures, 0 unresolved calls, no mapped call deltas, and 0 parser problems.

This is an offline exact promotion. Android runtime lifecycle and physical hardware behavior remain deferred.
