// import 'package:flutter/material.dart';
// import 'package:graphic/graphic.dart' as graphic;

// class GraficoBarras extends StatelessWidget {
//   const GraficoBarras({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final data = [
//       {'tipo': 'Gasto', 'cantidad': 100},
//       {'tipo': 'Predicción', 'cantidad': 200},
//     ];

//     return Center(
//       child: Container(
//         height: 1000,
//         padding: const EdgeInsets.all(16.0),
//         child: graphic.Chart(
//           data: data,
//           variables: {
//             'tipo': graphic.Variable(
//               accessor: (Map map) => map['tipo'] as String,
//             ),
//             'cantidad': graphic.Variable(
//               accessor: (Map map) => map['cantidad'] as num,
//             ),
//           },
//           marks: [
//             graphic.IntervalMark(
//               position: graphic.Varset('tipo') * graphic.Varset('cantidad'),
//               color: graphic.ColorEncode(
//                 variable: 'tipo',
//                 values: [Colors.blue, Colors.orange],
//               ),
//             ),
//           ],
//           axes: [
//             graphic.AxisGuide(
//               line: graphic.PaintAttr(color: Colors.black),
//               label: graphic.LabelAttr(),
//             ),
//             graphic.AxisGuide(
//               line: graphic.PaintAttr(color: Colors.black),
//               label: graphic.LabelAttr(),
//             ),
//           ],
//           selections: {
//             'tap': graphic.PointSelection(
//               on: {graphic.GestureType.tap},
//               dim: graphic.Dim.x,
//             )
//           },
//           tooltip: graphic.TooltipGuide(),
//         ),
//       ),
//     );
//   }
// }
