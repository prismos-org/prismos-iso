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
