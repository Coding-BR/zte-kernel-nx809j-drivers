# zlog_common reconstruction status

- Stock SHA-256: `cc84a3119927bc189fb60a2d2d5e339e93e5ab0bb127316a1fd4f4ccfcad8da0`
- Candidate SHA-256: `76a042cd1e30bc92e83e8cbe171fc634c0f1e937b1308fcf9931ba838ccbda2c`
- Ghidra functions: `13`
- Exported functions: `5`
- Double-clean Docker build: `PASS` (reproducible)
- Host harness: `PASS` (13/13 functions, two identical runs)
- KCFI: `PASS` (12/12 type and section; one direct-call function N/A)
- Ghidra call inventory: `PASS` (13/13)
- Static verdict: `STATIC_VERIFIED` (`O0` through `O9` pass; `O10` pending)
- Hardware validation: `DEFERRED`
- Independent review: `PENDING`
- Overall verdict: `INCOMPLETE`

Residual: `zlog_register_client` is 816 bytes in the candidate and 828 bytes in
stock. Its KCFI ID, section, external-call multiplicity, recovered layout and host
behavior match. The difference remains explicit and was not hidden with padding.

No stock module is stored in this directory. The candidate must not be described as a
100% reconstruction until the offline gates, an independent review and controlled
hardware validation all pass for the same candidate SHA-256.
