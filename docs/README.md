# 🌄 25th Hour

<img align="right" width="40%" src="preview.gif">

Dynamic desktop wallpaper for macOS 10.14 Mojave based on [Louis Coyle's
Lakeside Sunrise][lakeside-sunrise] and its [SVG animation 25th
hour][25th-hour].

Created by filming a full cycle (60 seconds exactly) of the SVG animation and
using `ffmpeg -i 25th-hour.mov -vf fps=16/60 assets/%03d.png` to convert into
16 equidistant frames.

The frames can then be converted into a HEIC file using
[wallpapper][gh-wallpapper] and enabled either manually or using
[macos-wallpaper][gh-macos-wallpaper].

## Installation

There is a pre-built dynamic desktop wallpaper available for download
[here][latest-release]. Put it in whatever directory you want, right-click the
file and select `Services > Set Desktop Picture`.

If you want to build from source, clone this repository and run `make`. This
needs to be repeated for every desktop, since macOS does not allow setting the
wallpaper for inactive desktops.

## Troubleshooting

Sometimes, the wallpaper is not set in dynamic mode. To fix this, change your
wallpaper to either of the two dynamic wallpapers that ship with macOS, set the
mode to *Dynamic* and install again.

## License

25th-hour is [licensed under an MIT license][license].

[lakeside-sunrise]: https://dribbble.com/shots/1816328-Lakeside-Sunrise
[25th-hour]: http://louie.co.nz/25th_hour/
[gh-wallpapper]: https://github.com/mczachurski/wallpapper
[gh-macos-wallpaper]: https://github.com/sindresorhus/macos-wallpaper
[latest-release]: https://github.com/dominiklohmann/25th-hour/releases/latest
[license]: /LICENSE
