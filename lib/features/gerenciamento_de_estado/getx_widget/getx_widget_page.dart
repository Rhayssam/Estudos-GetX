import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/getx_widget/getx_widget_controller.dart';

class GetxWidgetPage extends StatelessWidget {
  const GetxWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '8 - GetX Widget'),
      body: Center(
        child: GetX<GetxWidgetController>(
          init: GetxWidgetController(),
          builder: (controller) {
            return Column(
              children: [
                Text(controller.nome),
                CustomElevatedButton(texto: 'Alterar nome', onPressed: () {})
              ],
            );
          },
        ),
      ),
    );
  }
}
