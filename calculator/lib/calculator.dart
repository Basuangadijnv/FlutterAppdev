import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});
  @override
  State<Calculator> createState() => _Calculator();
}

class _Calculator extends State<Calculator> {
  List num = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '.', '0', 'x'];
  var text = TextEditingController();
  var ans = TextEditingController();
  var eq = '';
  TextButton numericbutton(String s) {
    return TextButton(
      onPressed: () {
        if (s == 'x') {
          if (text.text.isNotEmpty) {
            text.text = text.text.substring(0, text.text.length - 1);
          }
        } else if (s == '.') {
          dot();
        } else {
          text.text = '${text.text}$s';
        }
        ans.text = eval();
        setState(() {});
      },
      style: TextButton.styleFrom(
        elevation: 1,
        shadowColor: Colors.black12,
        backgroundColor: Colors.white,
      ),
      child: Text(
        s,
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 30,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }

  void dot() {
    if (text.text.isEmpty) {
      text.text = '0';
    }
    text.text = '${text.text}.';
    setState(() {});
  }

  TextButton getbutton(String s, f) {
    return TextButton(
      onPressed: f,
      style: TextButton.styleFrom(
        elevation: 1,
        shadowColor: Colors.black12,
        backgroundColor: Colors.lightBlue,
      ),
      child: Text(
        s,
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 30,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }

  void add() {
    eq = text.text;
    if (eq.isEmpty || eq[eq.length - 1].contains(RegExp(r'[0-9]'))) {
      text.text = '$eq+';
    } else {
      text.text = '${eq.substring(0, eq.length - 1)}+';
    }
    setState(() {});
  }

  void mult() {
    eq = text.text;
    if (eq.isEmpty || eq[eq.length - 1].contains(RegExp(r'[0-9]'))) {
      text.text = '${eq}X';
    } else {
      text.text = '${eq.substring(0, eq.length - 1)}X';
    }
    setState(() {});
  }

  void div() {
    eq = text.text;
    if (eq.isEmpty || eq[eq.length - 1].contains(RegExp(r'[0-9]'))) {
      text.text = '$eq/';
    } else {
      text.text = '${eq.substring(0, eq.length - 1)}/';
    }
    setState(() {});
  }

  void calc() {
    ans.text = eval();
    text.text = eval();
    setState(() {});
  }

  String eval() {
    eq = text.text;
    if (eq.isEmpty) {
      return '0';
    }
    eq = eq.replaceAll('X', '*');
    Parser p = Parser();
    Expression e;
    try {
      p.parse(eq);
    } catch (e) {
      text.text = text.text.substring(0, text.text.length - 1);
      eq = text.text;
    } finally {
      e = p.parse(eq);
    }
    double eval = e.evaluate(EvaluationType.REAL, ContextModel());
    String ans = eval.toString();
    return ans;
  }

  void sub() {
    eq = text.text;
    if (eq.isEmpty || eq[eq.length - 1].contains(RegExp(r'[0-9]'))) {
      text.text = '$eq-';
    } else {
      text.text = '${eq.substring(0, eq.length - 1)}-';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 100, 5, 5),
              child: TextField(
                readOnly: true,
                textDirection: TextDirection.rtl,
                controller: ans,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.black54,
                ),
                decoration: const InputDecoration(
                  hintText: '0',
                  hintStyle: TextStyle(
                    fontSize: 30,
                    color: Colors.black87,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(88, 48, 46, 46),
                      width: 0,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(150, 0, 0, 0),
                      width: 0,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(5, 15, 5, 5),
              child: TextField(
                readOnly: true,
                textDirection: TextDirection.ltr,
                controller: text,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  hintText: '0',
                  hintStyle: TextStyle(
                    fontSize: 30,
                    color: Colors.black87,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(88, 48, 46, 46),
                      width: 0.2,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(150, 0, 0, 0),
                      width: 0.2,
                    ),
                  ),
                ),
                onSubmitted: (value) {
                  setState(() {});
                },
                onChanged: (value) {
                  ans.text = eval();
                  setState(() {});
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 40,
                    top: 10,
                  ),
                  child: getbutton('+', add),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                    top: 10,
                  ),
                  child: getbutton('-', sub),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 40,
                    top: 10,
                  ),
                  child: getbutton('X', mult),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                    top: 10,
                  ),
                  child: getbutton('/', div),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 40,
                    top: 10,
                    bottom: 20,
                  ),
                  child: getbutton(
                    'C',
                    () {
                      text.text = '';
                      setState(() {});
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                    top: 10,
                    bottom: 20,
                  ),
                  child: getbutton('Calc', calc),
                ),
              ],
            ),
            for (int i = 0; i < 12;) ...{
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int j = 0; j < 3; j++, i++) ...{
                    Expanded(
                      child: numericbutton('${num[i]}'),
                    ),
                  }
                ],
              ),
            },
          ],
        ),
      ),
    );
  }
}
