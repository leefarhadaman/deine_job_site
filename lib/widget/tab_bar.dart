import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:deine_job_site/controller/tab_controller.dart';

class TabBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppTabController appTabController = Get.find();

    return TabBar(
      controller: TabController(
        length: 3,
        initialIndex: appTabController.tabIndex.value,
        vsync: context as TickerProvider, // Ensure vsync is set correctly
      ),
      tabs: [
        Tab(text: 'Arbeitnehmer'),
        Tab(text: 'Arbeitgeber'),
        Tab(text: 'Temporärburo'),
      ],
    );
  }
}
