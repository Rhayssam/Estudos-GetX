import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/create/create_controller.dart';

class Create extends StatefulWidget {
  Create({super.key}) {
    Get.create(() => CreateController());
    Get.put(CreateController(), tag: 'put');
  }

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  String nome = '';
  String nomePut = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Create'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'O create vai criar uma nova instância do controller sempre que for chamado'),
            Text('Create: $nome'),
            Text('Put comum: $nomePut'),
            CustomElevatedButton(
              texto: 'Buscar Nome',
              onPressed: () {
                setState(() {
                  nome = Get.find<CreateController>().nome;
                  nomePut = Get.find<CreateController>(tag: 'put').nome;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
