import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/bloc/auth/auth_bloc.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/data/api/models/account_summary.dart';
import 'package:safedealz_vendor/data/repositories/profile_repository.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  AccountSummary? _account;
  String? _error;
  String? _message;
  bool _loading = true;
  final _current = TextEditingController();
  final _next = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      try {
        final account = await context.read<ProfileRepository>().currentAccount();
        if (mounted) setState(() { _account = account; _loading = false; });
      } catch (error) {
        if (mounted) setState(() { _error = apiErrorMessage(error); _loading = false; });
      }
    });
  }

  @override
  void dispose() {
    _current.dispose();
    _next.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final account = _account;
    return AppPageScaffold(
      title: 'Account',
      onBack: () => GoRouter.maybeOf(context)?.goNamed(assignedStoresRoute),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (_message != null) Text(_message!),
                if (account != null) ...[
                  Text(account.displayName ?? account.email),
                  Text(account.email),
                  Text('Assigned stores ${(account.assignedBranchIds ?? []).length}'),
                ],
                const SizedBox(height: 16),
                TextField(controller: _current, obscureText: true, decoration: const InputDecoration(labelText: 'Current password')),
                TextField(controller: _next, obscureText: true, decoration: const InputDecoration(labelText: 'New password')),
                FilledButton(
                  onPressed: () async {
                    setState(() { _error = null; _message = null; });
                    try {
                      await context.read<ProfileRepository>().changePassword(_current.text, _next.text);
                      if (mounted) setState(() => _message = 'Password changed.');
                    } catch (error) {
                      if (mounted) setState(() => _error = apiErrorMessage(error));
                    }
                  },
                  child: const Text('Change password'),
                ),
                TextButton(onPressed: () => context.goNamed(assignedStoresRoute), child: const Text('Assigned stores')),
                TextButton(onPressed: () => context.goNamed(performanceRoute), child: const Text('Performance')),
                TextButton(onPressed: () => context.goNamed(notificationsRoute), child: const Text('Notifications')),
                TextButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(const AuthLogoutRequested());
                    context.goNamed(loginRoute);
                  },
                  child: const Text('Logout'),
                ),
              ],
            ),
    );
  }
}
