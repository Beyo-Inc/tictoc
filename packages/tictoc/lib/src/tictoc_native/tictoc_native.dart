import 'dart:async';

import 'package:ntp/ntp.dart';

import '../tictoc_core/tictoc_core.dart';

class TicToc implements TicTocInterface {
  factory TicToc() => instance;
  TicToc.instantiate() {
    unawaited(sync());
  }

  static final TicToc instance = TicToc.instantiate();

  int _offset = 0;
  bool _synced = false;

  @override
  Timestamp now([DateTime? localTime]) {
    final DateTime now = localTime ?? DateTime.now();
    final DateTime networkTime = now.add(Duration(milliseconds: _offset));
    return Timestamp.fromDateTime(networkTime);
  }

  @override
  Future<Timestamp> sync([DateTime? localTime]) async {
    _offset = await NTP.getNtpOffset();
    _synced = true;
    return now(localTime);
  }

  set offset(int offset) {
    _offset = offset;
  }

  @override
  bool get synced => _synced;

  @override
  int get offset => _offset;
}
