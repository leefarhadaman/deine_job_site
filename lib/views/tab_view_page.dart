import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:deine_job_site/controller/tab_controller.dart';
import 'package:deine_job_site/views/page_buket/arbeitgeber_content.dart'; // Example content widgets
import 'package:deine_job_site/views/page_buket/arbeitnehmer_content.dart';
import 'package:deine_job_site/views/page_buket/temporarburo_content.dart';

class TabViewPage extends StatelessWidget {
  final AppTabController appTabController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => appTabController.changeTabIndex(0),
                child: GetBuilder<AppTabController>(
                  builder: (_) => Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                          color: appTabController.tabIndex.value == 0
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => appTabController.changeTabIndex(1),
                child: GetBuilder<AppTabController>(
                  builder: (_) => Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                          color: appTabController.tabIndex.value == 1
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => appTabController.changeTabIndex(2),
                child: GetBuilder<AppTabController>(
                  builder: (_) => Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                          color: appTabController.tabIndex.value == 2
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Obx(() {
            switch (appTabController.tabIndex.value) {
              case 0:
                return ArbeitnehmerContent(); // Example content widgets
              case 1:
                return ArbeitgeberContent();
              case 2:
                return TemporarburoContent();
              default:
                return Container();
            }
          }),
        ),
      ],
    );
  }
}
