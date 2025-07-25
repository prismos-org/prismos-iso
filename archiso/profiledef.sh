#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="prismos"
iso_label="prismos_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="Prism OS"
iso_application="Prism OS Live/Rescue DVD"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.systemd-boot.esp' 'uefi-x64.systemd-boot.esp'
           'uefi-ia32.systemd-boot.eltorito' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
bootstrap_tarball_compression=('zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/root/.gnupg"]="0:0:700"
  ["/usr/bin/scurl"]="0:0:755"
  ["/usr/bin/scurld"]="0:0:755"
  ["/usr/bin/scurlt"]="0:0:755"
  ["/usr/bin/swget"]="0:0:755"
  ["/usr/bin/iso-init"]="0:0:755"
  ["/etc/NetworkManager/dispatcher.d/no-wait.d/01-no-send-hostname.sh"]="0:0:744"
)
