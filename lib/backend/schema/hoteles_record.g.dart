// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hoteles_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HotelesRecord> _$hotelesRecordSerializer =
    new _$HotelesRecordSerializer();

class _$HotelesRecordSerializer implements StructuredSerializer<HotelesRecord> {
  @override
  final Iterable<Type> types = const [HotelesRecord, _$HotelesRecord];
  @override
  final String wireName = 'HotelesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, HotelesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.estrellas;
    if (value != null) {
      result
        ..add('Estrellas')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.imagen;
    if (value != null) {
      result
        ..add('Imagen')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nombre;
    if (value != null) {
      result
        ..add('Nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.decripcion;
    if (value != null) {
      result
        ..add('Decripcion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  HotelesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HotelesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Estrellas':
          result.estrellas = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Imagen':
          result.imagen = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Decripcion':
          result.decripcion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$HotelesRecord extends HotelesRecord {
  @override
  final int? estrellas;
  @override
  final String? imagen;
  @override
  final String? nombre;
  @override
  final String? decripcion;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HotelesRecord([void Function(HotelesRecordBuilder)? updates]) =>
      (new HotelesRecordBuilder()..update(updates))._build();

  _$HotelesRecord._(
      {this.estrellas, this.imagen, this.nombre, this.decripcion, this.ffRef})
      : super._();

  @override
  HotelesRecord rebuild(void Function(HotelesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HotelesRecordBuilder toBuilder() => new HotelesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HotelesRecord &&
        estrellas == other.estrellas &&
        imagen == other.imagen &&
        nombre == other.nombre &&
        decripcion == other.decripcion &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, estrellas.hashCode);
    _$hash = $jc(_$hash, imagen.hashCode);
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, decripcion.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HotelesRecord')
          ..add('estrellas', estrellas)
          ..add('imagen', imagen)
          ..add('nombre', nombre)
          ..add('decripcion', decripcion)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HotelesRecordBuilder
    implements Builder<HotelesRecord, HotelesRecordBuilder> {
  _$HotelesRecord? _$v;

  int? _estrellas;
  int? get estrellas => _$this._estrellas;
  set estrellas(int? estrellas) => _$this._estrellas = estrellas;

  String? _imagen;
  String? get imagen => _$this._imagen;
  set imagen(String? imagen) => _$this._imagen = imagen;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _decripcion;
  String? get decripcion => _$this._decripcion;
  set decripcion(String? decripcion) => _$this._decripcion = decripcion;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HotelesRecordBuilder() {
    HotelesRecord._initializeBuilder(this);
  }

  HotelesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _estrellas = $v.estrellas;
      _imagen = $v.imagen;
      _nombre = $v.nombre;
      _decripcion = $v.decripcion;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HotelesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HotelesRecord;
  }

  @override
  void update(void Function(HotelesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HotelesRecord build() => _build();

  _$HotelesRecord _build() {
    final _$result = _$v ??
        new _$HotelesRecord._(
            estrellas: estrellas,
            imagen: imagen,
            nombre: nombre,
            decripcion: decripcion,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
