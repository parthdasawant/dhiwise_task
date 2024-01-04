
import 'package:flutter/material.dart';
import 'package:primer_progress_bar/primer_progress_bar.dart';

import '../../../themes/colors.dart';
import '../models/datamodel.dart';

Future<Data> getData(instance) async {
  late Data data;
  await instance.collection("task_collection").get().then((event) {
    for (var doc in event.docs) {
      var tempData = doc.data();
      data = Data.fromJson(tempData);
    }
  });
  return data;
}

Future<List<Segment>> getSegments(Data data) async{
  List<Segment> segments = [
    Segment(
        value: 15000,
        color: taskBlue,
        label: const Text("Monthly Salary"),
        valueLabel: Text('${data.contributions.salary}')),
    Segment(
        value: 3000,
        color: taskYellow,
        label: const Text("Dividend"),
        valueLabel: Text('${data.contributions.dividend}')),
    Segment(
        value: 2000,
        color: taskCyan,
        label: const Text("Rent"),
        valueLabel: Text('${data.contributions.rent}')),
  ];
  return segments;
}
