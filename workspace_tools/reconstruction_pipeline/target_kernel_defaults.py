"""Resolve Docker build inputs from the versioned NX809J target manifest."""

from __future__ import annotations

import json
from pathlib import Path


def target_source_volume(repo_root: Path | None = None) -> str:
    """Return the source volume pinned by this repository's target manifest."""
    if repo_root is None:
        repo_root = Path(__file__).resolve().parents[2]
    manifest_path = repo_root.resolve() / "kernel_development" / "config" / "target_kernel.json"
    try:
        manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError) as error:
        raise ValueError(f"cannot load target-kernel manifest {manifest_path}: {error}") from error
    volume = manifest.get("docker_source_volume")
    if not isinstance(volume, str) or not volume.strip():
        raise ValueError(
            f"target-kernel manifest {manifest_path} must define docker_source_volume"
        )
    return volume
