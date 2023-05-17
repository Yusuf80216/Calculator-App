import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2f3740),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.07),
          Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03),
            child: Text("Calculator",
                style: TextStyle(color: Colors.white, fontSize: 40)),
          ),
          Column(children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                    color: Color(0xFF2f3740),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff2a313a),
                          spreadRadius: 8,
                          blurRadius: 7,
                          offset: Offset(0, 2))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, right: 8),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(equation,
                            style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(179, 255, 255, 255))),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Text(
                          result,
                          style: TextStyle(
                              fontSize: 40,
                              color: Color.fromARGB(219, 255, 255, 255)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              CustomButtons("AC", Color(0xffeb2a46),
                  Color.fromARGB(255, 224, 2, 36), Colors.white),
              CustomButtons("1/2", Color(0xff438cf3),
                  Color.fromARGB(255, 42, 110, 206), Colors.white),
              CustomButtons("%", Color(0xff438cf3),
                  Color.fromARGB(255, 42, 110, 206), Colors.white),
              CustomButtons("/", Color(0xff377f79),
                  Color.fromARGB(255, 33, 106, 100), Colors.white),
            ]),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              CustomButtons("9", Color(0xffededf0),
                  Color.fromARGB(255, 190, 190, 190), Color(0xff758bb6)),
              CustomButtons("8", Color(0xffededf0),
                  Color.fromARGB(255, 190, 190, 190), Color(0xff758bb6)),
              CustomButtons("7", Color(0xffededf0),
                  Color.fromARGB(255, 190, 190, 190), Color(0xff758bb6)),
              CustomButtons("x", Color(0xff377f79),
                  Color.fromARGB(255, 33, 106, 100), Colors.white),
            ]),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              CustomButtons("6", Color(0xffededf0),
                  Color.fromARGB(255, 190, 190, 190), Color(0xff758bb6)),
              CustomButtons("5", Color(0xffededf0),
                  Color.fromARGB(255, 190, 190, 190), Color(0xff758bb6)),
              CustomButtons("4", Color(0xffededf0),
                  Color.fromARGB(255, 190, 190, 190), Color(0xff758bb6)),
              CustomButtons("-", Color(0xff377f79),
                  Color.fromARGB(255, 33, 106, 100), Colors.white),
            ]),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              CustomButtons("3", Color(0xffededf0),
                  Color.fromARGB(255, 190, 190, 190), Color(0xff758bb6)),
              CustomButtons("2", Color(0xffededf0),
                  Color.fromARGB(255, 190, 190, 190), Color(0xff758bb6)),
              CustomButtons("1", Color(0xffededf0),
                  Color.fromARGB(255, 190, 190, 190), Color(0xff758bb6)),
              CustomButtons("+", Color(0xff377f79),
                  Color.fromARGB(255, 33, 106, 100), Colors.white),
            ]),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.46,
                height: 78,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Color(0xffededf0),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 33, 33, 33),
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: Offset(0, 0)),
                    ]),
                child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffededf0),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(108, 204, 204, 204),
                              blurRadius: 3,
                              spreadRadius: 1,
                              offset: Offset(0, 0)),
                          BoxShadow(
                              color: Color.fromARGB(255, 190, 190, 190),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: Offset(4, 4))
                        ]),
                    child: Center(
                        child: Text("0",
                            style: TextStyle(
                                color: Color(0xff758bb6),
                                fontSize: 30,
                                fontWeight: FontWeight.bold)))),
              ),
              CustomButtons(".", Color(0xffededf0),
                  Color.fromARGB(255, 190, 190, 190), Color(0xff758bb6)),
              CustomButtons("=", Color(0xfffad715),
                  Color.fromARGB(255, 201, 172, 7), Colors.white),
            ]),
          ]),
        ],
      ),
    );
  }

///////////////////////////////////////////////////////////////////////////////////////////

  String equation = "0";

  String result = "0";

  String expression = "";

  buttonPressed(String btnTxt) {
    setState(() {
      if (btnTxt == "AC") {
        equation = "0";
        result = "0";
      } else if (btnTxt == "=") {
        expression = equation;
        Parser p = new Parser();
        Expression exp = p.parse(expression);
        ContextModel cm = ContextModel();
        result = '${exp.evaluate(EvaluationType.REAL, cm)}';
      } else {
        if (equation == '0') {
          equation = btnTxt;
        } else {
          equation = equation + btnTxt;
        }
      }
    });
  }

  Widget CustomButtons(
      String btnTxt, Color btnColor, Color btnInnerShadow, Color txtColor) {
    return GestureDetector(
      onTap: () => {
        buttonPressed(btnTxt),
      },
      child: Container(
        width: 75,
        height: 78,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: btnColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 33, 33, 33),
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: Offset(0, 0)),
            ]),
        child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: btnColor,
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(108, 204, 204, 204),
                      blurRadius: 3,
                      spreadRadius: 1,
                      offset: Offset(0, 0)),
                  BoxShadow(
                      color: btnInnerShadow,
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(4, 4))
                ]),
            child: Center(
                child: Text(btnTxt,
                    style: TextStyle(
                        color: txtColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)))),
      ),
    );
  }
}
