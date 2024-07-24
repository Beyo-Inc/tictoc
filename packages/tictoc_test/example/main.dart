// ignore_for_file: avoid_print

import 'package:tictoc/tictoc.dart';
import 'package:tictoc_test/tictoc_test.dart';

void main() async {
  const int mockOffset = 5000;
  final DateTime testTime = DateTime(2024, 07, 24, 17, 36, 01);

  final TicTocInterface mockTictoc = MockTictoc(
    offset: mockOffset,
    synced: true,
    localTime: testTime,
  );

  print(await mockTictoc.sync());
  print(mockTictoc.now());

  print(
    mockTictoc.now().dateTime.difference(testTime) ==
        const Duration(milliseconds: mockOffset),
  );
}
