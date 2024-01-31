import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techlearn/blocs/auth/auth_bloc.dart';
import 'package:techlearn/blocs/user/user_bloc.dart';
import 'package:techlearn/config/tech_learn_routes.dart';
import 'package:techlearn/config/tech_learn_themes.dart';
import 'package:techlearn/l10n/generated/app_localizations.dart';

class TechLearnApp extends StatelessWidget {
  const TechLearnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => UserBloc(),
        ),
      ],
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          // state.maybeWhen(loggedin: ,orElse: () => -1);
        },
        child: MaterialApp(
          title: 'Tech-Learn',
          debugShowCheckedModeBanner: false,
          theme: TechLearnThemes.lightTechLearnTheme,
          darkTheme: TechLearnThemes.darkTechLearnTheme,
          themeMode:
              ThemeMode.light, //todo: may need to update on theme change.
          onGenerateRoute: TechLearnRoutes.generateRoutes,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
        ),
      ),
    );
  }
}
