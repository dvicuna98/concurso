import 'package:flutter/material.dart';

class SwipperCard extends StatelessWidget {
  final String? header;
  final String Url;
  final String Title;
  const SwipperCard({
    Key? key,
    required this.Url,
    required this.Title, this.header = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Stack(
        children: [
          SizedBox(
            height: 400,
            child:Image.network(Url,fit: BoxFit.cover,),
          ),
           Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 10),
              child: Text(header!, style:const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
              ),
            ),
          ),
           Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40, left: 20),
              child: Text(Title, style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}