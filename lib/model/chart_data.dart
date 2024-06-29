import 'package:collection/collection.dart';

class PricePoint {
  final double x;
  final double y;

  PricePoint({required this.x, required this.y});
}

List<PricePoint> get pricePoint {
  final data = <double>[100, 120, 210, 300];
  return data
      .mapIndexed(
          ((index, element) => PricePoint(x: index.toDouble(), y: element)))
      .toList();
}
