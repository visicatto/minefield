import 'package:flutter/material.dart';
import '../components/resultado_widget.dart';
import '../components/campo_widget.dart';
import '../models/campo.dart';

class CampoMinadoApp extends StatelessWidget {
  const CampoMinadoApp({Key? key}) : super(key: key);

  void _reiniciar() {}

  void _abrir(Campo campo) {}

  void _alterarMarcacao(Campo campo) {}

  @override
  Widget build(BuildContext context) {
    Campo campo = Campo(linha: 0, coluna: 0);
    return MaterialApp(
      home: Scaffold(
        appBar: ResultadoWidget(
          venceu: true,
          onRestart: _reiniciar,
        ),
        body: Container(
            child: CampoWidget(
          campo: campo,
          onAbrir: _abrir,
          onAlterarMarcacao: _alterarMarcacao,
        )),
      ),
    );
  }
}
