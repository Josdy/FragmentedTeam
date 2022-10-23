import 'package:all_inclusive/main.dart';
import 'package:flutter/material.dart'
    show
        Alignment,
        BorderRadius,
        BoxDecoration,
        BoxShadow,
        BoxShape,
        BuildContext,
        ButtonStyle,
        Color,
        Colors,
        Column,
        Container,
        EdgeInsets,
        Expanded,
        FontWeight,
        Icon,
        Icons,
        Key,
        MainAxisAlignment,
        MainAxisSize,
        MaterialPageRoute,
        MaterialStateProperty,
        MediaQuery,
        Navigator,
        Offset,
        Radius,
        Row,
        Scaffold,
        Size,
        State,
        StatefulWidget,
        StatelessWidget,
        Text,
        TextButton,
        TextStyle,
        Widget;
import 'package:flutter_svg/flutter_svg.dart';

class PasswordView extends StatefulWidget {
  @override
  _PasswordViewState createState() => _PasswordViewState();
}

class _PasswordViewState extends State<PasswordView> {
  var selectedindex = 0;
  String numberPressed = '';
  String code = '';
  List<Color> colores = [
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black
  ];

  Color color_componente = Colors.black;
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w500,
      color: Colors.transparent,
    );
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print("Code is $code");
    return Scaffold(
      backgroundColor: Colors.black.withBlue(40),
      body: Column(
        children: [
          Container(
              height: height * 1,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DigitHolder(
                              width: width,
                              index: 0,
                              selectedIndex: selectedindex,
                              code: code,
                              key: null,
                              numberPressed: numberPressed,
                              color_componente: colores[0],
                            ),
                            DigitHolder(
                              width: width,
                              index: 1,
                              selectedIndex: selectedindex,
                              code: code,
                              numberPressed: numberPressed,
                              color_componente: colores[1],
                            ),
                            DigitHolder(
                              width: width,
                              index: 2,
                              selectedIndex: selectedindex,
                              code: code,
                              numberPressed: numberPressed,
                              color_componente: colores[2],
                            ),
                            DigitHolder(
                              width: width,
                              index: 3,
                              selectedIndex: selectedindex,
                              code: code,
                              numberPressed: numberPressed,
                              color_componente: colores[3],
                            ),
                          ],
                        )),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.red),
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(
                                                // width : double.maxFinite
                                                // height: 56.0
                                                const Size(
                                                    double.maxFinite, 140.0),
                                              )),
                                          onPressed: () {
                                            addDigit(1);
                                          },
                                          child: Text(
                                            'Rojo',
                                            style: textStyle,
                                          )),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.grey),
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(
                                                // width : double.maxFinite
                                                // height: 56.0
                                                const Size(
                                                    double.maxFinite, 140.0),
                                              )),
                                          onPressed: () {
                                            addDigit(2);
                                          },
                                          child:
                                              Text('Plomo', style: textStyle)),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.purple),
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(
                                                // width : double.maxFinite
                                                // height: 56.0
                                                const Size(
                                                    double.maxFinite, 140.0),
                                              )),
                                          onPressed: () {
                                            addDigit(3);
                                          },
                                          child:
                                              Text('Lila', style: textStyle)),
                                    ),
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.blue),
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(
                                                // width : double.maxFinite
                                                // height: 56.0
                                                const Size(
                                                    double.maxFinite, 140.0),
                                              )),
                                          onPressed: () {
                                            addDigit(4);
                                          },
                                          child:
                                              Text('Azul', style: textStyle)),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.green),
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(
                                                // width : double.maxFinite
                                                // height: 56.0
                                                const Size(
                                                    double.maxFinite, 140.0),
                                              )),
                                          onPressed: () {
                                            addDigit(5);
                                          },
                                          child:
                                              Text('Verde', style: textStyle)),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.brown),
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(
                                                // width : double.maxFinite
                                                // height: 56.0
                                                const Size(
                                                    double.maxFinite, 140.0),
                                              )),
                                          onPressed: () {
                                            addDigit(6);
                                          },
                                          child:
                                              Text('Marrón', style: textStyle)),
                                    ),
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.yellow),
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(
                                                // width : double.maxFinite
                                                // height: 56.0
                                                const Size(
                                                    double.maxFinite, 140.0),
                                              )),
                                          onPressed: () {
                                            addDigit(7);
                                          },
                                          child: Text('Amarillo',
                                              style: textStyle)),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.deepPurpleAccent),
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(
                                                // width : double.maxFinite
                                                // height: 56.0
                                                const Size(
                                                    double.maxFinite, 140.0),
                                              )),
                                          onPressed: () {
                                            addDigit(8);
                                          },
                                          child:
                                              Text('Morado', style: textStyle)),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.orange),
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(
                                                // width : double.maxFinite
                                                // height: 56.0
                                                const Size(
                                                    double.maxFinite, 140.0),
                                              )),
                                          onPressed: () {
                                            addDigit(9);
                                          },
                                          child: Text('Naranja',
                                              style: textStyle)),
                                    ),
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: TextButton(
                                        style: ButtonStyle(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                          // width : double.maxFinite
                                          // height: 56.0
                                          const Size(double.maxFinite, 140.0),
                                        )),
                                        onPressed: () {
                                          backspace();
                                        },
                                        child: Icon(Icons.backspace_outlined,
                                            color: Colors.black.withBlue(40),
                                            semanticLabel: "Borrar",
                                            size: 120),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.lightBlue),
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(
                                                // width : double.maxFinite
                                                // height: 56.0
                                                const Size(
                                                    double.maxFinite, 140.0),
                                              )),
                                          onPressed: () {
                                            addDigit(0);
                                          },
                                          child: Text('Celeste',
                                              style: textStyle)),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: TextButton(
                                          style: ButtonStyle(
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(
                                            // width : double.maxFinite
                                            // height: 56.0
                                            const Size(double.maxFinite, 140.0),
                                          )),
                                          onPressed: () {
                                            open_loading();
                                          },
                                          child: Icon(Icons.check,
                                              color: Colors.black.withBlue(40),
                                              size: 140,
                                              semanticLabel: "Confirmar")),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }

  addDigit(int digit) {
    if (code.length > 3) {
      return;
    }
    setState(() {
      code = code + digit.toString();
      print('Code is $code');
      selectedindex = code.length;
      numberPressed = digit.toString();
      //color_componente = definirColor(numberPressed);
      colores[selectedindex - 1] = definirColor(numberPressed);
      print("colores" + colores.toString());

      print("numberPressed is $numberPressed");
      print("color_componente is " + color_componente.toString());
    });
  }

  open_loading() {
    if (code.length == 4) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ThirdRoute()),
      );
    } else {
      return;
    }
  }

  backspace() {
    if (code.length == 0) {
      return;
    }
    setState(() {
      code = code.substring(0, code.length - 1);
      selectedindex = code.length;
    });
  }
}

