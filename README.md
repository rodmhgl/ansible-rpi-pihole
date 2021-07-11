# ansible-pi

![Ansible Pi Logo](https://raw.github.com/motdotla/ansible-pi/master/ansible-pi.jpg)

Setup your Raspberry Pi as Pi-Hole DNS server, WITHOUT WIFI (Ethernet Only).

It is based on the [complete guide to setting up your raspberry pi without a keyboard and mouse](http://sendgrid.com/blog/complete-guide-set-raspberry-pi-without-keyboard-mouse/) that goes along with this repo and the work done by [Gaetan Semet](https://github.com/gsemet/ansible-rpi-pihole).

## History

My Raspbery Pi pi-hole routinely crashes due to SD corruption. Since it serves as my primary DNS and DHCP server, I needed a way to be able to quickly get it restored without needing to physically interface with the box. I'm also learning Ansible so it seemed natural to try and attack this problem with Ansible.

I was able to find some starting points online and tweaked those to match my requirements. Hopefully this helps someone else out there get up and running quickly.

## Requirements

- Flash a **clean** Raspbian Lite image on an SD card
  URL: [https://www.raspberrypi.org/downloads/raspbian/](https://www.raspberrypi.org/downloads/raspbian/)
  Mac: Use [ApplePI-Baker](https://www.tweaking4all.com/software/macosx-software/macosx-apple-pi-baker/)
- Enable SSH on the Raspberry (it is disabled by default). You can:
  - use `raspi-config` to enable SSH
  - create a file `/boot/ssh`
- Find the IP address your router will give to the RPI
- You need Ansible installed on your local computer (not the Raspberry Pi)
- Install SSHPass:
  - Ubuntu: `sudo apt install sshpass`
  - MacOS: `brew install http://git.io/sshpass.rb`

## Installation

On your local computer, clone and setup this ansible playbook.

```bash
git clone https://github.com/rodmhgl/ansible-rpi-pihole.git
cd ansible-rpi-pihole
cp hosts.example hosts
```

Edit the `hosts` file and set the IP address of your RPI (get this from the router or from the
command line).

Deploy using [ansible](http://www.ansible.com).

```bash
./playbook.yml
```

Or:

```bash
ansible-playbook -i hosts playbook.yml -c pi
```

## Tag Reference

The tags below can be used to run (or skip) specific portions of the playbook.

This can be useful when you only need to update the whitelist / DHCP reservations / pihole configuration without waiting for the other portions to run.

Run only the whitelist update:

```bash
ansible-playbook -i hosts playbook.yml -c pi --tags=whitelist
```

Or save time while troubleshooting by skipping the package and ntp installations:

```bash
ansible-playbook -i hosts playbook.yml -c pi --skip-tags "packages,ntp"
```

### network

- Setting hostname to 'pihole'
- Configure static IP in /etc/dhcpcd.conf
- Set Default DNS

### admin

- Disable WIFI and Bluetooth
- Set default bash aliases

### packages

- Update APT package cache
- Installing packages (python-apt, pip, vim, curl, telnet, wget)
- Install grin (better grep)

### ntp

- Install NTP
- Copy over the NTP configuration
- Make sure NTP is started up

### pihole

- Download Pi-Hole installer
- Create pihole group
- Create pihole user
- Create pihole configuration directory
- Install Pi-Hole
- Set PiHole to update every week

### pihole-config

- Create pihole configuration

### reservations

- Copy over the default reservations

### whitelist

- Copy over the whitelist script
- Execute the whitelist script

### restart

- Reboot
- Wait for Raspberry PI to come back
