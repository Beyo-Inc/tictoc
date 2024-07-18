import 'models/models.dart';

abstract class TicTocInterface {
  Timestamp now();
  Future<Timestamp> sync();
  bool get synced;
}
