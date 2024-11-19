import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';
import 'package:jornada_getx/features/gerenciamento_de_rotas/await_parametros/page1.dart';

class AwaitParametros extends StatelessWidget {
  const AwaitParametros({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Await Parâmetros'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              texto: 'Ir para a Página 1',
              onPressed: () async {
                final result = await Get.to(() => Page1());
                debugPrint(result);
              },
            ),
          ],
        ),
      ),
    );
  }
}
