import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:html/parser.dart';

String _parseHtmlString(String htmlString) {
  final document = parse(htmlString);
  final String parsedString = parse(document.body!.text).documentElement!.text;

  return parsedString;
}

class StockComparaison extends StatefulWidget {
  final dataConfiguration;
  const StockComparaison({Key? key, this.dataConfiguration}) : super(key: key);


  

  @override
  _StockComparaisonState createState() => _StockComparaisonState();
}

class _StockComparaisonState extends State<StockComparaison> {


  int total = 0;
  


  @override
  Widget build(BuildContext context) {
    print("widget stock");
     print(widget.dataConfiguration['stock'].length);
    // return Container();
    return FutureBuilder(
      future: widget.dataConfiguration,
      builder: 
      ((context, snapshot) {
        return snapshot.connectionState == ConnectionState.waiting
                ? const CircularProgressIndicator()
                : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
              children: List.generate(1,
                      (index) {
                return Text("ok") ;
                      },
              ),
            );
    }));
  }
}
