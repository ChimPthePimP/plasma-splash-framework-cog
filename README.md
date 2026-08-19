# Framework Cog — Smooth Clockwise

An unofficial KDE Plasma 6 splash screen for Framework laptop users.

## Preview

### Static preview

<p align="center">
  <img src="contents/previews/splash.png" alt="Framework Cog — Smooth Clockwise static preview" width="500">
</p>

### Animated preview

An animated preview can be added as `contents/previews/splash.gif` and displayed here:

<p align="center">
  <img src="contents/previews/splash.gif" alt="Framework Cog — Smooth Clockwise animated preview" width="500">
</p>

The splash displays a white Framework cog on a pure black background. The cog rotates continuously and smoothly clockwise at one revolution every eight seconds.

## Features

* KDE Plasma 6
* Pure black background
* White Framework cog
* Clockwise constant linear rotation
* One revolution every 8 seconds
* Preview thumbnail included for System Settings
* Smooth, continuous animation with no bounce

## Installation

### Automatic installation

The easiest method is to use the included installation script.

Clone the repository:

```bash
git clone https://github.com/chimpthepimp/plasma-splash-framework-cog.git
cd plasma-splash-framework-cog
```

Make the installation script executable:

```bash
chmod +x INSTALL.sh
```

Run the installer:

```bash
./INSTALL.sh
```

The installer will automatically copy the required Plasma Look-and-Feel package files to:

```text
~/.local/share/plasma/look-and-feel/com.framework.cogsplash
```

After installation, open:

**System Settings → Appearance → Splash Screen**

and select:

**Framework Cog — Smooth Clockwise**

### Manual installation

If you prefer to install the package manually, copy `metadata.json` and the `contents` directory to the Plasma Look-and-Feel directory:

```bash
mkdir -p ~/.local/share/plasma/look-and-feel/com.framework.cogsplash
cp metadata.json ~/.local/share/plasma/look-and-feel/com.framework.cogsplash/
cp -a contents ~/.local/share/plasma/look-and-feel/com.framework.cogsplash/
```

Then open:

**System Settings → Appearance → Splash Screen**

and select:

**Framework Cog — Smooth Clockwise**.

## Uninstallation

To remove the splash screen installed by `INSTALL.sh`, run:

```bash
rm -rf ~/.local/share/plasma/look-and-feel/com.framework.cogsplash
```

After removing it, the splash screen will no longer appear in the Plasma Splash Screen settings.

## Unofficial / Trademark Notice

This is a community-made theme and is not affiliated with, sponsored by, or endorsed by Framework Computer Inc.

Framework and the Framework logo are trademarks of Framework Computer Inc. The Framework logo included in this theme is used solely to identify the intended hardware platform.

## License

The theme code and original project files are released under the GNU General Public License v2 or later. The Framework logo is a trademark of Framework Computer Inc. and is not relicensed by this project.
