import 'package:intl/intl.dart';

class MoneyFormatter {
  static final NumberFormat _formatter = NumberFormat('#,##0', 'ru_RU');
  static String format(num price) {
    return _formatter.format(price);
  }
}