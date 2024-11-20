import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';

class DependenciasHomePage extends StatelessWidget {
  const DependenciasHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '3 - Gerenciamento de Dependências'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              texto: '1 - Conceito',
              onPressed: () {
                Get.toNamed('/dependencias_home_page/conceito');
              },
            ),
          ],
        ),
      ),
    );
  }
}