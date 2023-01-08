# Pokémon October

This is a Pokémon Crystal hack which uses [pokecrystal16](https://github.com/aaaaaa123456789/pokecrystal16) as a base. It uses a special variant of the MBC3 mapper (known as MBC30) only known to be used in Japanese Pokémon Crystal, which supports a maximum of up to 4MB ROM and 64KB SRAM. **Please see the compatibility table at the bottom for emulator/system support.**

It uses (and derives from) [early Johto and Kanto maps](https://tcrf.net/Development:Pok%C3%A9mon_Gold_and_Silver/Unused_Maps/Towns_%26_Cities) from October and November 1998, mixed with select SW97 Pokémon, SW99 Pokémon, and other cut Pokémon. It is planned to have animations, an extended plot, the Orange Islands as an extra postgame area, and a fixed level curve balancing Kanto, Johto, and new mons. It'll also include many beta moves.

It is fully open-source, as long as credit is given to this hack. If credit is not found to be given, the hack's
author will be notified to do so. **[Additionally, Shockslayer, as well as anyone currently working on, moderating, or developing
the Crystal Clear project is NOT allowed to use any of the code contained within this repository. You lot have already stolen enough.](https://youtu.be/_NzVmtbPOrM?t=40)**

## Screenshots

![](screenshots/pokeoctober_debug-0.png)
![](screenshots/pokeoctober_debug-1.png)
![](screenshots/pokeoctober_debug-2.png)
![](screenshots/pokeoctober_debug-3.png)
![](screenshots/pokeoctober_debug-4.png)
![](screenshots/pokeoctober_debug-5.png)
![](screenshots/pokeoctober_debug-6.png)
![](screenshots/pokeoctober_debug-7.png)
![](screenshots/pokeoctober_debug-8.png)

## Currently implemented features

* Everything that's in pokecrystal16
* Prerelease bag menu
* Prerelease Pokegear layout
* New story, new trainers, new Pokemon
* New items (e.g. beta Apricorn Balls)
* [Sweet Honey](https://protocrystal.neocities.org/honey) in its full glory!
* Type weakening hold items (Fire Mane, Mystic Petal, Ice Bikini)
* [MBC30] New animations
* [MBC30] Walking Pokémon, with actions for certain Pokémon
* And more&hellip;

## Build instructions

See [INSTALL.md](INSTALL.md).

## MBC30 support chart

<table>
    <tbody>
        <tr>
            <th colspan="4"><center>✅ Full support</center></th>
        </tr>
        <tr>
            <th scope="col">Emulator</th>
            <th scope="col">Cores</th>
            <th scope="col">Host platforms</th>
            <th scope="col">Comments</th>
        </tr>
        <tr>
            <td>BGB</td>
            <td>-</td>
            <td>Windows, WINE</td>
            <td>Best choice</td>
        </tr>
        <tr>
            <td rowspan="4">RetroArch</td>
            <td>SameBoy</td>
            <td rowspan="4">Probably just about everything you have (Windows, Mac, Linux, Android, iOS, etc. etc. etc.)</td>
            <td rowspan="2">Best compatibility across multiple devices</td>
        </tr>
        <tr>
            <td>mGBA</td>
        </tr>
        <tr>
            <td>Mesen-S</td>
            <td>-</td>
        </tr>
        <tr>
            <td>VBA-M</td>
            <td>Not recommended due to VBA's inaccurate and problematic reputation</td>
        </tr>
        <tr>
            <td>VBA-M</td>
            <td>-</td>
            <td>Windows, Linux</td>
            <td>v2.1.5+; Not recommended</td>
        </tr>
        <tr>
            <td>SameBoy</td>
            <td>-</td>
            <td>Windows, Mac, Linux</td>
            <td>-</td>
        </tr>
        <tr>
            <td>mGBA</td>
            <td>-</td>
            <td>Windows, Mac, Linux, 3DS, Switch, Wii, Vita</td>
            <td>-</td>
        </tr>
        <tr>
            <td>SkyEmu</td>
            <td>-</td>
            <td>Windows, Mac, Linux, <a href="https://web.skyemu.app/">Web</a></td>
            <td>-</td>
        </tr>
        <tr>
            <th colspan="4"><center>⚠️ Incomplete or partial support</center></th>
        </tr>
        <tr>
            <td>JohnGBC</td>
            <td>-</td>
            <td>Android</td>
            <td>-</td>
        </tr>
        <tr>
            <td>Nostalgia.gbc</td>
            <td>-</td>
            <td>Android</td>
            <td>-</td>
        </tr>
        <tr>
            <td>GBC Virtual Console</td>
            <td>-</td>
            <td>3DS</td>
            <td>-</td>
        </tr>
        <tr>
            <td>GBCC</td>
            <td>-</td>
            <td>Android</td>
            <td>-</td>
        </tr>
        <tr>
            <td>Lemuroid</td>
            <td>-</td>
            <td>Android</td>
            <td>-</td>
        </tr>
        <tr>
            <td>EclipseEMU</td>
            <td>-</td>
            <td>Web</td>
            <td>-</td>
        </tr>
        <tr>
            <td>RetroGamesBot</td>
            <td>-</td>
            <td>Web</td>
            <td>-</td>
        </tr>
        <tr>
            <td>Aurora / Skitty.xyz</td>
            <td>-</td>
            <td>Web</td>
            <td>-</td>
        </tr>
        <tr>
            <td>HYLHH / Hayley.zone</td>
            <td>-</td>
            <td>Web</td>
            <td>-</td>
        </tr>
        <tr>
            <td>JohnGBC</td>
            <td>-</td>
            <td>Android</td>
            <td>-</td>
        </tr>
        <tr>
            <td rowspan="4">RetroArch</td>
            <td>Gambatte</td>
            <td rowspan="4">see above</td>
            <td rowspan="2">-</td>
        </tr>
        <tr>
            <td>GearBoy</td>
        </tr>
        <tr>
            <td>TGB Duel</td>
        </tr>
        <tr>
            <td>VGBA Next</td>
        </tr>
        <tr>
            <th colspan="4"><center>❌ No support</center></th>
        </tr>
        <tr>
            <td>GameYob</td>
            <td>-</td>
            <td>DS, 3DS</td>
            <td>-</td>
        </tr>
        <tr>
            <td>Pizza Boy</td>
            <td>-</td>
            <td>Android</td>
            <td>-</td>
        </tr>
        <tr>
            <td>MyOldBoy!</td>
            <td>-</td>
            <td>Android</td>
            <td>-</td>
        </tr>
        <tr>
            <td>Taisel Gameboy-Online</td>
            <td>-</td>
            <td>Web</td>
            <td>-</td>
        </tr>
        <tr>
            <td>jsGBC</td>
            <td>-</td>
            <td>Web</td>
            <td>-</td>
        </tr>
        <tr>
            <td>WASMBoy</td>
            <td>-</td>
            <td>Web</td>
            <td>-</td>
        </tr>
        <tr>
            <td>VBA</td>
            <td>-</td>
            <td>Windows, Mac, Linux, BeOS? Haiku??</td>
            <td>-</td>
        </tr>
        <tr>
            <td>VBA-M</td>
            <td>-</td>
            <td>Windows, Mac, Linux</td>
            <td>v2.1.4 and below</td>
        </tr>
        <tr>
            <td>Goomba Color</td>
            <td>-</td>
            <td>GBA</td>
            <td>-</td>
        </tr>
        <tr>
            <td>Linoscope CAMLBoy</td>
            <td>-</td>
            <td>Web</td>
            <td>-</td>
        </tr>
    </tbody>
</table>