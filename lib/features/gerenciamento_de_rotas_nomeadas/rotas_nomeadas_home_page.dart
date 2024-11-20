import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';

class RotasNomeadasHomePage extends StatelessWidget {
  const RotasNomeadasHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '2 - Rotas Nomeadas'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              texto: 'Iniciais',
              onPressed: () {
                Get.toNamed('/rotas_nomeadas_home_page/iniciais');
              },
            )
          ],
        ),
      ),
    );
  }
}
