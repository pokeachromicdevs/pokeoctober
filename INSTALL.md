# Instructions

These instructions *try to* explain how to set up the tools required to build **pokeoctober**, including RGBDS, which assembles the source files into a ROM.

I'm shilling rgbenv here, I really don't want to have to keep up with new RGBDS versions deprecating everything every fortnight.

inb4 they include rgbenv as a contrib script right before they release the Rust rewrite. Now that's trolling par excellence, gbdev style. GB dev is cool now.

## Windows 10+

Download and install [**Windows Subsystem for Linux**](https://docs.microsoft.com/en-us/windows/wsl/install-win10). Then open the **WSL terminal**.

WSL has its own file system that's not accessible from Windows, but Windows files *are* accessible from WSL. So you're going to want to install pokecrystal within Windows. You'll have to change the **current working directory** every time you open WSL.

For example, if you want to store pokecrystal in **C:\Users\\*\<user>*\Desktop**, enter this command:

```bash
cd /mnt/c/Users/<user>/Desktop
```

(The Windows `C:\` drive is called `/mnt/c/` in WSL. Replace *\<user>* in the example path with your username.)

Then follow [the instructions for **Linux**](#linux).

## Windows

Soon.

## Windows... XP?!

All I know is that you need to "install" MSYS2 by copying a folder from [this 7zip archive](https://drive.google.com/file/d/1f0hXRpA0guvsQWfeJSWAtgKx0_HYm9AS/view?usp=sharing).

Then skip to the Linux rgbenv install instructions.

You'll be happy to know that BGB still runs fine on XP. VBA can be used for testing incompatibilities.

## Mac OS X

I wish I had one to test.

## Linux

Try to find the required software in its repositories:

- `make`
- `gcc` (or `clang`)
- `git`
- `python3`
- `python3-pip`

You'll also need these:

- `pkg-config`
- `flex`
- `bison`
- `libpng` (and the development headers)
- `curl`

To install them in Alpine Linux:

```bash
sudo apk add findutils coreutils grep git curl make pkgconfig gcc libc-dev libpng-dev bison
sudo apk add py3-pip
```

On Debian / Ubuntu:
```bash
sudo apt update
sudo apt install libpng-dev pkg-config build-essential bison git curl
```

On Arch btw (i need to test):
```bash
sudo pacman -S libpng pkgconf git curl make bison gcc
```

To install **rgbds** via rgbenv:

```bash
sudo sh -c 'curl https://raw.githubusercontent.com/ZoomTen/rgbenv/master/rgbenv > /usr/local/bin/rgbenv'

sudo chmod +x /usr/local/bin/rgbenv

rgbenv install 0.4.1

source ~/.profile
```

Verify your installation:
```bash
rgbasm -V
```

### Termux

Install Debian using AnLinux, then follow the Debian / Ubuntu instructions above.

**Good luck devving with this.**

## Build pokeoctober

To download the **pokeoctober** source files:

```bash
git clone https://github.com/pokeachromicdevs/pokeoctober
cd pokeoctober
```

To build **pokeoctober.gbc**:

```bash
rgbenv exec make
```
