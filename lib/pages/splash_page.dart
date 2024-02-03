import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techlearn/blocs/auth/auth_bloc.dart';
import 'package:techlearn/config/tech_learn_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then(
      (value) => context.read<AuthBloc>().add(const AuthEvent.checkAuth()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
            loggedin: () => Navigator.pushReplacementNamed(
              context,
              TechLearnRoutes.home,
            ),
            notLoggedin: () => Navigator.pushReplacementNamed(
              context,
              TechLearnRoutes.onboarding,
            ),
            orElse: () => -1,
          );
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: Center(
                child: Image.asset(
                  'assets/images/ic_logo.png',
                  fit: BoxFit.fitHeight,
                  height: 145,
                ),
              ),
            ),
            Positioned(
              bottom: 24,
              child: Row(
                children: [
                  const Text('Powered by '),
                  Image.asset(
                    'assets/images/ic_cpn_logo.png',
                    width: 32,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
