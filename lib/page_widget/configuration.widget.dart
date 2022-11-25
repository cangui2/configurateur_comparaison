import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:html/parser.dart';

String _parseHtmlString(String htmlString) {
  final document = parse(htmlString);
  final String parsedString = parse(document.body!.text).documentElement!.text;

  return parsedString;
}

class ConfigurationWidget extends StatefulWidget {
  final dataConfiguration;

  const ConfigurationWidget({Key? key, this.dataConfiguration})
      : super(key: key);

  @override
  _ConfigurationWidgetState createState() => _ConfigurationWidgetState();
}

class _ConfigurationWidgetState extends State<ConfigurationWidget> {
  @override
  Widget build(BuildContext context) {
    print("widget");
    // print(widget.dataConfiguration);
    return FutureBuilder(
        future: widget.dataConfiguration,
        builder: (context, AsyncSnapshot<dynamic> snapshot) {
          print(snapshot.data);
          // print(snapshot.data.length);
          return snapshot.hasData
              ? GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                  ),
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    print(snapshot.data);
                    var img =
                        snapshot.data['configurateur']['gamme'].toLowerCase();
                    return Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                    // color: Colors.orange,
                                    // margin: const EdgeInsets.all(25.0),
                                    // decoration: const BoxDecoration(
                                    //   border: Border(
                                    //     // top: BorderSide(color: Colors.black),
                                    //     bottom: BorderSide(),
                                    //   ),
                                    // ),
                                    child: Text(
                                  snapshot.data['configurateur']['gamme'],
                                  style: const TextStyle(
                                      fontFamily: "Forza", fontSize: 18),
                                ))),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                          height: 0,
                          indent: 0,
                          thickness: 1,
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                    // color: Colors.orange,
                                    // margin: const EdgeInsets.all(25.0),
                                    // decoration: const BoxDecoration(
                                    //   border: Border(
                                    //     // top: BorderSide(color: Colors.black),
                                    //     bottom: BorderSide(),
                                    //   ),
                                    // ),
                                    child: (Image.asset(
                                  "assets/images/$img.png",
                                  fit: BoxFit.scaleDown,
                                  height: 200,
                                  width: 200,
                                )))),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                          height: 0,
                          indent: 0,
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                    // color: Colors.orange,
                                    margin: const EdgeInsets.all(5.0),
                                    // decoration: const BoxDecoration(
                                    //   border: Border(
                                    //     // top: BorderSide(color: Colors.black),
                                    //     bottom: BorderSide(),
                                    //   ),
                                    // ),
                                    child: Text(
                                      snapshot.data['configurateur']['model'],
                                      style: const TextStyle(
                                          fontFamily: "Forza", fontSize: 20),
                                    ))),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                          height: 0,
                          indent: 0,
                          thickness: 2,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        snapshot.data['configurateur']['options']
                                    ['Intérieur'] !=
                                null
                            ? Row(
                                children: const [
                                  Text("Intérieur",
                                      style: TextStyle(
                                          fontFamily: "Forza", fontSize: 18))
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']
                                    ['Intérieur'] !=
                                null
                            ? Row(
                                children: [
                                  for (var item
                                      in snapshot.data['configurateur']
                                          ['options']['Intérieur'])
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                            margin: const EdgeInsets.all(5.0),
                                            child: Text(item['lib'],
                                                style: GoogleFonts.roboto(
                                                    textStyle: const TextStyle(
                                                        color:
                                                            Color(0xffb5c7a99),
                                                        fontSize: 14))))),
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']
                                    ['Hydraulique / Eléctrique'] !=
                                null
                            ? Row(
                                children: const [
                                  Text("Hydraulique / Eléctrique",
                                      style: TextStyle(
                                          fontFamily: "Forza", fontSize: 18))
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']
                                    ['Hydraulique / Eléctrique'] !=
                                null
                            ? Row(
                                children: [
                                  for (var item
                                      in snapshot.data['configurateur']
                                          ['options']['Intérieur'])
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                            margin: const EdgeInsets.all(5.0),
                                            child: Text(item['lib'],
                                                style: GoogleFonts.roboto(
                                                    textStyle: const TextStyle(
                                                        color:
                                                            Color(0xffb5c7a99),
                                                        fontSize: 14))))),
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']['Attelage'] !=
                                null
                            ? Row(
                                children: const [
                                  Text("Attelage",
                                      style: TextStyle(
                                          fontFamily: "Forza", fontSize: 18))
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']['Attelage'] !=
                                null
                            ? Row(
                                children: [
                                  for (var item
                                      in snapshot.data['configurateur']
                                          ['options']['Attelage'])
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                            margin: const EdgeInsets.all(5.0),
                                            child: Text(item['lib'],
                                                style: GoogleFonts.roboto(
                                                    textStyle: const TextStyle(
                                                        color:
                                                            Color(0xffb5c7a99),
                                                        fontSize: 14))))),
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']['Autres'] !=
                                null
                            ? Row(
                                children: const [
                                  Text("Autres",
                                      style: TextStyle(
                                          fontFamily: "Forza", fontSize: 18))
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']['Autres'] !=
                                null
                            ? Row(
                                children: [
                                  for (var item
                                      in snapshot.data['configurateur']
                                          ['options']['Autres'])
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                          margin: const EdgeInsets.all(10),
                                          child: RichText(
                                              text: TextSpan(
                                                  text: item['lib'],
                                                  style: GoogleFonts.roboto(
                                                      textStyle:
                                                          const TextStyle(
                                                              color: Color(
                                                                  0xffb5c7a99),
                                                              fontSize: 14)))),
                                        )),
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']
                                    ['Pneumatiques'] !=
                                null
                            ? Row(
                                children: const [
                                  Text("Pneumatiques",
                                      style: TextStyle(
                                          fontFamily: "Forza", fontSize: 18))
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']
                                    ['Pneumatiques'] !=
                                null
                            ? Row(
                                children: [
                                  for (var item
                                      in snapshot.data['configurateur']
                                          ['options']['Pneumatiques'])
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                            margin: const EdgeInsets.all(5.0),
                                            child: Text(item['lib'],
                                                style: GoogleFonts.roboto(
                                                    textStyle: const TextStyle(
                                                        color:
                                                            Color(0xffb5c7a99),
                                                        fontSize: 14))))),
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']
                                    ['Pneumatiques secours'] !=
                                null
                            ? Row(
                                children: const [
                                  Text("Pneumatiques secours",
                                      style: TextStyle(
                                          fontFamily: "Forza", fontSize: 18))
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']
                                    ['Pneumatiques secours'] !=
                                null
                            ? Row(
                                children: [
                                  for (var item
                                      in snapshot.data['configurateur']
                                          ['options']['Pneumatiques secours'])
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                            margin: const EdgeInsets.all(5.0),
                                            child: Text(item['lib'],
                                                style: GoogleFonts.roboto(
                                                    textStyle: const TextStyle(
                                                        color:
                                                            Color(0xffb5c7a99),
                                                        fontSize: 14))))),
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']['Fourches'] !=
                                null
                            ? Row(
                                children: const [
                                  Text("Fourches",
                                      style: TextStyle(
                                          fontFamily: "Forza", fontSize: 18))
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']['Fourches'] !=
                                null
                            ? Row(
                                children: [
                                  for (var item
                                      in snapshot.data['configurateur']
                                          ['options']['Fourches'])
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                            margin: const EdgeInsets.all(10),
                                            child: Text(item['lib'],
                                                style: GoogleFonts.roboto(
                                                    textStyle: const TextStyle(
                                                        color:
                                                            Color(0xffb5c7a99),
                                                        fontSize: 14))))),
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']['Godets'] !=
                                null
                            ? Row(
                                children: const [
                                  Text("Godets",
                                      style: TextStyle(
                                          fontFamily: "Forza", fontSize: 18))
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']['Godets'] !=
                                null
                            ? Row(
                                children: [
                                  for (var item
                                      in snapshot.data['configurateur']
                                          ['options']['Godets'])
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                            margin: const EdgeInsets.all(5.0),
                                            child: Text(item['lib'],
                                                style: GoogleFonts.roboto(
                                                    textStyle: const TextStyle(
                                                        color:
                                                            Color(0xffb5c7a99),
                                                        fontSize: 14))))),
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']
                                    ["Pièces d'usure pour godets"] !=
                                null
                            ? Row(
                                children: const [
                                  Text("Pièces d'usure pour godets",
                                      style: TextStyle(
                                          fontFamily: "Forza", fontSize: 18))
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']
                                    ["Pièces d'usure pour godets"] !=
                                null
                            ? Row(
                                children: [
                                  for (var item in snapshot
                                          .data['configurateur']['options']
                                      ["Pièces d'usure pour godets"])
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                            margin: const EdgeInsets.all(5.0),
                                            child: Text(item['lib'],
                                                style: GoogleFonts.roboto(
                                                    textStyle: const TextStyle(
                                                        color:
                                                            Color(0xffb5c7a99),
                                                        fontSize: 14))))),
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']
                                    ['Autres accessoires'] !=
                                null
                            ? Row(
                                children: const [
                                  Text("Autres accessoires",
                                      style: TextStyle(
                                          fontFamily: "Forza", fontSize: 18))
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']
                                    ['Autres accessoires'] !=
                                null
                            ? Row(
                                children: [
                                  for (var item
                                      in snapshot.data['configurateur']
                                          ['options']['Autres accessoires'])
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                            margin: const EdgeInsets.all(5.0),
                                            child: Text(item['lib'],
                                                style: GoogleFonts.roboto(
                                                    textStyle: const TextStyle(
                                                        color:
                                                            Color(0xffb5c7a99),
                                                        fontSize: 14))))),
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']['Nacelles'] !=
                                null
                            ? Row(
                                children: const [
                                  Text("Nacelles",
                                      style: TextStyle(
                                          fontFamily: "Forza", fontSize: 18))
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']['Nacelles'] !=
                                null
                            ? Row(
                                children: [
                                  for (var item
                                      in snapshot.data['configurateur']
                                          ['options']['Nacelles'])
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                            margin: const EdgeInsets.all(5.0),
                                            child: Text(item['lib'],
                                                style: GoogleFonts.roboto(
                                                    textStyle: const TextStyle(
                                                        color:
                                                            Color(0xffb5c7a99),
                                                        fontSize: 14))))),
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']['Services'] !=
                                null
                            ? Row(
                                children: const [
                                  Text("Services",
                                      style: TextStyle(
                                          fontFamily: "Forza", fontSize: 18))
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                        snapshot.data['configurateur']['options']['Services'] !=
                                null
                            ? Row(
                                children: [
                                  for (var item
                                      in snapshot.data['configurateur']
                                          ['options']['Services'])
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                            margin: const EdgeInsets.all(5.0),
                                            child: Text(
                                                _parseHtmlString(item['lib']),
                                                style: GoogleFonts.roboto(
                                                    textStyle: const TextStyle(
                                                        color:
                                                            Color(0xffb5c7a99),
                                                        fontSize: 14))))),
                                ],
                              )
                            : const Divider(
                                color: Colors.black,
                                height: 0,
                                indent: 0,
                                thickness: 1,
                              ),
                      ],
                    );
                  },
                )
              : const CircularProgressIndicator();
        });
  }
}
