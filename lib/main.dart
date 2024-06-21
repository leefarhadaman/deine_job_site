import 'package:deine_job_site/controller/tab_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/home_view.dart';
import 'styles/colors.dart';
import 'styles/responsiveness.dart';

void main() {
   Get.put(AppTabController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Job Website',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeView(),
     
    );
  }
}
