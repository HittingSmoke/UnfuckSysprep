# UnfuckSysprep
A script to remove Metro Windows Store bloat that blocks sysprep from validating after a Windows Update

When running Windows Update, Windows will sometimes update or install new Windows Store bloat. These modidied Windows Store apps block sysprep from validating. This script is intended to remove those apps after a Windows Update so you may sysprep without using SCCM or other Windows Server products for imaging.
