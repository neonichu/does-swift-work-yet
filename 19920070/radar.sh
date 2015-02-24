#!/bin/sh

xcrun swiftc main.swift 2>/dev/null
test $? -ne 0
