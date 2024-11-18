import 'package:flutter/material.dart';
import 'package:jornada_getx/widgets/custom_app_bar.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Pagina 1'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Conteúdo da Página 1',
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
