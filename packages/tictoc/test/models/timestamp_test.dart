import 'package:test/test.dart';
import 'package:tictoc/tictoc.dart';

void main() {
  group('[Timestamp Test]', () {
    test(
        '''Timestamp.fromDateTime은 DateTime타입으로부터 올바른 seconds와 nanoseconds를 변환해야 한다.''',
        () async {
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
        reason: '주어진 epoch로부터 microseconds까지만 추출한 후, nanoseconds는 0으로 처리해야 한다.',
      );
    });
  });
}
