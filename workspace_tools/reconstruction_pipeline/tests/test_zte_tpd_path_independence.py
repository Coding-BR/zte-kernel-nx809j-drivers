from __future__ import annotations

import importlib.util
from pathlib import Path


ROOT = Path(__file__).resolve().parents[3]
CANONICAL_BUILDER = ROOT / "workspace_tools/reconstruction_pipeline/run_zte_tpd_canonical_build.py"
INDEPENDENT_AUDITOR = ROOT / "workspace_tools/reconstruction_pipeline/validate_reconstructed_drivers.py"
MAKEFILE = ROOT / "kernel_development/drivers/reconstructed/zte_tpd/Makefile"


def load_canonical_builder():
    spec = importlib.util.spec_from_file_location("run_zte_tpd_canonical_build", CANONICAL_BUILDER)
    assert spec and spec.loader
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def load_independent_auditor():
    spec = importlib.util.spec_from_file_location(
        "validate_reconstructed_drivers",
        INDEPENDENT_AUDITOR,
    )
    assert spec and spec.loader
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def test_generated_module_object_receives_prefix_map() -> None:
    builder = CANONICAL_BUILDER.read_text(encoding="utf-8")
    auditor = INDEPENDENT_AUDITOR.read_text(encoding="utf-8")

    assert 'KCFLAGS="$PREFIX_MAP"' in builder
    assert "KCFLAGS=-ffile-prefix-map=/work/validation/{driver}=/zte_tpd" in auditor


def test_module_sources_receive_matching_prefix_map() -> None:
    makefile = MAKEFILE.read_text(encoding="utf-8")

    assert "ccflags-y := -ffile-prefix-map=$(src)=/zte_tpd" in makefile


def test_canonical_cycles_use_deliberately_different_paths() -> None:
    builder = load_canonical_builder()
    first = builder.module_path_for_cycle("audit", 1)
    second = builder.module_path_for_cycle("audit", 2)

    assert first != second
    assert len(first) != len(second)
    assert first.endswith("/zte_tpd")
    assert second.endswith("/zte_tpd")


def test_target_kernel_manifest_defaults_next_to_curated_root(tmp_path: Path) -> None:
    auditor = load_independent_auditor()
    curated_root = tmp_path / "engineering" / "curated"

    resolved = auditor.resolve_target_kernel_manifest(curated_root, None)

    assert resolved == (
        tmp_path / "engineering" / "config" / "target_kernel.json"
    ).resolve()


def test_explicit_target_kernel_manifest_wins(tmp_path: Path) -> None:
    auditor = load_independent_auditor()
    curated_root = tmp_path / "engineering" / "curated"
    explicit = tmp_path / "evidence" / "target.json"

    resolved = auditor.resolve_target_kernel_manifest(curated_root, explicit)

    assert resolved == explicit.resolve()


def test_auditor_finds_adjacent_engineering_workspace(tmp_path: Path) -> None:
    auditor = load_independent_auditor()
    script = (
        tmp_path
        / "repository"
        / "workspace_tools"
        / "reconstruction_pipeline"
        / "validate_reconstructed_drivers.py"
    )

    resolved = auditor.default_engineering_root(script)

    assert resolved == tmp_path / "kernel-docker-workspace" / "engenharia"


def test_auditor_runs_from_engineering_copy(tmp_path: Path) -> None:
    auditor = load_independent_auditor()
    engineering_root = tmp_path / "kernel-docker-workspace" / "engenharia"
    script = (
        engineering_root
        / "workspace_tools"
        / "reconstruction_pipeline"
        / "validate_reconstructed_drivers.py"
    )

    resolved = auditor.default_engineering_root(script)

    assert resolved == engineering_root
