import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/atualizacao/carro_model.dart';

class AtualizacaoObjetos extends StatelessWidget {
  final carro = Carro(
    id: 1,
    marca: 'Renault',
    modelo: 'Logan',
  ).obs;

  AtualizacaoObjetos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '6 - Atualização de Objetos'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () {
                return Text(carro.value.id.toString());
              },
            ),
            Obx(
              () {
                return Text(carro.value.marca);
              },
            ),
            Obx(
              () {
                return Text(carro.value.modelo);
              },
            ),
            CustomElevatedButton(
              texto: 'Atualizar com o refresh',
              onPressed: () {
                carro.value.marca = 'Honda';
                carro.value.modelo = 'Civic';
                carro.refresh();
              },
            ),
            CustomElevatedButton(
              texto: 'Atualizar com o copyWith',
              onPressed: () {
                carro.value = carro.value.copyWith(marca: 'Ford');
                carro.value = carro.value.copyWith(modelo: 'Fiesta');
              },
            ),
            CustomElevatedButton(
              texto: 'Usando o Update',
              onPressed: () {
                carro.update((carro) {
                  carro?.marca = 'Tesla com update';
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
