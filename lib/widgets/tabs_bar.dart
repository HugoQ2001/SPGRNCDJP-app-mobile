import 'package:flutter/material.dart';
import 'package:tesisproject/views/record_expenses.dart';
import 'package:tesisproject/widgets/table.dart';

class TabsBar extends StatelessWidget {
  const TabsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Predicciones',
              ),
              Tab(
                text: 'Gastos', //...
              ),
            ],
          ),
          title: const Text('Registro'),
        ),
        body: const TabBarView(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                child: TablaView()),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              child: RecordExpenses(),
            ),
          ],
        ),
      ),
    );
  }
}
