# ansible-pi

![Ansible Pi Logo](https://raw.github.com/motdotla/ansible-pi/master/ansible-pi.jpg)

Setup your Raspberry Pi as Pi-Hole DNS server, WITHOUT WIFI (Ethernet Only).

It is based on the [complete guide to setting up your raspberry pi without a keyboard and
mouse](http://sendgrid.com/blog/complete-guide-set-raspberry-pi-without-keyboard-mouse/) that goes
along with this repo and the work done by [Gaetan Semet](https://github.com/gsemet/ansible-rpi-pihole).

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

Deploy using [ansible](http://www.ansible.com) (install instructions for ansible are in [requirements](#requirements) below).

```bash
./playbook.yml
```

Or:

```bash
ansible-playbook playbook.yml -i hosts --ask-pass --become -c paramiko
```

## Installing Ansible on your computer

### On Mac with Homebrew

```bash
brew install ansible
```

### On Mac without Homebrew

```bash
cd /tmp
git clone git://github.com/ansible/ansible.git
cd ./ansible
git checkout v1.4.3
sudo make install
sudo easy_install jinja2
sudo easy_install pyyaml
sudo easy_install paramiko
```

## History

My Raspbery Pi pi-hole routinely crashes due to SD corruption. Since it serves as my primary DNS and DHCP server, I needed a way to be able to quickly get it restored without needing to physically interface with the box. I'm also learning Ansible so it seemed natural to try and attack this problem with Ansible.

I was able to find some starting points online and tweaked those to match my requirements. Hopefully this helps someone else out there get up and running quickly.
