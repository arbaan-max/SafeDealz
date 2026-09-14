import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/bloc/auth/auth_bloc.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, this.initialMessage});
  final String? initialMessage;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _form = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _visible = false;
  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: AppTheme.appBackground,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 32),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 440),
                child: BlocConsumer<AuthBloc, AuthState>(
                  listener: (context, state) {
                    if (state is AuthAuthenticated) context.goNamed(homeRoute);
                  },
                  builder: (context, state) => Form(
                    key: _form,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SdStatusOrb(icon: Icons.bolt),
                        const Text(
                          'Welcome back',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800, letterSpacing: -0.8),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Login to your store account.',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: AppTheme.muted),
                        ),
                        if ((state is AuthUnauthenticated && state.message != null) ||
                            widget.initialMessage != null) ...[
                          const SizedBox(height: 16),
                          Semantics(
                            liveRegion: true,
                            child: Text(
                              state is AuthUnauthenticated && state.message != null
                                  ? state.message!
                                  : widget.initialMessage!,
                              style: TextStyle(color: Theme.of(context).colorScheme.error),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                        const SizedBox(height: 24),
                        TextFormField(
                          controller: _email,
                          keyboardType: TextInputType.emailAddress,
                          autofillHints: const [AutofillHints.username],
                          decoration: const InputDecoration(labelText: 'Email address'),
                          validator: (v) => v != null && v.contains('@') ? null : 'Enter a valid email',
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _password,
                          obscureText: !_visible,
                          autofillHints: const [AutofillHints.password],
                          decoration: InputDecoration(
                            labelText: 'Password',
                            suffixIcon: IconButton(
                              onPressed: () => setState(() => _visible = !_visible),
                              icon: Icon(
                                _visible ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                              ),
                              tooltip: _visible ? 'Hide password' : 'Show password',
                            ),
                          ),
                          validator: (v) => v?.isNotEmpty == true ? null : 'Enter your password',
                        ),
                        const SizedBox(height: 16),
                        const SdNotice('Accounts are created by your SafeDealz administrator.'),
                        FilledButton(
                          onPressed: state is AuthLoading
                              ? null
                              : () {
                                  if (_form.currentState!.validate()) {
                                    context.read<AuthBloc>().add(
                                          AuthLoginRequested(_email.text.trim(), _password.text),
                                        );
                                  }
                                },
                          child: Text(state is AuthLoading ? 'Logging in…' : 'Login'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
