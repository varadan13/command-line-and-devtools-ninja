**mpv** is a **free, open-source, lightweight media player** that plays **audio and video**, and it’s especially popular with power users and developers.

Think of it as:

> 🎧 **VLC for people who like minimal UI and maximum control**

---

## What mpv is best at

* 🎵 **Music playback** (MP3, FLAC, AAC, OGG, WAV, etc.)
* 🎬 Video playback (almost everything)
* 🌐 Streaming (YouTube, network streams, IPTV)
* 🖥️ Keyboard-driven & scriptable
* ⚙️ Extremely configurable

mpv uses **FFmpeg**, so format support is excellent.

---

## Key characteristics

* No traditional GUI by default (just a window)
* Controlled via **keyboard**, config files, or scripts
* Very low resource usage
* Cross-platform (Linux, macOS, Windows)

---

## Basic music usage

### Play a file

```bash
mpv song.mp3
```

### Play a folder (playlist)

```bash
mpv ~/Music/
```

### Play all MP3s

```bash
mpv *.mp3
```

---

## Useful music controls

| Key   | Action          |
| ----- | --------------- |
| Space | Play / Pause    |
| ← / → | Seek            |
| 9 / 0 | Volume          |
| > / < | Next / Previous |
| q     | Quit            |

---

## Music-focused mode (no video window)

```bash
mpv --no-video song.mp3
```

Make it default for audio:

```text
# ~/.config/mpv/mpv.conf
no-video=yes
```

---

## Why people use mpv for music

* Fast startup
* Gapless playback
* Excellent audio quality
* Works great with **terminal workflows**
* Can play **YouTube URLs directly**
* Integrates well with scripts and tiling window managers

Example:

```bash
mpv https://www.youtube.com/watch?v=WGtCC7bUkIw
```

---

## Advanced features (music nerd stuff)

* ReplayGain support
* ALSA / PulseAudio / PipeWire
* JACK audio
* Lua scripting (scrobbling, visualizers)
* FIFO / IPC control

---

## mpv vs other players

| Player     | When to choose                      |
| ---------- | ----------------------------------- |
| mpv        | Minimal, keyboard-driven, scripting |
| VLC        | GUI, casual use                     |
| Audacious  | Classic music player                |
| foobar2000 | Windows power music library         |
| Spotify    | Streaming, managed library          |

---

## Who mpv is for

✅ Developers
✅ Linux users
✅ Keyboard-centric users
✅ People with organized music folders

❌ People who want a big GUI library manager

---

If you want, I can show you:

* A **perfect mpv config for music**
* How to use mpv as a **web music client**
* How to integrate mpv with your **yt-dlp downloads**

Just tell me 🎶
