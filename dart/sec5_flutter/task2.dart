class Holiday {
  String name;
  int day;
  String month;

  Holiday(this.name, this.day, this.month);

  static bool inSameMonth(Holiday holiday1, Holiday holiday2) {
    return holiday1.month == holiday2.month;
  }

  static double avgDate(List<Holiday> holidays) {
    int total = 0;

    for (Holiday holiday in holidays) {
      total += holiday.day;
    }

    return total / holidays.length;
  }
}

void main() {
  Holiday independenceDay = Holiday(
    'Independence Day',
    4,
    'July',
  );

  Holiday christmas = Holiday(
    'Christmas',
    25,
    'December',
  );

  Holiday anotherJulyHoliday = Holiday(
    'Another Holiday',
    15,
    'July',
  );

  print('Holiday: ${independenceDay.name}');
  print('Day: ${independenceDay.day}');
  print('Month: ${independenceDay.month}');

  print('--------------------');

  print(
    'Independence Day and Christmas same month: '
    '${Holiday.inSameMonth(independenceDay, christmas)}',
  );

  print(
    'Independence Day and Another July Holiday same month: '
    '${Holiday.inSameMonth(independenceDay, anotherJulyHoliday)}',
  );

  print('--------------------');

  List<Holiday> holidays = [
    independenceDay,
    christmas,
    anotherJulyHoliday,
  ];

  print('Average day: ${Holiday.avgDate(holidays)}');
}