import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Review'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:const [
            Text('Tema'),
            Text('Ejercicio'),
            Text('Refuerzo')
          ],
        ),
      ),
    );
  }
}
