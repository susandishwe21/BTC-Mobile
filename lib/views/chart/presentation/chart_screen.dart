import 'package:btc_mobile/views/home/presentation/home_screen.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'widgets/indicator.dart';

class ChartScreen extends StatefulWidget {
  const ChartScreen({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "Favourite",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: AspectRatio(
        aspectRatio: 1.3,
        child: Row(
          children: <Widget>[
            const SizedBox(
              height: 18,
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: PieChart(
                  PieChartData(
                    pieTouchData: PieTouchData(
                      touchCallback: (FlTouchEvent event, pieTouchResponse) {
                        setState(() {
                          if (!event.isInterestedForInteractions ||
                              pieTouchResponse == null ||
                              pieTouchResponse.touchedSection == null) {
                            touchedIndex = -1;
                            return;
                          }
                          touchedIndex = pieTouchResponse
                              .touchedSection!.touchedSectionIndex;
                        });
                      },
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    sectionsSpace: 0,
                    centerSpaceRadius: 40,
                    sections: showingSections(),
                  ),
                ),
              ),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Indicator(
                  color: Colors.blue,
                  text: 'Open Price',
                  isSquare: true,
                ),
                SizedBox(
                  height: 4,
                ),
                Indicator(
                  color: Colors.yellow,
                  text: 'Low',
                  isSquare: true,
                ),
                SizedBox(
                  height: 4,
                ),
                Indicator(
                  color: Colors.red,
                  text: 'High',
                  isSquare: true,
                ),
                SizedBox(
                  height: 4,
                ),
                Indicator(
                  color: Colors.green,
                  text: 'Close',
                  isSquare: true,
                ),
                SizedBox(
                  height: 18,
                ),
              ],
            ),
            const SizedBox(
              width: 28,
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    double totalOpenPrice = btcPriceList.fold(
        0.0, (sum, item) => sum + (double.tryParse(item.openPrice) ?? 0.0));

    double totalLowPrice = btcPriceList.fold(
        0.0, (sum, item) => sum + (double.tryParse(item.low) ?? 0.0));

    double totalHighPrice = btcPriceList.fold(
        0.0, (sum, item) => sum + (double.tryParse(item.high) ?? 0.0));

    double totalClosePrice = btcPriceList.fold(
        0.0, (sum, item) => sum + (double.tryParse(item.close) ?? 0.0));

    double totalSum =
        totalOpenPrice + totalLowPrice + totalHighPrice + totalClosePrice;

    return List.generate(4, (i) {
      double value;
      String title;
      switch (i) {
        case 0:
          value = totalOpenPrice;
          title = '${(totalOpenPrice / totalSum * 100).toStringAsFixed(1)}%';
          break;
        case 1:
          value = totalLowPrice;
          title = '${(totalLowPrice / totalSum * 100).toStringAsFixed(1)}%';
          break;
        case 2:
          value = totalHighPrice;
          title = '${(totalHighPrice / totalSum * 100).toStringAsFixed(1)}%';
          break;
        case 3:
          value = totalClosePrice;
          title = '${(totalClosePrice / totalSum * 100).toStringAsFixed(1)}%';
          break;
        default:
          throw Error();
      }

      final bool isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 25.0 : 16.0;
      final double radius = isTouched ? 60.0 : 50.0;
      const List<Shadow> shadows = [Shadow(color: Colors.black, blurRadius: 2)];

      return PieChartSectionData(
        color: i == 0
            ? Colors.blue
            : i == 1
                ? Colors.yellow
                : i == 2
                    ? Colors.red
                    : Colors.green,
        value: value,
        title: title,
        radius: radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          shadows: shadows,
        ),
      );
    });
  }
}
