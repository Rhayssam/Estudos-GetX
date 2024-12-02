import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/getBuilder/get_builder_controller.dart';

class GetBuilderPage extends StatelessWidget {
  const GetBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Get Builder'),
      body: Center(
        child: GetBuilder<GetBuilderController>(builder: (controller) {
          debugPrint('------ GetBuilder ------');
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(controller.nome),
              GetBuilder<GetBuilderController>(
                builder: (controller) {
                  debugPrint('------ GetBuilder do Contador ------');
                  return Text(controller.contador.toString());
                },
              ),
              CustomElevatedButton(
                texto: 'Alterar Nome',
                onPressed: () {
                  controller.alterarNome();
                },
              ),
              CustomElevatedButton(
                texto: 'Incrementar',
                onPressed: () {
                  controller.increment();
                },
              ),
            ],
          );
        }),
      ),
    );
  }
}
