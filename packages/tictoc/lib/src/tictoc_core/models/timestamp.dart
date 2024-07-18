import 'package:freezed_annotation/freezed_annotation.dart';

part 'timestamp.freezed.dart';
part 'timestamp.g.dart';

@freezed
// REF: https://github.com/protocolbuffers/protobuf/blob/main/src/google/protobuf/timestamp.proto
class Timestamp with _$Timestamp {
  const factory Timestamp({
    @Default(0) int seconds,
    @Default(0) int nanoseconds,
  }) = _TimestampModel;

  const Timestamp._();

  factory Timestamp.fromJson(Map<String, dynamic> json) =>
      _$TimestampFromJson(json);

  factory Timestamp.fromDateTime(DateTime dateTime) {
    final int microsecondsSinceEpoch = dateTime.microsecondsSinceEpoch;
    final int seconds = microsecondsSinceEpoch ~/ (1000 * 1000);
    final int nanoseconds =
        (microsecondsSinceEpoch - seconds * 1000 * 1000) * 1000;
    return Timestamp(seconds: seconds, nanoseconds: nanoseconds);
  }

  int get fromMicrosecondsSinceEpoch =>
      seconds * 1000 * 1000 + nanoseconds ~/ 1000;

  DateTime get dateTime =>
      DateTime.fromMicrosecondsSinceEpoch(fromMicrosecondsSinceEpoch);

  @override
  String toString() {
    return '''Timestamp(seconds=$seconds, nanoseconds=$nanoseconds, dateTime=$dateTime)''';
  }

  Duration difference(Timestamp other) {
    // TODO(team): 정밀한 차이를 계산 할 수 있을지 검토하기
    return dateTime.difference(other.dateTime);
  }

  Timestamp add(Duration duration) {
    final int secondsToAdd = duration.inSeconds;
    final int nanosecondsToAdd =
        (duration.inMicroseconds - duration.inSeconds * 1000 * 1000) * 1000;
    return Timestamp(
      seconds: seconds + secondsToAdd,
      nanoseconds: nanoseconds + nanosecondsToAdd,
    );
  }
}
