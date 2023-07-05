# Command-Line PDF Encryption and Decryption Using qpdf

A pair of simple scripts to encrypt or decrypt PDFs using the open-source tool [qpdf](https://github.com/qpdf/qpdf), with a (reasonably) secure password prompt.

Each script can be run as simply as this:

```
./pdf-encrypt.sh "Some File.pdf"
# Saves an encrypted copy of the file "Some File.pdf" as "Some File (encrypted).pdf"


# or

./pdf-decrypt.sh "Some File.pdf"
# Saves a decrypted, passwordless copy of the file "Some File.pdf" as "Some File (decrypted).pdf"
```

In each case, you will be prompted for a password, which avoids the problem of having to enter the password on the command line.

## Installation

1. Install [qpdf/qpdf](https://github.com/qpdf/qpdf). For Mac users, the simplest way to install qpdf is using [Homebrew](https://brew.sh/) and running `brew install qpdf`.
2. Install the scripts from this library. You can do this by simply download the script files wherever you want them to live on your system, or by cloning the repository.

Personally, I have the scripts in a development directory and alias them in my `.zshrc` file, as follows:

```
alias pdf-decrypt="~/Documents/Programming/cli-pdf-encryption-and-decryption/pdf-decrypt.sh"
alias pdf-encrypt="~/Documents/Programming/cli-pdf-encryption-and-decryption/pdf-encrypt.sh"
```

This lets me run them from anywhere on my system using only the commands `pdf-decrypt` or `pdf-encrypt`.

## Notes

- The `pdf-encrypt.sh` script uses the same password for the "owner" and "user" passwords on PDFs when encrypting. If this is not what you desire, it would be trivial to modify it.
- It should go without saying that no security is perfect, PDF encryption has its strengths and weaknesses, these scripts come with absolutely no warranty of any kind (as stated in the MIT license), etc., but I'm saying it anyway.