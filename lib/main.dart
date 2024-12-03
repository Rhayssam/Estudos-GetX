import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/controllers/full_life_cycle_controller/example_full_life_cycle_controller.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/controllers/full_life_cycle_controller/example_full_life_cycle_page.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/getBuilder/get_builder_controller.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/getBuilder/get_builder_page.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/stateMixin/home_bindings.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/stateMixin/state_mixin_page.dart';

// Rota inicial
import 'package:jornada_getx/home_page.dart';
// 1 - Navegação de Rotas comuns
import 'package:jornada_getx/features/gerenciamento_de_rotas/rotas_home_page.dart';
// Sub-Rotas
import 'package:jornada_getx/features/gerenciamento_de_rotas/to/to.dart';
import 'package:jornada_getx/features/gerenciamento_de_rotas/back/back.dart';
import 'package:jornada_getx/features/gerenciamento_de_rotas/off/off.dart';
import 'package:jornada_getx/features/gerenciamento_de_rotas/offAll/offAll.dart';
import 'package:jornada_getx/features/gerenciamento_de_rotas/envio_parametros/envio.dart';
import 'package:jornada_getx/features/gerenciamento_de_rotas/await_parametros/await_parametros.dart';
// 2 - Navegação de Rotas Nomeadas
import 'package:jornada_getx/features/gerenciamento_de_rotas_nomeadas/rotas_nomeadas_home_page.dart';
// Sub-Rotas
import 'package:jornada_getx/features/gerenciamento_de_rotas_nomeadas/iniciais/iniciais.dart';
// Sub-Rotas
import 'package:jornada_getx/features/gerenciamento_de_rotas_nomeadas/iniciais/page1.dart';
import 'package:jornada_getx/features/gerenciamento_de_rotas_nomeadas/iniciais/page2.dart';
import 'package:jornada_getx/features/gerenciamento_de_rotas_nomeadas/iniciais/page3.dart';
// 3 - Gerenciamento de Dependências
import 'package:jornada_getx/features/gerenciamento_de_dependencias/dependencias_home_page.dart';
// Sub-Rotas
import 'package:jornada_getx/features/gerenciamento_de_dependencias/conceito/conceito.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/put/put.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/lazyPut/lazyPut.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/putAsync/putAsync.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/create/create.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/delete-update/update.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/delete-update/delete.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/bindings/bindings_controller.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/bindings/bindings_exemplo.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/bindings/bindings_page.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/bindings/middleware_binding.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/initialBinding/initialBinding.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/initialBinding/initialBinding_page.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/service/storage_page.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/service/storage_service.dart';
// 4 - Gerenciamento de Estado
import 'package:jornada_getx/features/gerenciamento_de_estado/estado_home_page.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/atualizacao/atualizacao_objetos.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/controllers/getxController/controller.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/controllers/controllers_home_page.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/controllers/getxController/getx_controller_example.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/firstRebuild/first_rebuild_page.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/getx_widget/getx_widget_page.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/inicial/inicial.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/tipos/tipos_genericos.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/tipos/tipos_genericos_nulos.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/tipos/tipos_obs.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/tipos/tipos_page.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/widget_estado_local/local_state_widget.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/workers/workers_controller.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/workers/workers_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => StorageService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitialBinding(),
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
            GetPage(
              name: '/iniciais',
              page: () => Iniciais(),
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
            GetPage(
              name: '/update',
              page: () => Update(),
              children: [
                GetPage(
                  name: '/delete',
                  page: () => Delete(),
                ),
              ],
            ),
            GetPage(
              name: '/bindings',
              page: () => BindingsPage(),
              binding: BindingsExemplo(),
              middlewares: [
                MiddlewareBinding(),
              ],
            ),
            GetPage(
              name: '/bindings_builder',
              page: () => BindingsPage(),
              binding: BindingsBuilder(
                () {
                  Get.put(BindingsController(nome: 'Bindings Builder'));
                },
              ),
            ),
            GetPage(
              name: '/bindings_builder_put',
              page: () => BindingsPage(),
              binding: BindingsBuilder.put(
                () => BindingsController(
                  nome: 'Bindings Builder Put',
                ),
              ),
            ),
            GetPage(
              name: '/initial_binding',
              page: () => InitialBindingPage(),
            ),
            GetPage(
              name: '/services',
              page: () => StoragePage(),
            ),
          ],
        ),
        //* Estudo do Gerenciamento de Estado
        GetPage(
          name: '/estado_home_page',
          page: () => EstadoHomePage(),
          children: [
            GetPage(
              name: '/inicial',
              page: () => Inicial(),
            ),
            GetPage(
              name: '/tipos',
              page: () => TiposPage(),
            ),
            GetPage(
              name: '/tipos_genericos',
              page: () => TiposGenericos(),
            ),
            GetPage(
              name: '/tipos_genericos_nulos',
              page: () => TiposGenericosNulos(),
            ),
            GetPage(
              name: '/tipos_obs',
              page: () => TiposObs(),
            ),
            GetPage(
              name: '/atualizacao_objetos',
              page: () => AtualizacaoObjetos(),
            ),
            GetPage(
              name: '/controllers',
              page: () => ControllersHomePage(),
              children: [
                GetPage(
                  name: '/getx_controller_example',
                  page: () => GetxControllerExample(),
                  binding: BindingsBuilder(() {
                    Get.lazyPut(() => Controller());
                  }),
                ),
                GetPage(
                  name: '/full_life_cycle',
                  page: () => ExampleFullLifeCyclePage(),
                  binding: BindingsBuilder.put(
                    () => ExampleFullLifeCycleController(),
                  ),
                ),
              ],
            ),
            GetPage(
              name: '/getx_widget',
              page: () => GetxWidgetPage(),
            ),
            GetPage(
              name: '/local_state_widget',
              page: () => LocalStateWidget(),
            ),
            GetPage(
              name: '/workers',
              page: () => WorkersPage(),
              binding: BindingsBuilder.put(
                () => WorkersController(),
              ),
            ),
            GetPage(
              name: '/first_rebuild',
              page: () => FirstRebuildPage(),
            ),
            GetPage(
              name: '/get_builder',
              page: () => GetBuilderPage(),
              binding: BindingsBuilder.put(
                () => GetBuilderController(),
              ),
            ),
            GetPage(
              name: '/state_mixin',
              page: () => StateMixinPage(),
              binding: HomeBindings(),
            ),
          ],
        )
      ],
    );
  }
}
