import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ui/screens/Personal%20Manager/medicationManager/api/utils.dart';
import 'package:ui/screens/Personal%20Manager/reportManager/models/report.dart';
import 'package:ui/services/GoogleUserSignInDetails.dart';

final user = FirebaseAuth.instance.currentUser;

var loggedInUserEP = user.email;
var loggedInUserGoogle =  GoogleUserSignInDetails.googleSignInUserEmail;

class ReportFirebaseApi {

  static Stream<List<Report>> readReports() => FirebaseFirestore.instance
      .collection("users")
      .doc(loggedInUserEP != null ? loggedInUserEP : loggedInUserGoogle)
      .collection("imageDetections")
      .snapshots()
      .transform(Utils.transformer(Report.fromJson)
  );

}