import 'package:test/test.dart';
import 'package:tictoc/tictoc.dart';

void main() {
  group(
    '[Timestamp Test]',
    () {
      test(
          '''Timestamp.fromDateTime은 DateTime타입으로부터 올바른 seconds와 nanoseconds를 변환해야 한다.''',
          () {
        final DateTime dateTime =
            DateTime.fromMicrosecondsSinceEpoch(1721280188153152);
        final Timestamp timestamp = Timestamp.fromDateTime(dateTime);
        expect(
          timestamp.seconds,
          equals(1721280188),
          reason: '주어진 epoch로부터 seconds만 추출해야 한다.',
        );
        expect(
          timestamp.nanoseconds,
          equals(153152000),
          reason:
              '주어진 epoch로부터 microseconds까지만 추출한 후, nanoseconds는 0으로 처리해야 한다.',
        );
      });
    },
  );

  test(
    'Timestamp.add는 Duration타입으로부터 올바른 seconds와 nanoseconds를 추출하여 더해야 한다.',
    () {
      final DateTime dateTime =
          DateTime.fromMicrosecondsSinceEpoch(1721280188153152);
      final Timestamp timestamp = Timestamp.fromDateTime(dateTime);
      const Duration duration = Duration(
        days: 1,
        hours: 5,
        minutes: 20,
        seconds: 30,
        milliseconds: 587,
        microseconds: 123,
      );
      final Timestamp addedTimestamp = timestamp.add(duration);
      expect(
        addedTimestamp.seconds,
        equals(1721280188 + (24 * 60 * 60) + (5 * 60 * 60) + (20 * 60) + 30),
        reason: 'seconds는 주어진 duration에서 seconds를 추출하여 더해야 한다.',
      );
      expect(
        addedTimestamp.nanoseconds,
        equals(153152000 + (587 * 1000000) + (123 * 1000)),
        reason: 'nanoseconds는 주어진 duration에서 nanoseconds를 추출하여 더해야 한다.',
      );
    },
  );
}
