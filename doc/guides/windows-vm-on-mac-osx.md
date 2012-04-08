Windows Virtual Machine on OS X (using VirtualBox)
==================================================

This guide walks through configuring a Windows Vista VM distributed by Microsoft
in order to test Internet Explorer. The target environment is OS X so this guide
is tailored specifically for that.

The source of this material was originally taken from [Daniel McOrmond's blog](http://danielmcormond.com/2011/02/21/how-to-use-microsoft-ie-vpc-images-with-virtualbox-on-mac-os-x/)
and has been adapted to my specific environment.

Requirements
------------

  * [Wine](http://www.winehq.org/download/) (compile this)
  * [Virtual Box](http://www.virtualbox.org/wiki/Downloads)
  * [The Unarchiver](http://wakaba.c3.cx/s/apps/unarchiver.html)
  * [Windows Vista IE7 Image](http://microsoft.com/download/en/details.aspx?id=11575](http://microsoft.com/download/en/details.aspx?id=11575)

Instructions
------------

With the tools above are installed, extract the .EXE/.RAR combination using
The Unarchiver. This will produce the files `Windows Vista.vhd` and
`Windows Vista.vmc`. These files can be usd to create a new virtual machien in
VirtualBox.

Once the VM is created, edit `Network > Adapter 1 > Advanced > Adapter Type` to
use `Intel PRO/1000 MT Desktop (82540EM)`.

Also in settings, go to the `Storage` category and make sure that the `vhd`
file is under the IDE controller and not SATA. Failing to do this step may
result in the virtual machine not launching.

### Misc Tips

  * The password for the administrator user is always `Password1`.
  * To extend the 30-day trial period run `slmgr –rearm` from Windows terminal.
  * To make use of the mouse and many other VirtualBox features, install the
    `Guest Additions` under the `Devices` menu in the toolbar. This will create
    a new mounted CD that you can run and install.

Installing Multiple IE Versions
-------------------------------

For that you'll need to install [IECollection](http://utilu.com/IECollection/)
on the virtual machine itself.

I highly recommend first downloading this program on OS X and using **shared
folders** in VirtualBox to transfer the file to the Virtual Machine. If you
attempt to use the virtual machine to perform the download, it'll take much
longer to download than normal.
