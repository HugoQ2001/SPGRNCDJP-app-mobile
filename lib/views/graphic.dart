import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:tesisproject/dto/dto.dart';
import '../model/chart_data.dart';

class GraficView extends StatelessWidget {
  const GraficView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SfCartesianChart(
          series: <CartesianSeries<dynamic, dynamic>>[
            ColumnSeries<ChartData, String>(
              dataSource: Dto.resultados,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              pointColorMapper: (ChartData data, _) => data.color,
            ),
          ],
          primaryXAxis: const CategoryAxis(
            labelStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
            majorGridLines: MajorGridLines(width: 0),
          ),
          primaryYAxis: const NumericAxis(
            interval: 5,
            labelStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
          title: const ChartTitle(
            text: 'Cantidad de productos',
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          tooltipBehavior:
              TooltipBehavior(enable: true, header: 'cantidad de ventas'),
        ),
      ],
    );
  }
}
