CHANGELOG
=========

==== June 21 2025 =====

== CHANGES ==
* Switch to the Linux hardened kernel.
* Changed default DNS provider to Mullvad.
* Replace Firefox with LibreWolf.
* Full MAC Randomization.
* Added a password manager (KeePassXC).
* Added encrypted messengers (Signal and Gajim) and PGP helper (Kleopatra).
* The Tor suite comes preinstalled.
* Added Electrum Bitcoin wallet.
* KDE Plasma live environment.

== ERRORS ==
* torbrowser-launcher is not working as expected.


==== June 22 2025 =====

== CHANGES ==
* Fixed the live environment.
* Updated mkinitcpio preset.

== ERRORS ==
* Torbrowser-launcher still does not work as expected.


==== June 25 2025 =====

== CHANGES ==
* Reworked the entire ISO structure.
* Switch to GitHub.
* Removed package torbrowser-launcher.
* Added the sudoers file.
* Autologin into KDE Plasma using SDDM instead of autologin into TTY and then running "startplasma-wayland" from .bash_profile.
* Enabled NetworkManager.service; full MAC randomization works by default now.

==== June 29 2025 ====

== CHANGES ==
* Prism OS now has it's own repo hosted using codeberg pages!

==== June 30 - July 10 ====

== CHANGES ==
* Replaced librewolf with mullvad browser.
* Use Hardened malloc by default.
* Add scurl (secure curl) and scurld (secure curl download) scripts.
* Added apparmor and bwrap.


==== July 13 - July 17 ====
* Harden the system using various kernel arguments and sysctl values.
* USB attack mitigation has been added. USB devices are not auto mounted now. Use the tool "pusbctl".
* Added wrapper scripts around curl and wget (scurl, scurld, scurlt and swget). See the respective scripts located In /usr/bin for more info.
* Programs ran using ld-no-preload are sandboxed way better now. For example, any program ran using ld-no-preload can not escalate to root.
* WIP sandbox script which aims to completely sandbox a program mainly meant to be used for untrusted applications (It's not for running virus or malware!).
* Added a plymouth theme.
* Change the machine-id to a generic one (Used by whonix).
* Use chronyd 
* Replaced the default NTP with chronyd.

==== July 18 ====
* Unique DUID per connection
* Script to not send out hostname of the machine to the DHCP server. It does not send your hostname from the second connection and this setting Is disabled for networks for which you have disabled MAC adress randomization. It's still a good pracctice to set your hostname to a generic one like "localhost".
* Fix pacman configurations.
* GNOME Is now the default DE (https://privsec.dev/posts/linux/choosing-your-desktop-linux-distribution/#desktop-environments). Also this means that there Is much less bloat as compared to PLASMA.
* Remove sysctl values which are already being enforced by the hardened-kernel.
