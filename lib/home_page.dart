import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Home Page'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              texto: '1 - Gerenciamento de Rotas',
              onPressed: () {
                Get.toNamed('/rotas_home_page');
              },
            ),
            CustomElevatedButton(
              texto: '2 - Rotas Nomeadas',
              onPressed: () {
                Get.toNamed('/rotas_nomeadas_home_page');
              },
            ),
            CustomElevatedButton(
              texto: '3 - Gerenciamento de Dependências',
              onPressed: () {
                Get.toNamed('/dependencias_home_page');
              },
            ),
          ],
        ),
      ),
    );
  }
}
