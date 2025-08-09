# Prism OS

Prism OS is a security-focused Linux distribution based on Arch Linux.  

---

## Table of Contents

- [Building the ISO](#building-the-arch-iso)  
- [Testing the ISO](#testing-the-iso)  
- [License](#license)  

---

## Building the ISO

NOTE: Do not use the 'mkarchiso' installed from the package rather use the one provided in `scripts/`.
1. Clone the repo:

   `bash
   git clone https://github.com/prismos-org/prismos-iso
   `

2. Build the ISO:

   `
   mkarchiso \
     -w /path/to/work_dir \
     -o /path/to/out_dir \
     /path/to/prismos-iso
   `

3. For help:

   `
   mkarchiso -h
   `

---

## Testing the ISO

Use the provided script:

# Show options
`
./scripts/run_archiso.sh -h
`
# BIOS boot
`
./scripts/run_archiso.sh -i /path/to/iso
`
# UEFI boot
`
./scripts/run_archiso.sh -u -i /path/to/iso
`

---

## License

This project is licensed under the GNU General Public License v3.0 (GPLv3).
See the [LICENSE](./LICENSE) file for details.

**Notice:**
Some configurations in this repository are derived from or inspired by the [secureblue](https://github.com/secureblue/secureblue) and [GrapheneOS](https://github.com/GrapheneOS) projects.
Original authors and contributors retain their respective copyrights.
All modifications and additions are licensed under GPLv3 unless otherwise noted.
