import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CurrencyConvertedPage extends StatefulWidget {
  const CurrencyConvertedPage({
    super.key,
  });

  @override
  State<CurrencyConvertedPage> createState() => _CurrencyConvertedPageState();
}

class _CurrencyConvertedPageState extends State<CurrencyConvertedPage> {
  double amount = 0;
  double result = 0;

  void handleChange() {
    setState(() {
      result = amount * 15000;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Converter Currency',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Rp $result',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 33,
                    fontWeight: FontWeight.w700)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    amount = double.parse(value);
                  });
                },
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Please enter the amount of USD',
                    hintStyle: const TextStyle(color: Colors.black38),
                    prefixIcon: const Icon(Icons.monetization_on),
                    prefixIconColor: Colors.black,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () => handleChange(),
                style: TextButton.styleFrom(
                    minimumSize: const Size(double.infinity, 45),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                child: const Text("Ubah"),
              ),
            )
          ],
        ),
      )),
    );
  }
}
