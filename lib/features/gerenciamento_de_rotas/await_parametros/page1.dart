import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Await Parâmetros - Página 1'),
      body: Center(
          child: Column(
        children: [
          CustomElevatedButton(
            texto: 'Voltar uma página',
            onPressed: () {
              Get.back(result: 'Voltando o parametro legal rsrs');
            },
          ),
        ],
      )),
    );
  }
}
