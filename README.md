# Community Hass.io Add-ons: qemu-user-static

[![GitHub Release][releases-shield]][releases]
![Project Stage][project-stage-shield]
![Project Maintenance][maintenance-shield]
[![GitHub Activity][commits-shield]][commits]
[![License][license-shield]](LICENSE.md)

[![CircleCI][circleci-shield]][circleci]
[![Code Climate][codeclimate-shield]][codeclimate]
[![Discord][discord-shield]][discord]
[![Community Forum][forum-shield]][forum]

## About

QEMU is a fast processor emulator: currently, this repository supports
ARM emulation. By using dynamic translation, it achieves a reasonable speed
while being easy to port on new host CPUs.

This repository provides the user mode emulation binaries, built statically.
In this mode, QEMU can launch Linux processes compiled for one CPU on another CPU.

The supported emulation types and this repository as a whole is optimized for
the use with Hass.io, and is therefore limited to architectures supported by
Hass.io to minimize the build size.

## Docker status

[![Docker Version][version-shield]][microbadger]
[![Docker Layers][layers-shield]][microbadger]
[![Docker Pulls][pulls-shield]][dockerhub]

## Usage

To register `qemu-*-static` for all supported processors run:

`docker run --rm --privileged hassioaddons/qemu-user-static:latest`

That's it!

## Static pre-compiled QEMU user binaries

This repository provides the statically compiled QEMU user mode processor
emulation binaries. These can be found on the [GitHub releases][releases] page
of this repository.

## Changelog & Releases

This repository does not keep a changelog. Instead, it is in sync with
the releases by QEMU. More information about the releases and other changes
can be found on the [GitHub releases][releases] page of this repository.

## Support

Got questions?

You have several options to get them answered:

- The Home Assistant [Community Forum][forum].
- The Home Assistant [Discord Chat Server][discord] for general Home Assistant
  discussions and questions.
- Join the [Reddit subreddit][reddit] in [/r/homeassistant][reddit]

You could also [open an issue here][issue] GitHub.

## Contributing

This is an active open-source project. We are always open to people who want to
use the code or contribute to it.

We have set up a separate document containing our
[contribution guidelines](CONTRIBUTING.md).

Thank you for being involved! :heart_eyes:

## Authors & contributors

The original setup of this repository is by [Franck Nijhof][frenck].

For a full list of all authors and contributors,
check [the contributor's page][contributors].

## License

MIT License

Copyright (c) 2017 Franck Nijhof

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

[dockerhub]: https://hub.docker.com/r/hassioaddons/qemu-user-static
[layers-shield]: https://images.microbadger.com/badges/image/hassioaddons/qemu-user-static.svg
[microbadger]: https://microbadger.com/images/hassioaddons/qemu-user-static
[pulls-shield]: https://img.shields.io/docker/pulls/hassioaddons/qemu-user-static.svg
[version-shield]: https://images.microbadger.com/badges/version/hassioaddons/qemu-user-static.svg
[circleci-shield]: https://img.shields.io/circleci/project/github/hassio-addons/qemu-user-static.svg
[circleci]: https://circleci.com/gh/hassio-addons/qemu-user-static
[codeclimate-shield]: https://img.shields.io/badge/code%20climate-protected-brightgreen.svg
[codeclimate]: https://codeclimate.com/github/hassio-addons/qemu-user-static
[commits-shield]: https://img.shields.io/github/commit-activity/y/hassio-addons/qemu-user-static.svg
[commits]: https://github.com/hassio-addons/qemu-user-static/commits/master
[contributors]: https://github.com/hassio-addons/qemu-user-static/graphs/contributors
[discord-shield]: https://img.shields.io/discord/330944238910963714.svg
[discord]: https://discord.gg/c5DvZ4e
[forum-shield]: https://img.shields.io/badge/community-forum-brightgreen.svg
[forum]: https://community.home-assistant.io/?u=frenck
[frenck]: https://github.com/frenck
[issue]: https://github.com/hassio-addons/qemu-user-static/issues
[license-shield]: https://img.shields.io/github/license/hassio-addons/qemu-user-static.svg
[maintenance-shield]: https://img.shields.io/maintenance/yes/2018.svg
[project-stage-shield]: https://img.shields.io/badge/project%20stage-production%20ready-brightgreen.svg
[reddit]: https://reddit.com/r/homeassistant
[releases-shield]: https://img.shields.io/github/release/hassio-addons/qemu-user-static.svg
[releases]: https://github.com/hassio-addons/qemu-user-static/releases