class DigitHolder extends StatelessWidget {
  final int selectedIndex;
  final int index;
  final String code;
  final String numberPressed;
  final Color color_componente;
  const DigitHolder(
      {required this.selectedIndex,
      Key? key,
      required this.width,
      required this.index,
      required this.code,
      required this.numberPressed,
      required this.color_componente})
      : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: width * 0.17,
      width: width * 0.17,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: index == selectedIndex ? Colors.blue : Colors.transparent,
              offset: Offset(0, 0),
              spreadRadius: 1.5,
              blurRadius: 2,
            )
          ]),
      child: code.length > index
          ? Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: color_componente,
                shape: BoxShape.circle,
              ),
            )
          : Container(),
    );
  }
}

definirColor(String number) {
  switch (number) {
    case "1":
      print('1!');
      return Colors.red;
      break;

    case "2":
      print('2!');
      return Colors.grey;
      break;

    case "3":
      print('3!');
      return Colors.purple;
      break;
    case "4":
      print('4!');
      return Colors.blue;
      break;
    case "5":
      print('5!');
      return Colors.green;
      break;
    case "6":
      print('6!');
      return Colors.brown;
      break;
    case "7":
      print('7!');
      return Colors.yellow;
      break;

    case "8":
      print('8!');
      return Colors.deepPurpleAccent;
      break;
    case "9":
      print('9!');
      return Colors.orange;
      break;

    case "0":
      print('0!');
      return Colors.lightBlue;
      break;

    default:
      return Colors.black;
      print('choose a different number!');
  }
}
