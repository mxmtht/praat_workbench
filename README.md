# Praat Workbench
A collection of scripts to perform batch processing of audio files for phonetic research.

## Dependencies

To run these scripts you need to install Praat on your machine.

Mac OS (with brew):
```
brew install praat
```

Linux:
```
sudo apt install praat
```

### IDE

It is recommended to develop praat scripts in a code editor such as Visual Studio Code with the PraatVSCode extension for syntax highlighting.
VSCode on Mac OS:
```
brew install code
```
VSCode on Linux:
```
sudo apt install code
```

After installing VSCode on your machine open VSCode, navigate to the extensions store (on the left) and search for PraatVSCode.
Hafe fun.

## Execute a script

**Make sure to put some wav files into the audio directory!**

To execute one of these scripts in the command line, simplply enter:
```
praat batch_play.praat
```