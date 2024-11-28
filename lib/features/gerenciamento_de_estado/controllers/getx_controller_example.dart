import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/controllers/controller.dart';

class GetxControllerExample extends StatefulWidget {
  const GetxControllerExample({super.key});

  @override
  State<GetxControllerExample> createState() => _GetxControllerExampleState();
}

class _GetxControllerExampleState extends State<GetxControllerExample> {
  @override
  void dispose() {
    print('Dispose do GetxControllerExample');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Build GetxControllerExample');
    return Scaffold(
      appBar: CustomAppBar(title: 'GetX Controller'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () {
                return Text(Get.find<Controller>().nome.value);
              },
            ),
            CustomElevatedButton(
              texto: 'Alterar nome',
              onPressed: () {
                Get.find<Controller>().alterarNome();
              },
            ),
          ],
        ),
      ),
    );
  }
}
