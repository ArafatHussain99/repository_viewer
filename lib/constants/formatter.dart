import 'package:intl/intl.dart';

class Formatter {
  static String dateFormatter(DateTime dateTime) {
    final formatter = DateFormat('d MMMM y', 'en_US');

    return formatter.format(dateTime);
  }

  static String dateFormatterWithHour(DateTime dateTime) {
    final formatter = DateFormat('hh:mm a d MMMM y', 'en_US');

    return formatter.format(dateTime);
  }

  static String shortDateFormatter(DateTime dateTime) {
    final formatter1 = DateFormat.d();
    final formatter2 = DateFormat.LLL();
    String result =
        '${formatter1.format(dateTime)} ${formatter2.format(dateTime)}';

    return result;
  }
}
