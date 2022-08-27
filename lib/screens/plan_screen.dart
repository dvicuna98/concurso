import 'package:accordion/accordion.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../themes/app_theme.dart';
import '../widgets/widgets.dart';

class PlanScreen extends StatelessWidget {
  const PlanScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final List<int> imagesIds = [1,2];
    final List<String> titles = ['Plan premiun', 'Plan basic'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Planes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 400,
              child: Swiper(
                itemBuilder: (BuildContext context,int index){
                  return
                    SwipperCard(
                      Url: 'https://picsum.photos/500/300?image=${imagesIds[index]}',
                      Title: titles[index],
                    );
                },
                itemCount: 2,
                pagination: new SwiperPagination(),
                control: new SwiperControl(),
              ),
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
                    header: const Text('Basico', style: TextStyle(color: Colors.white),),
                    content: const Text('Beneficios'),
                    contentHorizontalPadding: 20,
                    contentBorderWidth: 1,
                  ),

                  AccordionSection(
                    isOpen: false,
                    leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
                    headerBackgroundColor: AppTheme.primary,
                    headerBackgroundColorOpened: AppTheme.primary,
                    header: const Text('Premiun', style: TextStyle(color: Colors.white),),
                    content: Text('Beneficios'),
                    contentHorizontalPadding: 20,
                    contentBorderWidth: 1,
                  ),

                ]
            ),
          ],
        ),

      ),
    );
  }
}
