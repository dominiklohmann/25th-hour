# 🌄 25th Hour

Dynamic desktop wallpaper for macOS 10.14 Mojave based on [Louis Coyles
Lakeside Sunrise][lakeside-sunrise] and its [SVG animation 25th
hour][25th-hour].

Created by filming a full cycle (60 seconds exactly) of the SVG animation and
using `ffmpeg -i 25th-hour.mov -vf fps=16/60 assets/%03d.png` to convert into
16 equidistant frames.

The frames were then converted into a HEIC file using
[wallpapper][gh-wallpapper].

## Installation

Clone this repository and run `make`. This needs to be repeated for every
desktop, since macOS does not allow setting the wallpaper for inactive
desktops.

## Troubleshooting

Sometimes, the wallpaper is not set in dynamic mode. To fix this, change your
wallpaper to either of the two dynamic wallpapers that ship with macOS, set the
mode to *Dynamic* and install again.

## License

25th-hour is [licensed under an MIT license][license].

[lakeside-sunrise]: https://dribbble.com/shots/1816328-Lakeside-Sunrise
[25th-hour]: http://louie.co.nz/25th_hour/
[gh-wallpapper]: https://github.com/mczachurski/wallpapper
[license]: LICENSE
