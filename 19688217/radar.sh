#!/bin/sh

exec 2> /dev/null
xcrun swift main.swift
test $? -ne 0