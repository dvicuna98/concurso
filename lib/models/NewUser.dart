import 'package:flutter/material.dart';

class NewUser {

  final String? uid;
  final String nombre;
  final String apellido;
  final String correo;
  final String password;
  final String tipo;

  NewUser({
    required this.nombre,
    required this.apellido,
    required this.correo,
    required this.password,
    required this.tipo,
    this.uid
  });

  NewUser.fromSnapshot(String uid, Map<String, dynamic> usuario)
  : uid = uid,
  nombre = usuario['nombre'],
  apellido = usuario['apellido'],
  correo = usuario['correo'],
  password = usuario['password'],
  tipo = usuario['tipo'];

  Map<String, dynamic> toMap() => {
    'uid': uid,
    'nombre': nombre,
    'apellido': apellido,
    'correo': correo,
    'password': password,
    'tipo': tipo,
  };

 /* @override
  String toString() {
    return 'Usuario{uid: $uid, nombre: $nombre, apellido: $apellido, correo: $correo, password:$password , tipo: $tipo}';
  }*/
}
