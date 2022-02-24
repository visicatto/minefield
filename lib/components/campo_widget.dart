import 'package:flutter/material.dart';

import '../models/campo.dart';

class CampoWidget extends StatelessWidget {
  const CampoWidget(
      {Key? key,
      required this.campo,
      required this.onAbrir,
      required this.onAlterarMarcacao})
      : super(key: key);

  final Campo campo;
  final Function(Campo) onAbrir;
  final Function(Campo) onAlterarMarcacao;

  Widget _getImage() {
    int qtdeMinas = campo.qtdeMinasNaVizinhanca;
    if (campo.aberto && campo.minado && campo.explodido) {
      return Image.asset('assets/images/bomba_0.jpeg');
    } else if (campo.aberto && campo.minado) {
      return Image.asset('assets/images/bomba_1.jpeg');
    } else if (campo.aberto && qtdeMinas > 0) {
      return Image.asset('assets/images/aberto_$qtdeMinas.jpeg');
    } else if (campo.aberto) {
      return Image.asset('assets/images/aberto_0.jpeg');
    } else {
      return Image.asset('assets/images/fechado.jpeg');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onAbrir(campo),
      onLongPress: () => onAlterarMarcacao(campo),
      child: _getImage(),
    );
  }
}
