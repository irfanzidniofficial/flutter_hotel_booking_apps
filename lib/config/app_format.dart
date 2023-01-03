import 'package:intl/intl.dart';

class AppFormat {
  static String date(String stringData) {
    // 2023-01-03
    DateTime dateTime = DateTime.parse(stringData); // 3 Jan 2023
    return DateFormat('d MMM yyyy', 'en_US').format(dateTime);
  }

  static String dateMonth(String stringDate) {
    // 2023-01-03
    DateTime dateTime = DateTime.parse(stringDate);
    return DateFormat('d MMM', 'en_US').format(dateTime); // 3 Jan
  }

  static String currency(double number) {
    return NumberFormat.currency(
      decimalDigits: 0,
      locale: 'en_US',
      symbol: '\$',
    ).format(number);
  }
}
