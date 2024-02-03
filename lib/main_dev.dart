import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:techlearn/config/env.dart';
import 'package:techlearn/tech_learn_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: Env.supabaseURL,
    anonKey: Env.supabaseAnonKey,
  );

  runApp(
    const TechLearnApp(),
  );
}
