# System files

Files for `/etc`, which stow doesn't manage. Copy them in as root.

## NVIDIA performance mode

`etc/modprobe.d/nvidia-performance.conf` keeps the GPU at full clocks so
animations don't stutter. The driver is in the initramfs, so rebuild it:

```sh
sudo cp etc/modprobe.d/nvidia-performance.conf /etc/modprobe.d/
sudo dracut --force --kver "$(uname -r)"
```

Then reboot.
