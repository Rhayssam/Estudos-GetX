import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/delete-update/delete_controller.dart';

class Delete extends StatefulWidget {
  @override
  State<Delete> createState() => _DeleteState();
}

class _DeleteState extends State<Delete> {
  String nome = '';

  @override
  void dispose() {
    Get.delete<DeleteController>(force: true);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Delete'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(nome),
            CustomElevatedButton(
              texto: 'Buscar nome',
              onPressed: () {
                setState(() {
                  nome = Get.find<DeleteController>().nome;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
