import 'package:btc_mobile/views/home/presentation/home_screen.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../home/domain/btc_price.dart';

class ChartScreen extends StatefulWidget {
  const ChartScreen({super.key});

  @override
  State<ChartScreen> createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "Chart",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LineChart(
          LineChartData(
            lineBarsData: [
              LineChartBarData(
                spots: btcPriceList
                    .map((point) => FlSpot(double.tryParse(point.high) ?? 0,
                        double.tryParse(point.high) ?? 0))
                    .toList(),
                isCurved: false,
                // dotData: FlDotData(
                //   show: false,
                // ),
              ),
            ],
            //   lineTouchData: LineTouchData(
            //     touchCallback:
            //         (FlTouchEvent event, LineTouchResponse? touchResponse) {
            //       if (event is FlLongPressMoveUpdate) {
            //         setState(() {});
            //       }
            //     },
            //     handleBuiltInTouches: true,
            //   ),
            gridData: const FlGridData(show: true),
            titlesData: const FlTitlesData(),
            //   borderData: FlBorderData(
            //       show: true, border: Border.all(color: Colors.grey)),
            minX: 0,
            // maxX: btcPriceList.length.toDouble(),
            minY: 0,
            //   maxY: getMaxPrice() + 10,
            //   lineBarsData: [
            //     LineChartBarData(
            //       spots: getBTCPriceSpots(),
            //       isCurved: true,
            //       barWidth: 4,
            //       isStrokeCapRound: true,
            //       belowBarData: BarAreaData(show: true),
            //       dotData: const FlDotData(show: false),
            //     ),
            //   ],
            //   extraLinesData: const ExtraLinesData(),
          ),
        ),
      ),
    );
  }

  double getMaxPrice() {
    return btcPriceList
        .map((e) => double.tryParse(e.openPrice) ?? 0.0)
        .reduce((a, b) => a > b ? a : b);
  }

  List<FlSpot> getBTCPriceSpots() {
    return btcPriceList.asMap().entries.map((entry) {
      int index = entry.key;
      BTCPrice price = entry.value;
      return FlSpot(index.toDouble(), double.tryParse(price.openPrice) ?? 0.0);
    }).toList();
  }
}
