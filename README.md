# A5-A6X Blobs Dumper

- **Dump blobs on A5-A6X 32-bit iOS devices**
- **macOS and Windows supported**
- **Jailbreak required**
- **See the [Wiki Page](https://github.com/RossDarker/A5-A6X-Blobs-Dumper/wiki) for step-by-step instructions**

## Usage

 1. Download required files (IPSW's, Odysseus  & FirmwareBundles)
 
    `./prepare <device model> <ios version>` 
 
 e.g. `./prepare iPhone4,1 8.4.1`

 2. Extract baseband, build custom IPSW, and extract iBEC & iBSS
 
     `./patchipsw <device model> <device IP>`

e.g. `./patchipsw iPhone4,1 192.168.1.14`

 3. Enter kDFU mode using pwned iBSS
 
    `./enterkdfu <device IP>`

 4. Send pwned iBEC to device in kDFU mode then dump onboard blobs
 
    `./dumpblobs <device model> <ios version>`


## Thanks
- [dayt0n](https://github.com/dayt0n) and [xerub](https://github.com/xerub) for Odysseus.
- [s0uthwest](https://github.com/s0uthwest), [encounter](https://github.com/encounter) and [tihmstar](https://github.com/tihmstar) for TSSChecker.
- [westbaer](https://github.com/westbaer), [@pod2g](https://twitter.com/pod2g), tom3q, planetbeing, [geohot](https://github.com/geohot) and [posixninja](https://github.com/posixninja) for iRecovery.
- [planetbeing](https://github.com/planetbeing) for xpwn
- [LukeZGD](https://github.com/LukeZGD) for binaries & some code for Windows support
- [Devjam81](https://github.com/Devjam81) for Odysseus-Windows
