import 'dart:async';

import 'package:easy_network_time/easy_network_time.dart';

import '../tictoc_core/tictoc_core.dart';

class TicToc implements TicTocInterface {
  factory TicToc() => instance;
  TicToc.instantiate() {
    unawaited(sync());
  }

  static final TicToc instance = TicToc.instantiate();

  int worldTimeApiOffset = 0;
  bool _synced = false;

  @override
  Timestamp now([DateTime? localTime]) {
    final DateTime now = localTime ?? DateTime.now();
    final DateTime networkTime =
        now.add(Duration(milliseconds: worldTimeApiOffset));
    return Timestamp.fromDateTime(networkTime);
  }

  @override
  Future<Timestamp> sync([DateTime? localTime]) async {
    final LocationTime? locationTime =
        await EasyNetworkTime.getTimeNetwork(TimeLocation.asiaSeoul);
    if (locationTime == null) {
      throw Exception('locationTime is not allowed to be null');
    }
    final DateTime networkDateTime = locationTime.dateTime;
    worldTimeApiOffset =
        networkDateTime.difference(DateTime.now()).inMilliseconds;
    _synced = true;

    return now();
  }

  @override
  bool get synced => _synced;
}
