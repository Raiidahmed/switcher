#!/bin/bash

TARGET_MIC="SpeechMike III"

while true; do
  # Check if the target mic is available
  AVAILABLE=$(SwitchAudioSource -t input -a | grep "$TARGET_MIC")

  if [ ! -z "$AVAILABLE" ]; then
    # Check if it's already the current device
    CURRENT=$(SwitchAudioSource -t input -c)
    if [ "$CURRENT" != "$TARGET_MIC" ]; then
      echo "Switching to $TARGET_MIC"
      SwitchAudioSource -t input -s "$TARGET_MIC"
    fi
  fi

  sleep 10
done
