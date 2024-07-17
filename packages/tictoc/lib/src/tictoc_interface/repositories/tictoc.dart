import '../models/models.dart';

abstract class TicToc {
  Timestamp now();
  Future<Timestamp> sync();
  bool get synced;
}
