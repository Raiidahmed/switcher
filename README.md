# switcher

A macOS shell script that watches for a Philips SpeechMike III to become available as an audio input device and automatically switches to it using `SwitchAudioSource`.

## Usage

Requires [`SwitchAudioSource`](https://github.com/deweller/switchaudio-osx):

```bash
brew install switchaudio-osx
bash auto-switch-mic.sh
```

Polls every 10 seconds. Switches input to "SpeechMike III" as soon as it's detected and not already active.
