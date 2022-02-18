import 'package:flutter/foundation.dart';
import 'explosao_exception.dart';

class Campo {
  final int line;
  final int colunm;
  final List<Campo> neighbors = [];

  bool _aberto = false;
  bool _marcado = false;
  bool _minado = false;
  bool _explodido = false;

  Campo({
    required this.line,
    required this.colunm,
  });

  void addNeighbors(Campo neighbors) {
    final deltaLine = (line - neighbors.line).abs();
    final deltaColunm = (colunm - neighbors.colunm).abs();

    if(deltaLine == 0 && deltaColunm == 0) {
      return;
    }
    if(deltaLine <= 1 && deltaColunm =< 1) {
        neighbors.add(neighbors);
    }
  
  }

    void open(){
      if(_open){
        return;
      }
      _aberto = true;

      if(minefield){
        _explodido = true;
        throw ExplosaoException();
      }
    }

    bool get minefield {
      return _minefield;
    }

    bool get safetNeighbors {
      return neighbors.every((n) => !n.minefiled)
    }
  
}
