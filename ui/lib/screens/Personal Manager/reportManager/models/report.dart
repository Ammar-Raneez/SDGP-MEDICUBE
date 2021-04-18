import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class Report {

  String id;
  String cancerType;
  String imageUrl;
  String result;
  String percentage;
  String reportType;
  Timestamp reportDate;

  Report({
    this.reportType = '',
    this.reportDate,
    this.imageUrl='',
    this.percentage='',
    this.cancerType=''
  }); // Constructor

  static Report fromDiagnosisJson(Map<String, dynamic> json) => Report(
    reportType: json['reportType'],
    reportDate: json['timestamp'],
    cancerType: json['cancerType'],
    imageUrl: json['imageUrl'],
    percentage: json['percentage']
  );

  static Report fromPrognosisJson(Map<String, dynamic> json) => Report(
      reportType: json['reportType'],
      reportDate: json['timestamp'],
      imageUrl: json['imageUrl'],
      percentage: json['percentage']
  );

}
