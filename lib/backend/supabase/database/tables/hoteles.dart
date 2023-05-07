import '../database.dart';

class HotelesTable extends SupabaseTable<HotelesRow> {
  @override
  String get tableName => 'Hoteles';

  @override
  HotelesRow createRow(Map<String, dynamic> data) => HotelesRow(data);
}

class HotelesRow extends SupabaseDataRow {
  HotelesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HotelesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nombre => getField<String>('Nombre')!;
  set nombre(String value) => setField<String>('Nombre', value);

  String get descripcion => getField<String>('Descripción')!;
  set descripcion(String value) => setField<String>('Descripción', value);

  double get estrellas => getField<double>('Estrellas')!;
  set estrellas(double value) => setField<double>('Estrellas', value);

  String get direccion => getField<String>('Direccion')!;
  set direccion(String value) => setField<String>('Direccion', value);

  String get imagen => getField<String>('Imagen')!;
  set imagen(String value) => setField<String>('Imagen', value);
}
