import 'package:get/get.dart';

class MiddlewareBinding extends GetMiddleware {
  // Será executado antes da chamada da página
  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    print('onBindingsStart $onBindingsStart');
    return super.onBindingsStart(bindings);
  }

  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    print('onPageBuildStart $onPageBuildStart');
    return super.onPageBuildStart(page);
  }
}
