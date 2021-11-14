import 'package:flutter/material.dart';
import 'package:mybank/screens/transferencia/lista.dart';

void main() => runApp(const MyBankApp());

class MyBankApp extends StatelessWidget {
  const MyBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.amber,
        ).copyWith(
          secondary: Colors.indigoAccent[900],
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.indigoAccent[900],
          textTheme: ButtonTextTheme.accent,
        ),
      ),
      home: ListaTransferencias(),
    );
  }
}