import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _isHotelero = prefs.getBool('ff_isHotelero') ?? _isHotelero;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isHotelero = false;
  bool get isHotelero => _isHotelero;
  set isHotelero(bool _value) {
    _isHotelero = _value;
    prefs.setBool('ff_isHotelero', _value);
  }

  String _Nombre = '';
  String get Nombre => _Nombre;
  set Nombre(String _value) {
    _Nombre = _value;
  }

  String _PrimerApellido = '';
  String get PrimerApellido => _PrimerApellido;
  set PrimerApellido(String _value) {
    _PrimerApellido = _value;
  }

  String _SegundoApellido = '';
  String get SegundoApellido => _SegundoApellido;
  set SegundoApellido(String _value) {
    _SegundoApellido = _value;
  }

  String _Domicilio = '';
  String get Domicilio => _Domicilio;
  set Domicilio(String _value) {
    _Domicilio = _value;
  }

  bool _Visible = false;
  bool get Visible => _Visible;
  set Visible(bool _value) {
    _Visible = _value;
  }

  bool _visible2 = false;
  bool get visible2 => _visible2;
  set visible2(bool _value) {
    _visible2 = _value;
  }

  bool _visible3 = false;
  bool get visible3 => _visible3;
  set visible3(bool _value) {
    _visible3 = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
