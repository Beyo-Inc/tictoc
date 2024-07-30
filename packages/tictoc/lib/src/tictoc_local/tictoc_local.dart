import 'dart:async';

import '../tictoc_core/tictoc_core.dart';

class TicTocLocal implements TicTocInterface {
  factory TicTocLocal() => instance;
  TicTocLocal.instantiate() {
    unawaited(sync());
  }

  static final TicTocLocal instance = TicTocLocal.instantiate();

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
