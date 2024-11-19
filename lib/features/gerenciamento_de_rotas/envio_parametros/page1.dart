import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    final parametro = Get.arguments;
    return Scaffold(
      appBar: CustomAppBar(title: 'Envio de parâmetros - Página 1'),
      body: Center(
        child: Column(
          children: [
            Text(
                'Olá mundo! Este é o parâmetro enviado pela página anterior: '),
            Text(
              parametro,
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
