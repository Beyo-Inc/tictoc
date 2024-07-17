import '../models/models.dart';

abstract class TimestampRepository {
  TimestampModel now();
  Future<TimestampModel> sync();
  bool get synced;
}
