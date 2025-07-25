#!/usr/bin/env bash
script_path=$(readlink -f "${0%/*}")
work_dir="work"
arch_chroot() {
    arch-chroot "${script_path}/../${work_dir}/x86_64/airootfs" /bin/bash -c "${1}"
}
main() {
 arch_chroot "$(cat << EOF
"./usr/bin/iso-init"
EOF
)"
}
main
