import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:deine_job_site/controller/tab_controller.dart';
import 'package:deine_job_site/views/landing_page/landing_page.dart';
import 'package:deine_job_site/views/navbar/navbar.dart';
import 'package:deine_job_site/views/page_buket/arbeitnehmer_content.dart'; // Import your content widgets
import 'package:deine_job_site/views/page_buket/arbeitgeber_content.dart';
import 'package:deine_job_site/views/page_buket/temporarburo_content.dart';

class HomeView extends StatelessWidget {
  final AppTabController appTabController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 35), // Space for the navbar
                LandingPage(),
                SizedBox(
                    height: 20), // Space between LandingPage and TabViewPage
                Column(
                  children: [
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => appTabController.changeTabIndex(0),
                            child: Obx(() => Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  decoration: BoxDecoration(
                                    color: appTabController.tabIndex.value == 0
                                        ? Colors.blue
                                        : Colors.white,
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    'Arbeitnehmer',
                                    style: TextStyle(
                                        color:
                                            appTabController.tabIndex.value == 0
                                                ? Colors.white
                                                : Colors.black),
                                  ),
                                )),
                          ),
                          GestureDetector(
                            onTap: () => appTabController.changeTabIndex(1),
                            child: Obx(() => Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  decoration: BoxDecoration(
                                    color: appTabController.tabIndex.value == 1
                                        ? Colors.blue
                                        : Colors.white,
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    'Arbeitgeber',
                                    style: TextStyle(
                                        color:
                                            appTabController.tabIndex.value == 1
                                                ? Colors.white
                                                : Colors.black),
                                  ),
                                )),
                          ),
                          GestureDetector(
                            onTap: () => appTabController.changeTabIndex(2),
                            child: Obx(() => Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  decoration: BoxDecoration(
                                    color: appTabController.tabIndex.value == 2
                                        ? Colors.blue
                                        : Colors.white,
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    'Temporärburo',
                                    style: TextStyle(
                                        color:
                                            appTabController.tabIndex.value == 2
                                                ? Colors.white
                                                : Colors.black),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20), // Space between tabs and content
                    Obx(() {
                      switch (appTabController.tabIndex.value) {
                        case 0:
                          return ArbeitnehmerContent(); // Display ArbeitnehmerContent
                        case 1:
                          return ArbeitgeberContent();
                        case 2:
                          return TemporarburoContent();
                        default:
                          return Container();
                      }
                    }),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: NavBar(),
          ),
        ],
      ),
    );
  }
}
