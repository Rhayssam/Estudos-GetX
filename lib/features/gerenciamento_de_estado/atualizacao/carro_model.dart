// ignore_for_file: public_member_api_docs, sort_constructors_first
class Carro {
  int id;
  String marca;
  String modelo;
  Carro({
    required this.id,
    required this.marca,
    required this.modelo,
  });

  Carro copyWith({
    int? id,
    String? marca,
    String? modelo,
  }) {
    return Carro(
      id: id ?? this.id,
      marca: marca ?? this.marca,
      modelo: modelo ?? this.modelo,
    );
  }
}
