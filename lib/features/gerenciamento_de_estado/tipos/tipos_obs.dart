import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/tipos/model/carro.dart';

//! Para tipos genéricos, usar o .value

class TiposObs extends StatelessWidget {
  final nome = 'Rhayssam'.obs;
  final idade = 21.obs;
  final isActive = true.obs;
  final valor = 20.0.obs;
  final cursos = ['GetX', 'Youtube'].obs;

  final ficha = {
    'id': 1,
    'nome': 'Rhayssam',
    'nick': 'rhaydev',
  }.obs;

  final carroModel = Carro(id: 1, marca: 'Porsche', modelo: 'GT2').obs;

  TiposObs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '5 - Tipos OBS'),
      body: Center(
        child: Column(
          children: [
            Text('${ficha['id']}'),
            Obx(
              () => Text('${ficha['nome']}'),
            ),
            Text('${ficha['nick']}'),
            Obx(
              () {
                return Column(
                  children: cursos.map(Text.new).toList(),
                );
              },
            ),
            //* Mostrando na tela informações da classe carro
            Obx(
              () {
                return Text('Id do carro: ${carroModel.value.id}');
              },
            ),
            Obx(
              () {
                return Text('Marca do carro: ${carroModel.value.marca}');
              },
            ),
            Obx(
              () {
                return Text('Modelo do carro: ${carroModel.value.modelo}');
              },
            ),
            CustomElevatedButton(
              texto: 'Alterar Carro',
              onPressed: () {
                carroModel.value = Carro(
                  id: 1,
                  marca: 'Toyota',
                  modelo: 'Supra',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
