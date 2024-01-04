
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class Data{
  Contributions contributions;
  Timestamp expectedCompletionDate;
  int target;
  int totalAmount;


  Data({
    required this.contributions,
    required this.expectedCompletionDate,
    required this.target,
    required this.totalAmount
});

  factory Data.fromJson(Map<String, dynamic> json) =>
      Data(
        contributions: Contributions.fromJson(json["contributions"]),
    expectedCompletionDate: json["expected_completion_date"],
    target: json["target"],
    totalAmount: json["total_amount"],);


  Map<String, dynamic> toJson() => {
    "contributions": contributions.toJson(),
    "expected_completion_date": expectedCompletionDate,
    "target": target,
    "total_amount": totalAmount,
  };
}
class Contributions {
  int dividend;
  int rent;
  int salary;

  Contributions({
    required this.dividend,
    required this.rent,
    required this.salary,
  });

  factory Contributions.fromJson(Map<String, dynamic> json) =>
      Contributions(
        dividend: json["Dividend"],
        rent: json["Rent"],
        salary: json["Monthly Salary"],
      );

  Map<String, dynamic> toJson() =>
      {
        "Dividend": dividend,
        "Rent": rent,
        "Monthly Salary": salary,
      };
}