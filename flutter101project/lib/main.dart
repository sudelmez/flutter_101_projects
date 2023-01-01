import 'package:flutter/material.dart';
import 'package:flutter101project/101/appbarlearn.dart';
import 'package:flutter101project/101/cardlearn.dart';
import 'package:flutter101project/101/customcomp.dart';
import 'package:flutter101project/101/errorbuilder.dart';
import 'package:flutter101project/101/iconlearn.dart';
import 'package:flutter101project/101/imagelearn.dart';
import 'package:flutter101project/101/indicator.dart';
import 'package:flutter101project/101/lifecycle.dart';
import 'package:flutter101project/101/listtile.dart';
import 'package:flutter101project/101/listview.dart';
import 'package:flutter101project/101/mycollectionsdemos.dart';
import 'package:flutter101project/101/navigationlearn.dart';
import 'package:flutter101project/101/pageview.dart';
import 'package:flutter101project/101/scaffoldlear.dart';
import 'package:flutter101project/101/stacklearn.dart';
import 'package:flutter101project/101/statefullearn.dart';
import 'package:flutter101project/101/stlesslearn.dart';
import 'package:flutter101project/101/textfieldlearn.dart';
import 'package:flutter101project/101/textwidgetview.dart';
import 'package:flutter101project/202/modellearnview.dart';
import 'package:flutter101project/202/service/servicelearnview.dart';
import 'package:flutter101project/202/service/servicepostlearnview.dart';
import 'package:flutter101project/202/tabbarlearn.dart';

import '101/buttonlearn.dart';
import '101/containerlearn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Servicepostlearn(),
      theme: ThemeData.dark().copyWith(
          listTileTheme: ListTileThemeData(contentPadding: EdgeInsets.zero),
          //icon coloru da değiştirebiliriz
          //errorColor:... tanımlayabiliriz
          //bu kısmı al fakat değiştir dedik. diğer sayfalarda artık bu kadar özwellik tanımlamak zorunda değiliz
          appBarTheme: AppBarTheme(
              centerTitle: true, backgroundColor: Colors.transparent)),
    );
  }
}
