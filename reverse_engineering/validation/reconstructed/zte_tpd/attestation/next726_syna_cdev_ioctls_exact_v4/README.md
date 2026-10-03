# `syna_cdev_ioctls` — offline exact attestation

This attestation promotes `syna_cdev_ioctls` at stock entry `001150ec` to
`PROMOTED_OFFLINE_EXACT`.

The candidate is an AArch64 exact object with a `8584`-byte body (`2146`
instructions). The strict comparison passed for all instructions and the
normalized relocation surface. The KCFI type ID is `0x2af6cdbb`, with matching
function size and type metadata in stock and candidate modules.

The evidence also includes the strict Joern gate, source synchronization,
two-cycle canonical Docker builds, and two-cycle ASan/UBSan host coverage for
14 ioctl route harnesses. Hardware execution, physical device timing, and
full user-space ABI integration remain deferred.

The original Ghidra decompilation, P-Code, stock assembly, candidate assembly,
modules, manifests, reports, and harness sources are preserved beside this
file. The temporary working directory is not required to audit this result.
