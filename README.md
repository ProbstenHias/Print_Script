# Print Script for Uni Stuttgart

This script allows printing at the two printers located
in the Computer Science Faculty at the University of Stuttgart.

## Usage

Download the *print-zarquon.sh* file to your machine
and run the script with the following command:

```bash
./print-zarquon.sh uniname filename
```

**Uniname** is the faculty-specific username given to you by the ZDI.
**Filename** is the path to the file you want to print.

This script defaults to print at zarquon.
Specify **duesentrieb** as the third argument
to print at the printer located in the GS-Pool.

## Tipps

Specify an alias for easier usage, e.g.

```bash
alias printuni="path-to-script/print-zarquon.sh uniname"
```
