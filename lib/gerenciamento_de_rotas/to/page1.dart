import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';

import '../../core/widgets/custom_elevated_button.dart';
import 'page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'To - Pagina 1'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Get.to()',
              style: TextStyle(
                fontSize: 32.0,
              ),
            ),
            CustomElevatedButton(
              texto: 'Ir para a página 2',
              onPressed: () {
                Get.to(() => Page2());
              },
            ),
          ],
        ),
      ),
    );
  }
}
