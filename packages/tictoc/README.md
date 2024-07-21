# tictoc

Dart network time protocol package by beyo

## What is NTP?

**NTP**, or **Network Time Protocol**, is a networking protocol designed for clock synchronization between computer systems over packet-switched, variable-latency data networks. It is one of the oldest Internet protocols still in use and was developed by David L. Mills at the University of Delaware. NTP is intended to synchronize all participating computers to within a few milliseconds of Coordinated Universal Time (UTC).

## Limitations in Web

NTP relies on low-level network protocols (UDP) and requires direct access to the system's clock, **which is not possible in web environments** for several reasons:

- **Security Restrictions**: Browsers restrict access to low-level networking protocols and system resources to maintain security and privacy.
- **Lack of UDP Support**: Web browsers do not support UDP, which is the protocol used by NTP for time synchronization.
- **Sandboxing**: Web applications run in a sandboxed environment with limited access to the underlying system, preventing direct manipulation of the system clock.

Due to these limitations, **we utilize the [WorldTimeAPI](http://worldtimeapi.org/)** to fetch accurate time information **in web environments.** WorldTimeAPI provides a simple and convenient way to get the current time for any timezone, ensuring that our application remains synchronized with real-world time.

## How to use

### Install

In order to use tictoc, you will need to install by adding it to your `pubspec.yaml` file:

For a Flutter project:

```console
flutter pub add tictoc
```

For a Dart project:

```console
dart pub add tictoc
```

### Usage

```Dart
// sync() runs the moment you initialize it
final TicToc tictoc = TicToc();
final Timestamp timestamp = tictoc.now();
final DateTime dateTime = timestamp.dateTime();
```

## Learn More

For more information about NTP, you can visit the [official NTP documentation](http://www.ntp.org/documentation).

## About beyo

![beyo logo](https://github.com/user-attachments/assets/977460c4-3800-48c1-bebc-0a79b25ce1e2)
At beyo, we believe in helping everyone find their true selves and achieve genuine happiness. Our slogan, Be yourself, embodies our commitment to working together for your happiness and well-being. To learn more about our mission and values, visit our [website](https://beyo.io).
