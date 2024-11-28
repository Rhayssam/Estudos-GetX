import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';

class LocalStateWidget extends StatelessWidget {
  const LocalStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Local State Widget'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueBuilder<bool?>(
              initialValue: true,
              builder: (obscureValue, updater) {
                return TextFormField(
                  obscureText: obscureValue!,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        updater(!obscureValue);
                      },
                      icon: Icon(Icons.remove_red_eye_outlined),
                    ),
                  ),
                );
              },
              onUpdate: (p0) {
                print('Alterado para $p0');
              },
              onDispose: () {
                print('Removido da arvore de widget');
              },
            ),
            ObxValue<RxBool>((obscureData) {
              return TextFormField(
                obscureText: obscureData.value,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      obscureData.toggle();
                    },
                    icon: Icon(Icons.remove_red_eye_outlined),
                  ),
                ),
              );
            }, true.obs)
          ],
        ),
      ),
    );
  }
}
