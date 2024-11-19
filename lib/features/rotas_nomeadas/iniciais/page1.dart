import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    String rota = '/rotas_nomeadas_home_page/iniciais';
    return Scaffold(
      appBar: CustomAppBar(title: 'Iniciais - Página 1'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              texto: 'Acessar Página 2',
              onPressed: () {
                Get.toNamed('$rota/page2');
              },
            ),
          ],
        ),
      ),
    );
  }
}
