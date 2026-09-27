#!/bin/bash
# Script to start qemu

POKY_DIR="${POKY_DIR:-poky}"
BUILD_DIR="${BUILD_DIR:-build}"

source "${POKY_DIR}/oe-init-build-env" "${BUILD_DIR}"

export QB_SLIRP_OPT="-netdev user,id=net0,hostfwd=tcp::10022-:22,hostfwd=tcp::9000-:9000"

runqemu "${BUILDDIR}/tmp/deploy/images/qemuarm64/"*.qemuboot.conf slirp nographic
