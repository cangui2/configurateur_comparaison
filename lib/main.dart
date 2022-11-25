import 'package:flutter/material.dart';
import 'package:flutter_application_1/page_widget/configuration.widget.dart';
import 'package:flutter_application_1/page_widget/stock.comparaison.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  String myurl = Uri.base.toString(); //get complete url
  String para1 =
      Uri.base.queryParameters["para1"]!; //get parameter with attribute "para1"
  // String para2 =
  //     Uri.base.queryParameters["para2"]!; //get parameter with attribute "para2"

  runApp(MaterialApp(
      home: MyApp(
    myurl: myurl, para1: para1,
    // para2: para2
  ))); //pass to MyApp class
}

class MyApp extends StatefulWidget {
  String myurl, para1;
  MyApp({
    super.key,
    required this.myurl,
    required this.para1,
    // required this.para2
  }); //constructor of MyApp class

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var dataConfigurations;
  @override
  void initState() {
    dataConfigurations = getData(widget.para1);
  }

  @override
  Widget build(BuildContext context) {
    //print(dataConfigurations);
    return MaterialApp(
      title: "Test App",
      home: Scaffold(
          // appBar: AppBar(
          //   title: const Text("Get URL Parameter"),
          //   backgroundColor: Colors.redAccent,
          // ),
          body: Center(
              child: Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 500.0,
                            height: MediaQuery.of(context).size.height,
                            child: ConfigurationWidget(
                                dataConfiguration: dataConfigurations),
                          ),
                          SizedBox(
                            width: 400.0,
                            height: MediaQuery.of(context).size.height,
                            child: StockComparaison(
                                dataConfiguration: dataConfigurations),
                          )
                        ],
                      )
                    ],
                  )))),
    );
  }
}

Future getData(String para1) async {
  print("get f=data ddddd");

  var url = Uri.parse(
      'https://dev.merlo-ch.com/configurateur_offre/end_config/api.php?id_conf=$para1');
  http.Response response = await http.get(url);
  final  data = jsonDecode(response.body) as Map;
  print(data['stock'].length);

//print(data['configurateur']['option']);
  return data;
}
