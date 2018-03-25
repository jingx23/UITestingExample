#!/bin/bash

# Script configuration

devicesArray=(
	"iPhone 8"
	"iPhone X")

workspace="UITestingExample"

scheme="SnapshotTests"

# List devices to snapshot

echo "Devices to snapshot:"
for index in ${!devicesArray[*]}
do
    printf "   %s\n" "${devicesArray[$index]}"
done

# Create final command

baseCommand="xcodebuild test -workspace $workspace.xcworkspace -scheme $scheme"

for index in ${!devicesArray[*]}
do
    finalCommand="$baseCommand -destination 'platform=iOS Simulator,name=${devicesArray[$index]}'"
		eval $finalCommand
done


