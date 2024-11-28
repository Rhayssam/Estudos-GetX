import 'package:flutter/material.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';

class ControllersHomePage extends StatelessWidget {
  const ControllersHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Controllers Home'),
      body: Center(
        child: Column(
          children: [
            CustomElevatedButton(
              texto: 'Controller 1',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
