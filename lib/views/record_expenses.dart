import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/constans.dart';

class RecordExpenses extends StatefulWidget {
  const RecordExpenses({super.key});

  @override
  State<RecordExpenses> createState() => _RecordExpensesState();
}

class _RecordExpensesState extends State<RecordExpenses> {
  List<Widget> textFields = [];
  String result = ZERO_STRING;
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myController.addListener(_sumValues);
    myController2.addListener(_sumValues);
    myController3.addListener(_sumValues);
  }

  void _sumValues() {
    double text1 = double.parse(
        myController.text.isNotEmpty ? myController.text : ZERO_STRING);
    double text2 = double.parse(
        myController2.text.isNotEmpty ? myController2.text : ZERO_STRING);
    double text3 = double.parse(
        myController3.text.isNotEmpty ? myController3.text : ZERO_STRING);

    setState(() {
      result = (text1 + text2 + text3).toStringAsFixed(2);
    });
  }

  void _addTextField() {
    setState(() {
      textFields.add(
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter text',
            ),
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Registrar Gastos',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.start,
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: const Color.fromARGB(255, 211, 83, 83),
            child: SizedBox(
              height: 90,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    const Text(
                      'I/E',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text('Entretenimiento'),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 199, 192, 192),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 40,
                      width: 160,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('S/. $result'),
                            const Icon(Icons.monetization_on_outlined),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: const Color.fromARGB(255, 236, 232, 232),
            child: SizedBox(
              height: 270,
              child: Column(
                children: [
                  SizedBox(
                    height: 90,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            width: 20,
                          ),
                          const Text('Fiestas'),
                          SizedBox(
                            height: 40,
                            width: 180,
                            child: TextField(
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(9),
                                ],
                                controller: myController,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  prefixText: 'S/.',
                                  suffixIcon:
                                      Icon(Icons.monetization_on_outlined),
                                  border: OutlineInputBorder(),
                                )),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 90,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            width: 20,
                          ),
                          const Text('Cine'),
                          SizedBox(
                            height: 40,
                            width: 180,
                            child: TextField(
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(9),
                                ],
                                controller: myController2,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  prefixText: 'S/.',
                                  suffixIcon:
                                      Icon(Icons.monetization_on_outlined),
                                  border: OutlineInputBorder(),
                                )),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 90,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            width: 20,
                          ),
                          const Text('Restaurantes'),
                          SizedBox(
                            height: 40,
                            width: 180,
                            child: TextField(
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(9),
                                ],
                                controller: myController3,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  prefixText: 'S/.',
                                  suffixIcon:
                                      Icon(Icons.monetization_on_outlined),
                                  border: OutlineInputBorder(),
                                )),
                          ),
                        ]),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 29, 129, 168),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context) => const ControlView()));
            },
            child: const Text(
              "Registrar Gastos Mensuales",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
