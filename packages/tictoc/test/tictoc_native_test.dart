import 'package:test/test.dart';
import 'package:tictoc/tictoc.dart';

void main() {
  group(
    '[TicToc Native Test]',
    () {
      test(
        'now()를 호출하면, ntpOffset을 반영한 현재 시간을 반환해야 한다.',
        () {
          const int mockOffset = 5000;
          final TicToc sut = TicToc();
          final DateTime localTime = DateTime.now();
          sut.ntpOffset = mockOffset;

          final Timestamp now = sut.now(localTime);

          final DateTime expectedTime =
              localTime.add(const Duration(milliseconds: mockOffset));

          expect(
            now.dateTime,
            expectedTime,
            reason: 'ntpOffset이 반영된 시간을 반환해야 한다.',
          );
        },
      );
    },
  );
}
