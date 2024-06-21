import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../styles/colors.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(5),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 43, 40, 40),
            blurRadius: 2,
            offset: Offset(0, 2),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              // Handle login click
              Get.toNamed('/login'); // Example route
            },
            child: Text(
              'Login',
              style: TextStyle(
                color: AppColors.blue,
                decoration: TextDecoration.underline,
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
