import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techlearn/blocs/auth/auth_bloc.dart';
import 'package:techlearn/blocs/user/user_bloc.dart';
import 'package:techlearn/config/common_extensions.dart';
import 'package:techlearn/config/tech_learn_routes.dart';
import 'package:techlearn/l10n/generated/app_localizations.dart';
import 'package:techlearn/widgets/tech_learn_text_form_field_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                AppLocalizations.of(context)!.txtLoginToYourAccount,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Expanded(
              child: BlocConsumer<AuthBloc, AuthState>(
                listener: (c, s) => s.maybeWhen(
                  success: () {
                    context.read<UserBloc>().add(const UserEvent.load());
                    return Navigator.pushReplacementNamed(
                      context,
                      TechLearnRoutes.home,
                    );
                  },
                  error: (msg) => showErrorSnackbar(msg),
                  failed: (msg) => showErrorSnackbar(msg),
                  orElse: () => -1,
                ),
                builder: (context, state) {
                  final isLogginIn = state == const AuthState.loggingin();
                  return Column(
                    children: [
                      TechLearnTextFormFieldWidget(
                        label: AppLocalizations.of(context)!.txtEmail,
                        enabled: !isLogginIn,
                        textEditingController: _emailController,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32, bottom: 32),
                        child: TechLearnTextFormFieldWidget(
                          label: AppLocalizations.of(context)!.txtPassword,
                          enabled: !isLogginIn,
                          obscureText: true,
                          textEditingController: _passwordController,
                        ),
                      ),
                      FilledButton(
                        onPressed: isLogginIn
                            ? null
                            : () {
                                context.read<AuthBloc>().add(AuthEvent.login(
                                      _emailController.text,
                                      _passwordController.text,
                                    ));
                              },
                        child: isLogginIn
                            ? const SizedBox(
                                width: 24,
                                height: 24,
                                child: CircularProgressIndicator(),
                              )
                            : const Text('Login'),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
