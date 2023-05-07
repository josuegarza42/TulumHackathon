import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'usuario_record.g.dart';

abstract class UsuarioRecord
    implements Built<UsuarioRecord, UsuarioRecordBuilder> {
  static Serializer<UsuarioRecord> get serializer => _$usuarioRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'edited_time')
  DateTime? get editedTime;

  @BuiltValueField(wireName: 'Nombres')
  String? get nombres;

  @BuiltValueField(wireName: 'Apellidos')
  String? get apellidos;

  @BuiltValueField(wireName: 'Banco')
  String? get banco;

  @BuiltValueField(wireName: 'CuentadeBanco')
  String? get cuentadeBanco;

  double? get tokens;

  String? get wallet;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsuarioRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..nombres = ''
    ..apellidos = ''
    ..banco = ''
    ..cuentadeBanco = ''
    ..tokens = 0.0
    ..wallet = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Usuario');

  static Stream<UsuarioRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsuarioRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsuarioRecord._();
  factory UsuarioRecord([void Function(UsuarioRecordBuilder) updates]) =
      _$UsuarioRecord;

  static UsuarioRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsuarioRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? nombres,
  String? apellidos,
  String? banco,
  String? cuentadeBanco,
  double? tokens,
  String? wallet,
}) {
  final firestoreData = serializers.toFirestore(
    UsuarioRecord.serializer,
    UsuarioRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..editedTime = editedTime
        ..nombres = nombres
        ..apellidos = apellidos
        ..banco = banco
        ..cuentadeBanco = cuentadeBanco
        ..tokens = tokens
        ..wallet = wallet,
    ),
  );

  return firestoreData;
}
