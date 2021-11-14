import 'package:flutter/material.dart';
import 'package:mybank/components/editor.dart';
import 'package:mybank/models/transferencia.dart';

const _tituloAppBar = "Criando transferência";

const _rotuloName = "Nome Titular";
const _dicaName = "José Silva";
const _rotuloCampoValor = "Valor";
const _dicaCampoValor = "0.00";

const _rotuloCampoNumeroConta = "Número da conta";
const _dicaCampoNumeroConta = "0000";
const _textoBotaoConfirmar = "Confirmar";

class FormularioTransferencia extends StatefulWidget {
  const FormularioTransferencia({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return FormularrioTransferenciaState();
  }
}

class FormularrioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerAccountNumber =
      TextEditingController();
  final TextEditingController _controllerValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
              controller: _controllerName,
              label: _rotuloName,
              tip: _dicaName,
              icon: Icons.person,
            ),
            Editor(
              controller: _controllerAccountNumber,
              label: _rotuloCampoNumeroConta,
              tip: _dicaCampoNumeroConta,
              icon: Icons.forum,
            ),
            Editor(
                controller: _controllerValue,
                label: _rotuloCampoValor,
                tip: _dicaCampoValor,
                icon: Icons.monetization_on_outlined),
            ElevatedButton(
              onPressed: () => _criarTransferencia(context),
              child: const Text(_textoBotaoConfirmar),
            ),
          ],
        ),
      ),
    );
  }

  void _criarTransferencia(BuildContext context) {
    final String name = _controllerName.text;
    final int? numeroConta = int.tryParse(_controllerAccountNumber.text);
    final double? valor = double.tryParse(_controllerValue.text);
    if (numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(name, valor, numeroConta);
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
