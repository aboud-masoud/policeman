import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:flutter/material.dart';

class ChartView extends StatelessWidget {
  const ChartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedCircularChart(
          key: GlobalKey<AnimatedCircularChartState>(),
          size: const Size(50, 50),
          initialChartData: <CircularStackEntry>[
            CircularStackEntry(
              <CircularSegmentEntry>[
                const CircularSegmentEntry(
                  33.33,
                  Colors.green,
                ),
                CircularSegmentEntry(
                  66.67,
                  Colors.grey[300],
                ),
              ],
            ),
          ],
          chartType: CircularChartType.Radial,
          edgeStyle: SegmentEdgeStyle.round,
          percentageValues: true,
        ),
        const Positioned(
          top: 13,
          left: 16,
          child: Column(
            children: [
              Text(
                "512",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              Text(
                "kcal",
                style: TextStyle(color: Color(0xFF515F65), fontSize: 6),
              ),
            ],
          ),
        )
      ],
    );
  }
}
