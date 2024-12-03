// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/stateMixin/models/cep_model.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/stateMixin/repository/viacep_repository.dart';

class HomeControllerStateMixin extends GetxController
    with StateMixin<CepModel> {
  final ViacepRepository _repository;
  final _cepSearch = ''.obs;

  HomeControllerStateMixin(
    this._repository,
  );

  set cepSearch(String cepSearch) => _cepSearch.value = cepSearch;

  @override
  void onReady() {
    change(state, status: RxStatus.success());
  }

  Future<void> findAddress() async {
    try {
      change(state, status: RxStatus.loading());
      await 2.seconds.delay();
      final cep = await _repository.getCep(_cepSearch.value);
      change(cep, status: RxStatus.success());
    } catch (e) {
      change(state, status: RxStatus.error());
    }
  }
}
