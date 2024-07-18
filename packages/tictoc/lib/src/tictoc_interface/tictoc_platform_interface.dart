import 'models/models.dart';

abstract class TicTocPlatformInterface {
  Timestamp now();
  Future<Timestamp> sync();
  bool get synced;
}
