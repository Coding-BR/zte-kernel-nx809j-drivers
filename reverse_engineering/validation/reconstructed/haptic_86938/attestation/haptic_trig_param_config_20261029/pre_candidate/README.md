# Pre-candidate evidence: trigger parameter helpers

The stock trig_store callback calls three internal parameter helpers while holding the shared driver mutex. Each helper assembles one masked control-register value and writes two one-byte trigger parameters. The three records preserve each helper's exact data offsets, register addresses, and masks. None has a valid stock KCFI preamble.

Register meanings and object lifetime are not inferred. MP4 remains a draft oracle; independent review and hardware validation are still required.
