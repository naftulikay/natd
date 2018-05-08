# natd [![Build Status][travis.svg]][travis]

A NAT management service daemon.

`natd` will tweak kernel configuration using `sysctl` for IP forwarding, inject a NAT `iptables` rule, and will
provide health checks over HTTP, port 8080 by default.

## License

Licensed at your discretion under either:

 - [Apache License, Version 2.0][LICENSE-APACHE]
 - [MIT License][LICENSE-MIT]

 [travis]: https://travis-ci.org/naftulikay/nathealthd
 [travis.svg]: https://travis-ci.org/naftulikay/nathealthd.svg?branch=master
 [LICENSE-APACHE]: ./LICENSE-APACHE
 [LICENSE-MIT]: ./LICENSE-MIT
