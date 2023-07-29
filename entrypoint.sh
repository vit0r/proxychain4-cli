#!/bin/bash

tor -f /torrc

proxychains4 -q -f /proxychains.conf $@