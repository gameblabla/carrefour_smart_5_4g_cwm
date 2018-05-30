Custom recovery for Carrefour Smart 5 4G (aka the Hisense CMB405 L690AE)
========================================

Here are two custom recoveries for the Carrefour Smart 5 4G, aka known internally as the Hisense CMB405 L690AE.

This phone has a MSM8916 chipset with a screen resolution of 960x540 pixels.

It also has dual-sim and 4G LTE support.

This device has an unlocked bootloader so the recovery partition can be overwritten. (thankfully)


Using a custom recovery will notably allow you to gain initial root on this device,

as it is fairly difficult to root it and KingRoot only works for it temporarely. (not to mention it's spyware...)


Btw, **only the CWM-based recovery works properly**. 

The TWRP has a few issues and might not work properly. Display and touchscreen works tho.

Just so you know.


Carrefour never released the source code for the kernel, which is a violation of the GPL...

I can also tell you that using any other than the original kernel will not work properly.

For example, swapping it with the kernel from another similar device will break the touchscreen. 

(screen itself is displayed properly, just no touch functionality)


How to flash it
================

There are two ways to try them out.

One, which is the safest way, is to simply boot in bootloader (adb reboot bootloader) and run that command :

fastboot boot recovery_cwm_l690a.img

The other one is to use Flashfire. Of course, you need to have root for that.

One way to gain initial root is by flashing a SuperSU zip with the safer boot (see above).

Then simply select the recovery file and make sure "Preserve Recovery" is ticked off.

Your device should now have the CWM (or TWRP) recovery flashed to your device.

How it was "ported"
=================

This was basically ported by trying all the custom recoveries out there for the same chipset and hope i could find one working.

I actually found two of them working, even though ironically they were not completely identical unlike the other ones.

I split the original recovery file and the "working" custom recovery image file and simply used the dtb & kernel file and merging relevant bits from the original ramdisk to the CWM one.

The result is that display is not messed up, touchscreen & buttons work and i think flashing ZIP files should work as well.

Using the original DTB fixed the display issue and the kernel fixed the touchscreen.

License
=======

Because Carrefour (and/or Hisense) violated the GPL, i absolutely don't care if they think releasing their blobs is not allowed. (which, btw, is probably not)

This might get deleted if they get their shit together and actually release it.

As for the moditications, well, you can do what the fuck you want with them, just no warranty.

(Sadly my country does not allow relinquishing your own rights so no pd :<)
