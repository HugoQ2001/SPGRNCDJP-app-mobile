import 'package:flutter/material.dart';
import 'package:tesisproject/model/chart_data.dart';
import 'package:tesisproject/views/line_chart.dart';

class TablaView extends StatelessWidget {
  const TablaView({super.key});

  @override
  Widget build(BuildContext context) {
// Example data
    const String categoria = 'Entretenimiento';
    const double gasto = 150;
    const double prediccion = 100;
    const double ahorro = ((gasto - prediccion) / gasto) * 100;

    // datos de la tabla

    // Determine color based on the condition
    const Color ahorroColor = prediccion > gasto ? Colors.red : Colors.green;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section for the chart
            const Text(
              'Gráfica',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 10),
            LineChartWidget(pricePoint),
            const SizedBox(height: 20),
            // Subtitle for the table
            const Text(
              'Estadísticas',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 10),
            // Table
            Table(
              border: TableBorder.all(),
              columnWidths: const {
                0: FlexColumnWidth(1),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(1),
                3: FlexColumnWidth(1),
              },
              children: [
                const TableRow(
                  decoration: BoxDecoration(color: Colors.blue),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Categoria',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Gasto',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Predicción',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Ahorro',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(categoria),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('S/$gasto'),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('S/$prediccion'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${ahorro.toStringAsFixed(1)}%',
                        style: const TextStyle(color: ahorroColor),
                      ),
                    ),
                  ],
                ),
                // Add more rows here if needed
              ],
            ),
            const SizedBox(height: 20),
            // Description below the table
            const Text(
              'Descripción: Si la predicción del modelo RNN supera a los gastos del mes, el valor de ahorro será rojo.',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              'Descripción: Si el gasto de entretenimiento supera a los la predicción del modelo RNN del mes, el valor de ahorro será verde.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
