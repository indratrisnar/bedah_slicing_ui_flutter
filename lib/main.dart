import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'component/dashboard_storage_chart.dart';
import 'component/dashboard_upgrade_storage.dart';
import 'component/item_product_coffee.dart';
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
        appBar: AppBar(
          title: const Text('Dashboard Upgrade Storage'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            DashboardUpgradeStorage(),
          ],
        ),
      ),
    );
  }
}

