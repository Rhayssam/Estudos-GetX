import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Rota inicial
import 'package:jornada_getx/home_page.dart';
// Navegação de Rotas comuns
import 'package:jornada_getx/features/gerenciamento_de_rotas/rotas_home_page.dart';
// Sub-Rotas
import 'package:jornada_getx/features/gerenciamento_de_rotas/to/to.dart';
import 'package:jornada_getx/features/gerenciamento_de_rotas/back/back.dart';
import 'package:jornada_getx/features/gerenciamento_de_rotas/off/off.dart';
import 'package:jornada_getx/features/gerenciamento_de_rotas/offAll/offAll.dart';
import 'package:jornada_getx/features/gerenciamento_de_rotas/envio_parametros/envio.dart';
import 'package:jornada_getx/features/gerenciamento_de_rotas/await_parametros/await_parametros.dart';
// Navegação de Rotas Nomeadas
import 'package:jornada_getx/features/gerenciamento_de_rotas_nomeadas/rotas_nomeadas_home_page.dart';
// Sub-Rotas
import 'package:jornada_getx/features/gerenciamento_de_rotas_nomeadas/iniciais/iniciais.dart';
// Sub-Rotas
import 'package:jornada_getx/features/gerenciamento_de_rotas_nomeadas/iniciais/page1.dart';
import 'package:jornada_getx/features/gerenciamento_de_rotas_nomeadas/iniciais/page2.dart';
import 'package:jornada_getx/features/gerenciamento_de_rotas_nomeadas/iniciais/page3.dart';
// Navegação de Rotas Nomeadas
import 'package:jornada_getx/features/gerenciamento_de_dependencias/dependencias_home_page.dart';
// Sub-Rotas
import 'package:jornada_getx/features/gerenciamento_de_dependencias/conceito/conceito.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/put/put.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/lazyPut/lazyPut.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/putAsync/putAsync.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/create/create.dart';

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
        //* Rota da página principal
        GetPage(name: '/', page: () => HomePage()),
        //* Estudo de Rotas
        GetPage(
          name: '/rotas_home_page',
          page: () => RotasHomePage(),
          children: [
            //* Rotas pertencentes ao tema estudo de rotas
            GetPage(name: '/to', page: () => To()),
            GetPage(name: '/back', page: () => Back()),
            GetPage(name: '/off', page: () => Off()),
            GetPage(name: '/offAll', page: () => OffAll()),
            GetPage(name: '/envioParametros', page: () => Envio()),
            GetPage(name: '/awaitParametros', page: () => AwaitParametros()),
          ],
        ),
        //* Estudo de Rotas Nomeadas
        GetPage(
          name: '/rotas_nomeadas_home_page',
          page: () => RotasNomeadasHomePage(),
          children: [
            //* Rotas pertencentes ao tema estudo de rotas nomeadas
            GetPage(
              name: '/iniciais',
              page: () => Iniciais(),
              //* Rotas pertencentes ao tema estudo de rotas nomeadas
              children: [
                GetPage(name: '/page1', page: () => Page1()),
                GetPage(name: '/page2', page: () => Page2()),
                GetPage(name: '/page3', page: () => Page3()),
              ],
            ),
          ],
        ),
        //* Estudo de Gerenciamento de Dependências
        GetPage(
          name: '/dependencias_home_page',
          page: () => DependenciasHomePage(),
          children: [
            GetPage(name: '/conceito', page: () => Conceito()),
            GetPage(name: '/put', page: () => Put()),
            GetPage(name: '/lazyPut', page: () => LazyPut()),
            GetPage(name: '/putAsync', page: () => PutAsync()),
            GetPage(name: '/create', page: () => Create()),
          ],
        ),
      ],
    );
  }
}
