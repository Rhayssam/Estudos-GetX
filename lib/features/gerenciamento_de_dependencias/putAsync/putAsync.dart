import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Adicionar o package shared_preferences
class PutAsync extends StatefulWidget {
  PutAsync({super.key}) {
    Get.putAsync(() async {
      final prefs = await SharedPreferences.getInstance();
      prefs.setString('nome', 'Nome antigo');
      return prefs;
    }, permanent: true);
  }

  @override
  State<PutAsync> createState() => _PutAsyncState();
}

class _PutAsyncState extends State<PutAsync> {
  String nome = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Put Async'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Para utilizar o putAsync, foi necessário baixar o package shared_preferences'),
            Text('Nome: $nome'),
            CustomElevatedButton(
              texto: 'Buscar',
              onPressed: () {
                setState(
                  () {
                    nome = Get.find<SharedPreferences>().getString('nome') ??
                        'Nome não encontrado';
                  },
                );
              },
            ),
            CustomElevatedButton(
              texto: 'Alterar nome',
              onPressed: () {
                Get.find<SharedPreferences>().setString('nome', 'Nome Novo');
              },
            ),
          ],
        ),
      ),
    );
  }
}
