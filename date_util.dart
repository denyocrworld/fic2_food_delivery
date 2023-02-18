import 'package:intl/intl.dart';

class DateFormatter {
  static format(
    DateTime date, {
    String? format = "d MMM y",
  }) {
    return DateFormat(format).format(date);
  }
}
