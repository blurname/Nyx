# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports = [ ];


  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "nvme" "usb_storage" "usbhid" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/f84947d7-1afe-40ba-bae9-96c101d29d8a";
	  fsType = "ext4";
  };

  fileSystems."/boot" =
  { device = "/dev/disk/by-uuid/469E-24BF";
	  fsType = "vfat";
  };

  swapDevices = [{device="/var/swapfile";size=4096;} ];
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

}
