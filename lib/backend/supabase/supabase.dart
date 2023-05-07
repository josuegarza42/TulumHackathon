import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://mkbkwcexdfiisleghhrs.supabase.co/';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1rYmt3Y2V4ZGZpaXNsZWdoaHJzIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODM0MTEzNTYsImV4cCI6MTk5ODk4NzM1Nn0.Z6sIR0c-6pop1yhio2DuQ8-UwVBKa4cNB-pLFmKAmnw';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
      );
}
