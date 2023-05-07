import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'hoteles_record.g.dart';

abstract class HotelesRecord
    implements Built<HotelesRecord, HotelesRecordBuilder> {
  static Serializer<HotelesRecord> get serializer => _$hotelesRecordSerializer;

  @BuiltValueField(wireName: 'Estrellas')
  int? get estrellas;

  @BuiltValueField(wireName: 'Imagen')
  String? get imagen;

  @BuiltValueField(wireName: 'Nombre')
  String? get nombre;

  @BuiltValueField(wireName: 'Decripcion')
  String? get decripcion;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HotelesRecordBuilder builder) => builder
    ..estrellas = 0
    ..imagen = ''
    ..nombre = ''
    ..decripcion = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Hoteles');

  static Stream<HotelesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HotelesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HotelesRecord._();
  factory HotelesRecord([void Function(HotelesRecordBuilder) updates]) =
      _$HotelesRecord;

  static HotelesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHotelesRecordData({
  int? estrellas,
  String? imagen,
  String? nombre,
  String? decripcion,
}) {
  final firestoreData = serializers.toFirestore(
    HotelesRecord.serializer,
    HotelesRecord(
      (h) => h
        ..estrellas = estrellas
        ..imagen = imagen
        ..nombre = nombre
        ..decripcion = decripcion,
    ),
  );

  return firestoreData;
}
