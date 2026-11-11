# Changelog

All notable user-visible changes to the Blinko TOS application package.

## 1.8.7-2 — 2026-11-12

### Changed
- Icon: replaced the letter monogram with a functional vector mark that describes what the app does (the upstream project does not publish a compliant SVG).

## 1.8.7-1 — 2026-11-12

### Added
- First release. Blinko (`blinkospace/blinko:1.8.7`, Docker Hub official image, unmodified)
  packaged as a TOS 7 Docker application, published on port 8092 and running
  as a non-root user (1000:1000).
- Persistent data is kept under `/Volume1/DockerAppData/blinkodocker/`.
