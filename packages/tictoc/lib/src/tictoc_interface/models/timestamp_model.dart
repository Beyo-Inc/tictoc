import 'package:freezed_annotation/freezed_annotation.dart';

part 'timestamp_model.freezed.dart';
part 'timestamp_model.g.dart';

@freezed
// REF: https://github.com/protocolbuffers/protobuf/blob/main/src/google/protobuf/timestamp.proto
class TimestampModel with _$TimestampModel {
  const factory TimestampModel({
    @Default(0) int seconds,
    @Default(0) int nanoseconds,
  }) = _TimestampModel;

  const TimestampModel._();

  factory TimestampModel.fromJson(Map<String, dynamic> json) =>
      _$TimestampModelFromJson(json);

  factory TimestampModel.fromDateTime(DateTime dateTime) {
    final int microsecondsSinceEpoch = dateTime.microsecondsSinceEpoch;
    final int seconds = microsecondsSinceEpoch ~/ (1000 * 1000);
    final int nanoseconds =
        (microsecondsSinceEpoch - seconds * 1000 * 1000) * 1000;
    return TimestampModel(seconds: seconds, nanoseconds: nanoseconds);
  }

  int get fromMicrosecondsSinceEpoch =>
      seconds * 1000 * 1000 + nanoseconds ~/ 1000;

  DateTime get dateTime =>
      DateTime.fromMicrosecondsSinceEpoch(fromMicrosecondsSinceEpoch);

  @override
  String toString() {
    return '''TimestampModel(seconds=$seconds, nanoseconds=$nanoseconds, dateTime=$dateTime)''';
  }

  Duration difference(TimestampModel other) {
    // TODO(team): 정밀한 차이를 계산 할 수 있을지 검토하기
    return dateTime.difference(other.dateTime);
  }

  TimestampModel add(Duration duration) {
    final int secondsToAdd = duration.inSeconds;
    final int nanosecondsToAdd =
        (duration.inMicroseconds - duration.inSeconds * 1000 * 1000) * 1000;
    return TimestampModel(
      seconds: seconds + secondsToAdd,
      nanoseconds: nanoseconds + nanosecondsToAdd,
    );
  }
}
