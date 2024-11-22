import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/delete-update/delete_controller.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/delete-update/update_controller.dart';

class Update extends StatefulWidget {
  Update({super.key}) {
    Get.put(UpdateController(nome: 'Inicio'));
    Get.put(DeleteController(nome: 'Inicio'), permanent: true);
  }

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  String nome = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Update'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(nome),
            CustomElevatedButton(
              texto: 'Buscar nome',
              onPressed: () {
                setState(() {
                  nome = Get.find<UpdateController>().nome;
                });
              },
            ),
            CustomElevatedButton(
              texto: 'Alterar Instance',
              onPressed: () {
                setState(() {
                  Get.replace(UpdateController(nome: 'Alterado'));
                });
              },
            ),
            CustomElevatedButton(
              texto: 'Remover Instance',
              onPressed: () {
                setState(() {
                  Get.delete<UpdateController>();
                });
              },
            ),
            CustomElevatedButton(
              texto: 'Ir para a página Delete',
              onPressed: () {
                Get.offNamed('/dependencias_home_page/update/delete');
              },
            ),
          ],
        ),
      ),
    );
  }
}
