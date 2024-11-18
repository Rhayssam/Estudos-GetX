import 'package:flutter/material.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'To - Página 2'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Get.to()',
              style: TextStyle(
                fontSize: 32.0,
              ),
            ),
            Text(
              'Conteúdo da Página 2',
              style: TextStyle(
                fontSize: 32.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
