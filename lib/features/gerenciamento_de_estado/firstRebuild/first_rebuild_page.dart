import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';

class FirstRebuildPage extends StatefulWidget {
  FirstRebuildPage({super.key});

  @override
  State<FirstRebuildPage> createState() => _FirstRebuildPageState();
}

class _FirstRebuildPageState extends State<FirstRebuildPage> {
  final isCarro = false.obs;

  @override
  void initState() {
    super.initState();
    ever(isCarro, (isCarro) {
      Get.snackbar('Ever', 'É um carro $isCarro');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'First Rebuild'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Switch(value: isCarro.value, onChanged: (_) {});
            }),
            CustomElevatedButton(
              texto: 'Set True',
              onPressed: () {
                isCarro(true);
              },
            ),
            CustomElevatedButton(
              texto: 'Set False',
              onPressed: () {
                isCarro(false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
