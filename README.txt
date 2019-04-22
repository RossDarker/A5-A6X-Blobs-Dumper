Dumping Onboard Blobs on A5 to A6X devices

Video: https://youtu.be/CpEwglZDheM

Step 1 (Preparing 1):
	•	On your device install these packages from Cydia: "Core Utilities", "Core Utilities (/bin)", and "OpenSSH"
Step 2 (Device Info):
	•	Open up a terminal window
	•	Cd into where the scripts are: e.g. cd ~/Downloads/A5-A6X-Blobs-Dumper-master/
	•	Now find the model of your device, connect device to computer, open iTunes, open the tab of your device, and click on the Serial Number, until "Model Identifier" or “Product Type” shows up, this is your device model
	•	Also note down the iOS version your device is currently on for later!
Step 3 (Downloading files):
	•	In terminal, run ./prepare <device model> <ios version>
	•	Replace <device model> with the model that you saw in iTunes and <ios version> with the version your device is currently on.
	•	For example: ./prepare iPhone4,1 8.4.1
	•	This downloads two IPSW's, the first doesn't necessarily match the iOS version you are saving blobs for, but is used for extracting some files
	•	This may take a several minutes to download everything, and the second IPSW will match your version and is used for saving the blobs.
Step 4 (Stitching IPSW):
	•	In terminal, run ./patchipsw <device model> <device IP>
	•	Your device model is still the same one you saw in iTunes, and you can find your device's IP by going into Settings on the device. In Settings, open the Wi-Fi tab, and click on the (i) or (>) button next to the Wi-Fi network you are connected to, your device's IP is listed as "IP Address"
	•	An example command for this would be: ./patchipsw iPhone4,1 192.168.1.88
	•	After running the command, you may be asked (yes/no), enter in yes.
	•	You will now be asked for a password, the default password is "alpine", so type this in, as you type in the password, it will look like nothing is being typed in, but it actually is, don't worry, just press enter once you've typed "alpine" into the password box.
	•	The next stage will take a few minutes to grab a file off your device, and then stitch it into the IPSW, along with a custom FirmwareBundle.
Step 5 (Entering kDFU mode):
	•	In terminal, run ./enterkdfu <device IP>
	•	Again, replacing <device IP> with the one you got from your device
	•	You will be asked for a password again, the default one is "alpine", remember nothing shows when you type the password but you are still typing it.
	•	After a few seconds, your device will reboot into kDFU mode, your screen will look completely black.
	•	Plug your device into the computer already, or replug if it's already connected, and wait until iTunes says that it detected a device in Recovery Mode. Now just completely ignore iTunes for the rest of this tutorial, don't touch anything in iTunes, what ever iTunes says, just ignore it.
Step 6 (Dumping the blobs):
	•	Go back to your terminal window, and press Control + C on your keyboard.
	•	Now run ./dumpblobs <device model> <ios version>
	•	Where device model is your device's model that you got at the start, and iOS version is the version of iOS your device is currently running, for example, if I had an iPhone 4S running iOS 8.4.1, and I wanted to dump the blobs for it, I'd type: ./dumpblobs iPhone4,1 8.4.1
	•	When asked, unplug your device then plug it back in to the computer! This is a very important step, the process will then continue in 10 seconds.
	•	A few moments later, your Blobs will be saved onto your Desktop (~/Desktop)
	•	Don’t lose this file, email it to yourself, upload it to cloud services, burn it to a CD, back it up. Never lose it!


To restore using your saved blobs:
	•	Download the latest futurerestore from https://github.com/s0uthwest/futurerestore/releases
	•	Follow this Tutorial again, but instead of doing Step 6, when your device is in kDFU mode, this is the command you'll need to run:
	•	./futurerestore -t blobs.shsh --use-pwndfu --latest-baseband ipsw.ipsw
	•	Where the blobs.shsh are the blobs you've saved earlier using this method, and IPSW.ipsw is the one that matches the blobs.
	•	And that's it, no need to use idevicerestore and any FirmwareBundles!

Bash scripts and this readme by RossDarker
rossdark3r@gmail.com

Thanks to dayt0n and xerub for Odysseus.
Thanks to s0uthwest, encounter and tihmstar for TSSChecker.
Thanks to pod2g, tom3q, planetbeing, geohot and posixninja for iRecovery.
Thanks to sha106b for the tip on getting irecovery working on Mojave.
