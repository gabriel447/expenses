import 'package:flutter/foundation.dart';

class Transaction {
  final String id;
  final String title;
  final double value;
  final DateTime date;

  Transaction({
    required this.id,
    required this.title,
    required this.value,
    required this.date,
  });
}

// {} para atributos nomeados
// para atributos obrigatoriso importar foundation e usar @required
// nas versão novas não precisa importar, é só colocar o required sem o @
