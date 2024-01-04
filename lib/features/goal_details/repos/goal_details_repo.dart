import 'package:flutter/material.dart';
import 'package:primer_progress_bar/primer_progress_bar.dart';

import '../../../themes/colors.dart';
import '../models/datamodel.dart';
import 'package:intl/intl.dart';

Future<Data>? getData(instance) async {
  late Data data;
  await instance.collection("task_collection").get().then((event) {
    for (var doc in event.docs) {
      var tempData = doc.data();
      data = Data.fromJson(tempData);
    }
  });
  return data;
}

Future<List<Segment>>? getSegments(Data data) async{
  List<Segment> segments = [
    Segment(
        value: data.contributions.salary,
        color: taskBlue,
        label: data.contributions.salary>=10000? const Text("Monthly Salary"): const Text("Monthly Salary  "),
        valueLabel: Text('${'\t' *40}\$${formatter.format(data.contributions.salary)}')),
    Segment(
        value: data.contributions.dividend,
        color: taskYellow,
        label: const Text("Dividend"),
        valueLabel: Text('${'\t' *53}\$${formatter.format(data.contributions.dividend)}')),
    Segment(
        value: data.contributions.rent,
        color: taskCyan,
        label: const Text("Rent"),
        valueLabel: Text('${'\t' *60}\$${formatter.format(data.contributions.rent)}')),
  ];
  return segments;
}

Future<List<String>>? getCalcList(Data data) async{
  List<String> list = [];
  int tempTA = data.totalAmount;
  int tempTar = data.target;
  int needMore = tempTar - tempTA;

  DateTime targetDate = data.expectedCompletionDate.toDate();
  DateTime today = DateTime.now();

  int monthsDifference = (targetDate.year - today.year) * 12 + (targetDate.month - today.month);

  double monSaveProj = needMore / monthsDifference;

  list.add('\$${formatter.format(tempTA)}');
  list.add('\$${formatter.format(tempTar)}');
  list.add('\$${formatter.format(needMore)}');
  list.add('\$${formatter2.format(monSaveProj)}');
  return list;
}

NumberFormat formatter = NumberFormat.decimalPatternDigits(
  locale: 'en_us',
  decimalDigits: 0,
);

NumberFormat formatter2 = NumberFormat.decimalPatternDigits(
  locale: 'en_us',
  decimalDigits: 2,
);