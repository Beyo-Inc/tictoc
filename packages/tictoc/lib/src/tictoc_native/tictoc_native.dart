import 'dart:async';

import 'package:ntp/ntp.dart';

import '../tictoc_core/tictoc_core.dart';

class TicToc implements TicTocInterface {
  factory TicToc() => instance;
  TicToc.instantiate() {
    unawaited(sync());
  }

  static final TicToc instance = TicToc.instantiate();

  int ntpOffset = 0;
  bool _synced = false;

  @override
  Timestamp now([DateTime? localTime]) {
    final DateTime now = localTime ?? DateTime.now();
    final DateTime networkTime = now.add(Duration(milliseconds: ntpOffset));
    return Timestamp.fromDateTime(networkTime);
  }

  @override
  Future<Timestamp> sync([DateTime? localTime]) async {
    ntpOffset = await NTP.getNtpOffset();
    _synced = true;
    return now(localTime);
  }

  @override
  bool get synced => _synced;
}