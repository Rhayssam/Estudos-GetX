import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';

class Inicial extends StatelessWidget {
  final _counter = 0.obs;
  Inicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '1 - Inicial'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: '),
            Obx(
              () => Text('${_counter.value}'),
            ),
            CustomElevatedButton(
              texto: 'Somar 1',
              onPressed: () {
                _counter.value++;
              },
            ),
          ],
        ),
      ),
    );
  }
}
