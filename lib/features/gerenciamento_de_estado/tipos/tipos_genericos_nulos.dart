import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/tipos/model/carro.dart';

//! Para tipos genéricos, usar o .value

class TiposGenericosNulos extends StatelessWidget {
  final nome = Rxn<String>('Rhayssam');
  final idade = Rxn<int>(21);
  final isActive = Rxn<bool>(true);
  final valor = Rxn<double>(20.0);
  final cursos = Rxn<List<String>>(
    [
      'GetX',
      'Youtube',
      'Cursos',
    ],
  );
  final ficha = Rxn<Map<String, dynamic>>({
    'id': 1,
    'nome': 'Rhayssam',
    'nick': 'rhaydev',
  });
  // Usar os tipos genéricos ao utilizar classes próprias
  final carroModel = Rxn<Carro>(Carro(id: 1, marca: 'Porsche', modelo: 'GT2'));

  TiposGenericosNulos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '4 - Tipos Genéricos Nulos'),
      body: Center(
        child: Column(
          children: [
            Text('${ficha.value?['id']}'),
            Obx(
              () => Text('${ficha.value?['nome']}'),
            ),
            Text('${ficha.value?['nick']}'),
            Obx(
              () {
                return Column(
                  children: cursos.value?.map(Text.new).toList() ?? [],
                );
              },
            ),
            //* Mostrando na tela informações da classe carro
            Obx(
              () {
                return Text('Id do carro: ${carroModel.value?.id}');
              },
            ),
            Obx(
              () {
                return Text('Marca do carro: ${carroModel.value?.marca}');
              },
            ),
            Obx(
              () {
                return Text('Modelo do carro: ${carroModel.value?.modelo}');
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
