// @dart=2.9

import 'package:photos/utils/date_time_util.dart';

class YearsData {
  final List<YearData> yearsData = [];
  YearsData._privateConstructor() {
    for (int year = currentYear; year >= 1970; year--) {
      //appending from the latest year so that search results will show latest year first
      yearsData.add(
        YearData(year.toString(), [
          DateTime(year).microsecondsSinceEpoch,
          DateTime(year + 1).microsecondsSinceEpoch,
        ]),
      );
    }
  }
  static final YearsData instance = YearsData._privateConstructor();
}

class YearData {
  final String year;
  final List<int> duration;
  YearData(this.year, this.duration);
}
