# Maplestory v203.4 Fork of MapleEllinel

A Java Maplestory server emulator for POSIX systems (compile/launch scripts included).
This is a fork of [pokiuwu's v203.4 repo](https://github.com/pokiuwu/v203.4). It's mostly a dead-end, so I won't be continuing this.

## Installation
- Download the git to a usable directory.
- Use [WzDumper v1.9.2](https://github.com/Xterminatorz/WZ-Dumper/releases/tag/1.9.2) against a [v203.4 client](#client-installation).
- Upload to a server (i.e. OracleCloud ARM instance) using something like Filezilla.
- Run the compile.sh (on JDK 11, this uses javac: there should only be warnings)
- Copy hibernate.cfg.xml and log4j.properties to the generated bin folder.
- Make a dat folder.
- Run the launch.sh (on first-run, it will generate DAT files)
- Open ports 8484 and 8585-8587 on the server

## Client Installation
For a v203.4 client, use the Steam Depot Downloader (since Steam archieves Maplestory clients).
- Download via [Depot Downloader](https://github.com/SteamRE/DepotDownloader).
  - App 216150 
  - Depot 216151 
  - Manifest 116526942226572538
- Download and build [pokiuwu's AuthHook](https://github.com/pokiuwu/AuthHook-v203.4) in Microsoft Visual Studio. (this will require an IP change for non-localhost clients, and, if needed, ports)
- Drag the output file from the build (ijl15.dll) into your v203.4 Maplestory directory
- Make a batch file with the following command `MapleStory.exe WebStart admin 8.31.99.141 8484` (change 'admin' to another account, as needed)
- Run the batch file.

## Shitty Issues with no hope of fixing
- Slow startup/login connection (feels slower than the vanilla game)
- Some unimplemented NPC scripts (mostly event characters, I think)
- [Empty Cash Shop and some newer NPC shops](https://github.com/pokiuwu/v203.4/issues/7)
- Unknown Packets (some may crash the client)

## Tech Stack
- Java 11

## Credits
- Notable Credits: Mechaviv, Pokiuwu
