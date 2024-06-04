import 'package:flutter/material.dart';

class med_info {
  String? _nome;
  String? _cpf_medico;
  String? _local;
  String? _especialidades;

  String get nome => _nome!;

  set nome(String value) {
    _nome = value;
  }

  String get cpf_medico => _cpf_medico!;

  set cpf_medico(String value) {
    _cpf_medico = value;
  }

  String get local => _local!;

  set local(String value) {
    _local = value;
  }

  String get especialidades => _especialidades!;

  set especialidades(String value) {
    _especialidades = value;
  }
}
