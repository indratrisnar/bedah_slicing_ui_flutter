import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

List storageData = [
      {
        'value': 17,
        'title': 'Folder',
        'icon': Icons.folder,
        'color': Colors.green[900],
      },
      {
        'value': 7,
        'title': 'Document',
        'icon': Icons.note,
        'color': Colors.pink[900],
      },
      {
        'value': 11,
        'title': 'Image',
        'icon': Icons.image,
        'color': Colors.blue[900],
      },
      {
        'value': 9,
        'title': 'Cloud',
        'icon': Icons.cloud,
        'color': Colors.yellow[800],
      },
    ];

class DashboardStorageChart extends StatelessWidget {
  const DashboardStorageChart({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: DChartBarCustom(
          radiusBar: BorderRadius.circular(8),
          spaceBetweenItem: 20,
          listData: storageData.map((e) {
            return DChartBarDataCustom(
              value: e['value'].toDouble(),
              label: e['title'],
              color: e['color'],
              showValue: true,
              valueCustom: Transform.translate(
                offset: const Offset(0, -24),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Text('${e['value']}GB'),
                      const SizedBox(height: 20),
                      Icon(
                        e['icon'],
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
