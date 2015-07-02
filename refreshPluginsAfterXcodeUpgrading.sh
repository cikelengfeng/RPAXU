#!/bin/bash

#PlistBuddy的位置
PLISTBUDDY="/usr/libexec/PlistBuddy"

#获取当前版本Xcode的DVTPlugInCompatibilityUUID
UUID=$(defaults read /Applications/Xcode.app/Contents/Info DVTPlugInCompatibilityUUID)
echo Xcode DVTPlugInCompatibilityUUID is $UUID

#遍历每一个Xcode插件，将UUID写入插件的兼容列表中
for MyPlugin in ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins/*
do
	$PLISTBUDDY -c "Add :DVTPlugInCompatibilityUUIDs: string $UUID" "$MyPlugin"/Contents/Info.plist
	echo write DVTPlugInCompatibilityUUID to $MyPlugin succeed!
done
