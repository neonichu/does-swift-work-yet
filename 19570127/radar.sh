#!/bin/sh

xcrun swift main.swift 2>&1|head -n 1|grep -q 'unrecognized selector'
