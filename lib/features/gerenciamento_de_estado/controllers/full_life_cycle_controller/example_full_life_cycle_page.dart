import 'package:flutter/material.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';

class ExampleFullLifeCyclePage extends StatelessWidget {
  const ExampleFullLifeCyclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Full Life Cycle'),
      body: Container(),
    );
  }
}
