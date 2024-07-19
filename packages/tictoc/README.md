# tictoc

Dart network time protocol package by beyo

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
// sync() runs the moment you declare it
final TicToc tictoc = TicToc();
final Timestamp timestamp = tictoc.now();
final DateTime dateTime = timestamp.dateTime();
```
