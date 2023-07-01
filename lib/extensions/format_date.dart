import 'package:intl/intl.dart';

extension FormatDate on DateTime {
  String formatDate() {
    DateFormat format = DateFormat('EEEE, dd-MMMM-yyyy');
    var formatted = format.format(this);
    return formatted;
  }
}
