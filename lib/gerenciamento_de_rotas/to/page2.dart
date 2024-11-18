import 'package:flutter/material.dart';
import 'package:jornada_getx/widgets/custom_app_bar.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Página 2'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
