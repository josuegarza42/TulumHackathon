// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsuarioRecord> _$usuarioRecordSerializer =
    new _$UsuarioRecordSerializer();

class _$UsuarioRecordSerializer implements StructuredSerializer<UsuarioRecord> {
  @override
  final Iterable<Type> types = const [UsuarioRecord, _$UsuarioRecord];
  @override
  final String wireName = 'UsuarioRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsuarioRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.editedTime;
    if (value != null) {
      result
        ..add('edited_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.nombres;
    if (value != null) {
      result
        ..add('Nombres')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.apellidos;
    if (value != null) {
      result
        ..add('Apellidos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.banco;
    if (value != null) {
      result
        ..add('Banco')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cuentadeBanco;
    if (value != null) {
      result
        ..add('CuentadeBanco')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tokens;
    if (value != null) {
      result
        ..add('tokens')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.wallet;
    if (value != null) {
      result
        ..add('wallet')
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
  UsuarioRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsuarioRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'edited_time':
          result.editedTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Nombres':
          result.nombres = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Apellidos':
          result.apellidos = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Banco':
          result.banco = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CuentadeBanco':
          result.cuentadeBanco = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tokens':
          result.tokens = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'wallet':
          result.wallet = serializers.deserialize(value,
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

class _$UsuarioRecord extends UsuarioRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final DateTime? editedTime;
  @override
  final String? nombres;
  @override
  final String? apellidos;
  @override
  final String? banco;
  @override
  final String? cuentadeBanco;
  @override
  final double? tokens;
  @override
  final String? wallet;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsuarioRecord([void Function(UsuarioRecordBuilder)? updates]) =>
      (new UsuarioRecordBuilder()..update(updates))._build();

  _$UsuarioRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.editedTime,
      this.nombres,
      this.apellidos,
      this.banco,
      this.cuentadeBanco,
      this.tokens,
      this.wallet,
      this.ffRef})
      : super._();

  @override
  UsuarioRecord rebuild(void Function(UsuarioRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsuarioRecordBuilder toBuilder() => new UsuarioRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsuarioRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        editedTime == other.editedTime &&
        nombres == other.nombres &&
        apellidos == other.apellidos &&
        banco == other.banco &&
        cuentadeBanco == other.cuentadeBanco &&
        tokens == other.tokens &&
        wallet == other.wallet &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, editedTime.hashCode);
    _$hash = $jc(_$hash, nombres.hashCode);
    _$hash = $jc(_$hash, apellidos.hashCode);
    _$hash = $jc(_$hash, banco.hashCode);
    _$hash = $jc(_$hash, cuentadeBanco.hashCode);
    _$hash = $jc(_$hash, tokens.hashCode);
    _$hash = $jc(_$hash, wallet.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsuarioRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('editedTime', editedTime)
          ..add('nombres', nombres)
          ..add('apellidos', apellidos)
          ..add('banco', banco)
          ..add('cuentadeBanco', cuentadeBanco)
          ..add('tokens', tokens)
          ..add('wallet', wallet)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsuarioRecordBuilder
    implements Builder<UsuarioRecord, UsuarioRecordBuilder> {
  _$UsuarioRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DateTime? _editedTime;
  DateTime? get editedTime => _$this._editedTime;
  set editedTime(DateTime? editedTime) => _$this._editedTime = editedTime;

  String? _nombres;
  String? get nombres => _$this._nombres;
  set nombres(String? nombres) => _$this._nombres = nombres;

  String? _apellidos;
  String? get apellidos => _$this._apellidos;
  set apellidos(String? apellidos) => _$this._apellidos = apellidos;

  String? _banco;
  String? get banco => _$this._banco;
  set banco(String? banco) => _$this._banco = banco;

  String? _cuentadeBanco;
  String? get cuentadeBanco => _$this._cuentadeBanco;
  set cuentadeBanco(String? cuentadeBanco) =>
      _$this._cuentadeBanco = cuentadeBanco;

  double? _tokens;
  double? get tokens => _$this._tokens;
  set tokens(double? tokens) => _$this._tokens = tokens;

  String? _wallet;
  String? get wallet => _$this._wallet;
  set wallet(String? wallet) => _$this._wallet = wallet;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsuarioRecordBuilder() {
    UsuarioRecord._initializeBuilder(this);
  }

  UsuarioRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _editedTime = $v.editedTime;
      _nombres = $v.nombres;
      _apellidos = $v.apellidos;
      _banco = $v.banco;
      _cuentadeBanco = $v.cuentadeBanco;
      _tokens = $v.tokens;
      _wallet = $v.wallet;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsuarioRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsuarioRecord;
  }

  @override
  void update(void Function(UsuarioRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsuarioRecord build() => _build();

  _$UsuarioRecord _build() {
    final _$result = _$v ??
        new _$UsuarioRecord._(
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            editedTime: editedTime,
            nombres: nombres,
            apellidos: apellidos,
            banco: banco,
            cuentadeBanco: cuentadeBanco,
            tokens: tokens,
            wallet: wallet,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
