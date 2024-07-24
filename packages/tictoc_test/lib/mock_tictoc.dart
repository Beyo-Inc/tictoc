import 'package:tictoc/tictoc.dart';

class MockTictoc implements TicTocInterface {
  MockTictoc({
    int? offset,
    bool? synced,
    DateTime? localTime,
  }) {
    this.offset = offset ?? 0;
    _synced = synced ?? false;
    _localTime = localTime ?? DateTime.now();
  }

  late final int offset;
  bool _synced = false;
  late final DateTime _localTime;

  @override
  Timestamp now() {
    return Timestamp.fromDateTime(
      _localTime.add(Duration(milliseconds: offset)),
    );
  }

  @override
  Future<Timestamp> sync() async {
    _synced = true;
    return Future<Timestamp>.value(now());
  }

  @override
  bool get synced => _synced;
}
