# UDM Config

# DNSMASQ

**Source:** https://www.reddit.com/r/Ubiquiti/comments/i9ft5u/so_heres_how_i_got_local_dns_records_working_on/

Software Prep

1. UDM running beta firmware 1.7.2
2. SSH access to the UDM enabled
3. [UDM-Utilities On-Boot Script Installed](https://github.com/boostchicken/udm-utilities/tree/master/on-boot-script)

Script Setup

The UDM(P) uses dnsmasq under the hood for DNS resolution.

Because the UDM starts with a clean slate on each boot, we have to use UDM-Utilities' boot script to create a dnsmasq conf file in the proper directory, then restart dnsmasq to get it to acknowledge it. You can go wild and put in any standard valid dnsmasq conf settings, but in this case all I care about is local DNS resolution.

1. SSH into the UDM using root@[your UDM IP] and your UniFi user password.
2. Move into the UDM-Utilities boot script directory: cd /mnt/data/on_boot.d
3. Create a file (using VIM etc.) ending in .sh like create_local_dns_conf.sh with the following content:
``` sh
#!/bin/sh

cat > /run/dnsmasq.conf.d/local_custom_dns.conf <<- "EOF"
# Created by a UDM-Utilities run script
address=/unifi.l3s.patzke.me/192.168.1.1
address=/l3s.patzke.me/sso.l3s.patzke.me/10.1.0.2
EOF

# Restart dnsmasq so it sees the new conf file
pkill dnsmasq
```
4. Change the script to be executable: chmod +x create_local_dns_conf.sh
5. Test-run the script: ./create_local_dns_conf.sh
6. Make sure the conf is there and check that the output looks right: cat /run/dnsmasq.conf.d/local_custom_dns.conf

# Let's Encrupt Certificate

**Source:** https://github.com/kchristensen/udm-le

Specify the dns resolver in udm-le.env:

```sh
DNS_RESOLVERS='213.251.188.146:53'
```
