import 'package:flutter/material.dart';

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
                text: 'Gastos',
              ),
            ],
          ),
          title: const Text('Registro'),
        ),
        body: TabBarView(
          children: [
            const Icon(Icons.directions_car),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              height: 40,
                              width: 90,
                              child: const Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('S/. 50'),
                                    Icon(Icons.attach_money_rounded),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ),
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
