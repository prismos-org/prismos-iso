# Prism OS

Prism OS is a security-focused Linux distribution based on Arch Linux.  

---

## Table of Contents

- [Building the ISO](#building-the-arch-iso)  
- [Testing the ISO](#testing-the-iso)  
- [License](#license)  

---

## Building the Arch ISO

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

This project is licensed under **GPL-3.0-or-later**. 
