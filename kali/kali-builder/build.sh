#!/bin/bash
apt-get update
apt-get install -y debootstrap curl
curl "http://git.kali.org/gitweb/?p=packages/debootstrap.git;a=blob_plain;f=scripts/kali;hb=HEAD" > /tmp/kali-debootstrap
debootstrap kali /tmp/kali-root http://http.kali.org/kali /tmp/kali-debootstrap
cd /tmp/kali-root && tar -czf /opt/kali-base/kali-base.tar.gz .
