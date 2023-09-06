import 'package:flutter/material.dart';

class CurConverter extends StatefulWidget {
  const CurConverter({super.key});
  @override
  State<CurConverter> createState() => _CurConverter();
}

class _CurConverter extends State<CurConverter> {
  @override
  void initState() {
    super.initState();
  }

  var textvalue = TextEditingController();
  final dolinrup = 81.2;
  double dollars = 0;
  double result = 0;
  void dollartorupee() {
    if (textvalue.text.isEmpty) {
      dollars = 0;
    } else {
      dollars = double.parse(textvalue.text);
    }
    result = dollars * dolinrup;

    setState(
      () => {},
    );
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2,
      ),
      borderRadius: BorderRadius.circular(10),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'CURRENCY CONVERTER',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 30,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.cyan.shade100,
      ),
      backgroundColor: Colors.cyan.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'AMOUNT :',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 30,
                color: Color.fromARGB(255, 0, 110, 255),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: TextField(
                controller: textvalue,
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  hintText: 'Enter the Amount in USD',
                  hintStyle: const TextStyle(
                    color: Colors.black45,
                  ),
                  prefixIcon: const Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.black,
                  ),
                  enabledBorder: border,
                  focusedBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                onEditingComplete: dollartorupee,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: TextButton(
                onPressed: dollartorupee,
                style: TextButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: const Color.fromRGBO(0, 89, 255, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Convert',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Text(
              'INR $result',
              style: const TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.w600,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
