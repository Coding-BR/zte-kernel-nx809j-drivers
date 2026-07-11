$ErrorActionPreference = "Stop"

Write-Host "This removes the Docker Linux volumes that contain the kernel source, toolchain and cache."
Write-Host "Host artifacts under kernel-docker-workspace/artifacts are not removed."

docker volume rm nubia_sm8850_kernel_src nubia_sm8850_kernel_toolchains nubia_sm8850_kernel_cache
