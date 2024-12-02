import 'package:get/get.dart';

class WorkersController extends GetxController {
  final _workers = <Worker>[];
  final _nome = 'WorkersController'.obs;
  String get nome => _nome.value;

  @override
  void onInit() {
    //! Descomentar um dos workers para ver o seu funcionamento!

    //* Ever
    // final everWorker = ever(
    //   _nome,
    //   (nome) {
    //     print('------ Worker ever ------');
    //     print(nome);
    //   },
    //   cancelOnError: true,
    //   condition: () => _nome.value == 'Rh',
    // );
    // _workers.add(everWorker);

    //* Once
    // final onceWorker = once<String>(_nome, (nome) {
    //   print('------ Worker Once ------');
    //   print(nome);
    // });
    // _workers.add(onceWorker);

    //* Interval
    // final workerInterval = interval<String>(_nome, (nome) {
    //   print('------ Woker Interval ------');
    //   print('------ $nome ------');
    // }, time: Duration(seconds: 2));
    // _workers.add(workerInterval);

    //* Debounce
    // final workerDebounce = debounce(_nome, (callback) {
    //   print('------ Woker Debounce ------');
    //   print('------ $nome ------');
    // });

    super.onInit();
  }

  @override
  void onClose() {
    for (var worker in _workers) {
      worker();
    }
    super.onClose();
  }

  void alterarNome(String value) {
    _nome(value);
  }
}
