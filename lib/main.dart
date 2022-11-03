import 'dart:ui';

import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'component/dashboard_storage_chart.dart';
import 'component/dashboard_upgrade_storage.dart';
import 'component/item_apartment.dart';
import 'component/item_chat.dart';
import 'component/item_course.dart';
import 'component/item_food_cart.dart';
import 'component/item_food_catalog.dart';
import 'component/item_manage_task.dart';
import 'component/item_meeting.dart';
import 'component/item_meeting_room.dart';
import 'component/item_popular_furniture.dart';
import 'component/item_product_coffee.dart';
import 'component/item_salon_service.dart';
import 'component/item_schedule.dart';
import 'component/item_service_coffee.dart';
import 'component/item_storage_dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: const Text('Item Course'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            ItemCourse(),
          ],
        ),
      ),
    );
  }
}

