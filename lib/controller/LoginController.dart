import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:consurso/models/NewUser.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class LoginController {

  late BuildContext context;
  LoginController(this.context);


  void Login (String correo, String password) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: correo.trim(), password: password).then((value) =>
        Navigator.of(context).pushReplacementNamed('/home')).catchError((error)=> {print(error.toString())});
  }

  void Register(String password, String nombre, String apellido, String correo, String tipo) async {
    late NewUser item;
    FirebaseAuth auth = FirebaseAuth.instance;
    auth.createUserWithEmailAndPassword(email: correo, password: password).then((value) =>
    {
      item = NewUser(nombre: nombre, apellido: apellido, correo: correo, password: password, tipo: tipo),
      FirebaseFirestore.instance.collection('Users').doc(value.user!.uid).set(item.toMap())
    }).whenComplete(() => Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false));
  }

  void Logout() async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacementNamed('/login');

  }
}