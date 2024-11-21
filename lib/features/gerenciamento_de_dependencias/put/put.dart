import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/put/put_controller.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/put/put_controller_permanent.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/put/put_controller_tag.dart';

class Put extends StatefulWidget {
  const Put({super.key});

  @override
  State<Put> createState() => _PutState();
}

class _PutState extends State<Put> {
  // Instanciando os controllers
  final controller = Get.put(PutController());
  final controllerPermanent =
      Get.put(PutControllerPermanent(), permanent: true);
  final controllerTag = Get.put(PutControllerTag(), tag: 'nome');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Put'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'O Put irá criar uma instância normal do controller e irá apagar da memória ao fechar a tela.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 12),
            Container(
              color: const Color.fromARGB(255, 155, 208, 252),
              child: Text(
                'Get.put(): ${controller.timestamp}',
              ),
            ),
            SizedBox(height: 36),
            Text(
              'O Put com o permanent: true irá criar uma instância normal do controller mas manterá enquanto o app estiver funcionando',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 12),
            Container(
              color: const Color.fromARGB(255, 155, 208, 252),
              child: Text(
                'Get.put() com permanent: ${controllerPermanent.timestamp}',
              ),
            ),
            SizedBox(height: 36),
            Text(
              'O Put normal mas com tag',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 12),
            Container(
              color: const Color.fromARGB(255, 155, 208, 252),
              child: Text(
                'Get.put() com tag: ${Get.find<PutControllerTag>(tag: 'nome').texto}',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
