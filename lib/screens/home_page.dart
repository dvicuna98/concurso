import 'package:accordion/accordion.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:consurso/themes/app_theme.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<int> imagesIds = [1,2,3];
  final List<String> titles = ['Curso Docker', 'Curso Programacion Basica', 'Javascript avanzado'];
  final Map<String, String> accordion={
  'title':'Logica Basica',
  'review':''
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home  page'),
      ),
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            SizedBox(
              height: 400,
              child: Swiper(
                itemBuilder: (BuildContext context,int index){
                  return
                    SwipperCard(
                        Url: 'https://picsum.photos/500/300?image=${imagesIds[index]}',
                      Title: titles[index],
                      header: 'Proximo curso',
                    );
                },
                itemCount: 3,
                pagination: new SwiperPagination(),
                control: new SwiperControl(),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric( horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Actualiza tu cuenta', style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pushNamed('planScreen');
                      },
                      child: const Text('Premiun'),
                    )
                  ],
                )
            ),
            Accordion(
              disableScrolling: true,
              maxOpenSections: 2,
                scaleWhenAnimating: true,
                children:[

                  AccordionSection(
                    isOpen: false,
                    leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
                    headerBackgroundColor: AppTheme.primary,
                    headerBackgroundColorOpened: AppTheme.primary,
                    header: const Text('Funciones Booleanas', style: TextStyle(color: Colors.white),),
                    content:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            child: const Text('Logica Basica'),
                            onPressed: (){},
                          ),
                          TextButton(
                            child: const Text('Tablas de verdad'),
                            onPressed: (){},
                          ),
                        ],
                    ),
                    contentHorizontalPadding: 20,
                    contentBorderWidth: 1,
                  ),

                  AccordionSection(
                    isOpen: false,
                    leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
                    headerBackgroundColor: AppTheme.primary,
                    headerBackgroundColorOpened: AppTheme.primary,
                    header: const Text('Circuitos Logicos', style: TextStyle(color: Colors.white),),
                    content:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          child: const Text('Compuertas Logicas'),
                          onPressed: (){},
                        ),
                        TextButton(
                          child: const Text('Conversion de circuitos a formas algebraicas'),
                          onPressed: (){},
                        ),
                        TextButton(
                          child: const Text('Algebra de Boole'),
                          onPressed: (){},
                        ),
                      ],
                    ),
                    contentHorizontalPadding: 20,
                    contentBorderWidth: 1,
                  ),

                  AccordionSection(
                    isOpen: false,
                    leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
                    headerBackgroundColor: AppTheme.primary,
                    headerBackgroundColorOpened: AppTheme.primary,
                    header: const Text('Algoritmos', style: TextStyle(color: Colors.white),),
                    content:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          child: const Text('Fundamentos de algoritmos'),
                          onPressed: (){},
                        ),
                        TextButton(
                          child: const Text('Representacion textual'),
                          onPressed: (){},
                        ),
                        TextButton(
                          child: const Text('Diagrama de flujo'),
                          onPressed: (){},
                        ),
                      ],
                    ),
                    contentHorizontalPadding: 20,
                    contentBorderWidth: 1,
                  ),

                  AccordionSection(
                    isOpen: false,
                    leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
                    headerBackgroundColor: AppTheme.primary,
                    headerBackgroundColorOpened: AppTheme.primary,
                    header: const Text('Estructuras de control', style: TextStyle(color: Colors.white),),
                    content:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          child: const Text('Variables y constantes'),
                          onPressed: (){},
                        ),
                        TextButton(
                          child: const Text('Condicionales'),
                          onPressed: (){},
                        ),
                        TextButton(
                          child: const Text('Operadores logicos'),
                          onPressed: (){},
                        ),
                        TextButton(
                          child: const Text('Ciclos'),
                          onPressed: (){},
                        ),
                      ],
                    ),
                    contentHorizontalPadding: 20,
                    contentBorderWidth: 1,
                  ),

                ]
            ),
          ],
        ),
      )
    );
  }
}

