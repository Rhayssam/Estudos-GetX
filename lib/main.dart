import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/gerenciamento_de_rotas/rotas_home_page.dart';
import 'package:jornada_getx/gerenciamento_de_rotas/to/to.dart';
import 'package:jornada_getx/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        // Estudo de Rotas
        GetPage(
          name: '/rotas_home_page',
          page: () => RotasHomePage(),
          children: [
            GetPage(name: '/to', page: () => To()),
          ],
        ),
      ],
    );
  }
}
