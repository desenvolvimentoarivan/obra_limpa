import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

T enumFromString<T>(Iterable<T> values, String value) {
  return values.firstWhere((type) => type.toString().split(".").last == value,
      orElse: () => null);
}

String enumToString<T>(T value) {
  return describeEnum(value);
}

String dateToString(DateTime dateTime) {
  return DateFormat('dd/MM/yyyy').format(dateTime);
}
