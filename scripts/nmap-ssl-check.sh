#!/bin/bash
nmap --script ssl-cert,ssl-enum-ciphers -p 443 "$1"
