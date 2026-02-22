#!/bin/bash

wget https://github.com/ouch-org/ouch/releases/download/0.6.1/ouch-x86_64-unknown-linux-musl.tar.gz

tar -xzf ouch-x86_64-unknown-linux-musl.tar.gz
chmod +x ouch-x86_64-unknown-linux-musl/ouch

mv ouch-x86_64-unknown-linux-musl/ouch /io/outputs/ouch
rm -rf ouch-x86_64-unknown-linux-musl ouch-x86_64-unknown-linux-musl.tar.gz
