import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/gerenciamento_de_rotas/offAll/page4.dart';

import '../../core/widgets/custom_elevated_button.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'OffAll - Página 3'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
                texto: 'Ir para a Página 4',
                onPressed: () {
                  Get.offAll(() => Page4(),
                      predicate: ModalRoute.withName('/rotas_home_page'));
                })
          ],
        ),
      ),
    );
  }
}
