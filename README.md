# Project: Play Despacito Rapidly 🎶

## Description
This project executes a sequence of 6 bars from the high part of the song, using a bash script that controls the playback of musical notes. The script manages the frequencies, timings, and other technical aspects of the playback.

Author: **Oscar de las Heras García**  

## Project Features

- **Frequency and Timing Declaration**: 
  The frequencies used were obtained from [this source](https://www.liutaiomottola.com/formulae/freqtab.htm).
  Each bar has a duration of 1600 ms.

- **Keyboard Shortcut Control**: 
  A function has been created to capture the `Ctrl+C` shortcut, ensuring an orderly script termination. Additionally, the mouse pointer is hidden during execution using `tput civis` and restored with `tput cnorm`.

- **Note Durations**:
  - Quarter notes: 400 ms (1/4 of a bar).
  - Triplets: 133 ms x 3.
  - Half notes: 800 ms (2/4 of a bar).
  - Eighth notes: 200 ms (1/8 of a bar).
  - Sixteenth notes: 100 ms (1/16 of a bar).
  - Rests have durations aligned with the respective note values.
  
  All durations are calculated for a 4/4 time signature. A delay (`-D`) of 50 ms has been added to slightly speed up the playback.

## Execution Script

I created a script, `script.sh`, which is responsible for playing the song. The script includes functionality to play the notes with the specified frequencies and timings, and handles the `Ctrl+C` shortcut for orderly termination.

The script has been configured to run automatically as a system service under `/etc/systemd/system` with the following configuration file:

```ini
[Unit]
Description=Play Despacito Rapidly

[Service]
ExecStart=/usr/bin/script.sh
Restart=on-failure

[Install]
WantedBy=multi-user.target
Alias=script.service
```

## To Enable the Service

To enable the service, run the following command:

```bash
sudo systemctl enable script.service
```
