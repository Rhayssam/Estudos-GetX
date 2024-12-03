import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/stateMixin/home_controller.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/stateMixin/home_controller_state_mixin.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/stateMixin/models/cep_model.dart';

class StateMixinPage extends StatelessWidget {
  // final controller = Get.find<HomeController>();
  final controller = Get.find<HomeControllerStateMixin>();
  StateMixinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'State Mixin'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Buscar endereço por CEP'),
            TextFormField(
              onChanged: (value) {
                controller.cepSearch = value;
              },
            ),
            CustomElevatedButton(
              texto: 'Buscar',
              onPressed: () {
                controller.findAddress();
              },
            ),
            const SizedBox(
              height: 20,
            ),
            controller.obx(
              (state) => CepWidget(state),
              onEmpty: Text('Nenhum CEP encontrado'),
              onLoading: Text('Carregando'),
              onError: (error) => Text('Erro ao buscar CEP'),
            ),

            // Obx(
            //   () {
            //     return Visibility(
            //       visible: controller.loading,
            //       child: Center(
            //         child: CircularProgressIndicator(),
            //       ),
            //     );
            //   },
            // ),
            // Obx(
            //   () => Visibility(
            //     visible: controller.isError,
            //     child: Text('Erro ao buscar CEP'),
            //   ),
            // ),
            // Obx(
            //   () {
            //     return Visibility(
            //       visible: !controller.loading,
            //       child: CepWidget(controller.cep),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

class CepWidget extends StatelessWidget {
  CepModel? cepModel;
  CepWidget(this.cepModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('CEP: ${cepModel?.cep ?? ''}'),
        Text('Cidade: ${cepModel?.cidade ?? ''}'),
        Text('Rua: ${cepModel?.logradouro ?? ''}'),
        Text('UF: ${cepModel?.uf ?? ''}'),
      ],
    );
  }
}
