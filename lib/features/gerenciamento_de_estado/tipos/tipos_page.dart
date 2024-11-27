import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';

class TiposPage extends StatelessWidget {
  final nome = RxString('Rhayssam');
  final idade = RxInt(21);
  final isActive = RxBool(true);
  final valor = RxDouble(20.0);
  final cursos = RxList(
    [
      'GetX',
      'Youtube',
      'Cursos',
    ],
  );
  final ficha = RxMap({
    'id': 1,
    'nome': 'Rhayssam',
    'nick': 'rhaydev',
  });

  TiposPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '2 - Tipos'),
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
            CustomElevatedButton(
              texto: 'Alterar o nome',
              onPressed: () {
                ficha['nome'] = 'Rhayyyyyssssammmmm';
              },
            ),
            CustomElevatedButton(
              texto: 'Adicionar um curso',
              onPressed: () {
                cursos.add('ALURA');
              },
            ),
            CustomElevatedButton(
              texto: 'Remover tudo e trocar nome',
              onPressed: () {
                cursos.assign('ALURA');
              },
            ),
            CustomElevatedButton(
              texto: 'Remover o curso Youtube',
              onPressed: () {
                cursos.remove('Youtube');
              },
            ),
          ],
        ),
      ),
    );
  }
}
