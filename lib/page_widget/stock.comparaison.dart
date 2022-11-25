import 'package:flutter/material.dart';

class StockComparaison extends StatefulWidget {
  const StockComparaison(dataConfigurations, { Key? key }) : super(key: key);

  @override
  _StockComparaisonState createState() => _StockComparaisonState();
}

class _StockComparaisonState extends State<StockComparaison> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Text("hello stock"),
    );
  }
}