import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_store_manager/bloc/auth/auth_bloc.dart';
import 'package:safedealz_store_manager/core/network/api_error_message.dart';
import 'package:safedealz_store_manager/core/route/routes.dart';
import 'package:safedealz_store_manager/core/utils/read_maybe.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/data/api/models/account_summary.dart';
import 'package:safedealz_store_manager/data/api/models/branch.dart';
import 'package:safedealz_store_manager/data/repositories/account_repository.dart';
import 'package:safedealz_store_manager/data/repositories/profile_repository.dart';
import 'package:safedealz_store_manager/data/repositories/store_repository.dart';
import 'package:safedealz_store_manager/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_store_manager/view/widgets/html_kit.dart';
import 'package:safedealz_store_manager/view/widgets/manager_bottom_nav.dart';
import 'package:safedealz_store_manager/view/widgets/sd_icons.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  AccountSummary? _account;
  Branch? _branch;
  String? _error;
  String? _message;
  bool _loading = true;
  bool _changing = false;
  final _current = TextEditingController();
  final _next = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final accounts = context.read<AccountRepository>();
      final stores = maybeRead<StoreRepository>(context);
      try {
        final account = await accounts.currentAccount();
        Branch? branch;
        try {
          final branches = await stores?.listAssignedBranches() ?? const <Branch>[];
          if (branches.isNotEmpty) {
            final assigned = account.assignedBranchIds ?? const <String>[];
            branch = branches.firstWhere(
              (item) => assigned.isEmpty || assigned.contains(item.id),
              orElse: () => branches.first,
            );
          }
        } catch (_) {}
        if (mounted) setState(() { _account = account; _branch = branch; _loading = false; });
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

  Future<void> _changePassword() async {
    setState(() { _error = null; _message = null; _changing = true; });
    try {
      await context.read<ProfileRepository>().changePassword(_current.text, _next.text);
      if (mounted) setState(() { _message = 'Password changed.'; _changing = false; });
    } catch (error) {
      if (mounted) setState(() { _error = apiErrorMessage(error); _changing = false; });
    }
  }

  @override
  Widget build(BuildContext context) {
    final account = _account;
    final name = account == null
        ? ''
        : ((account.displayName ?? '').trim().isEmpty ? account.email : account.displayName!);
    return AppPageScaffold(
      title: 'Account',
      bottomNavigationBar: const ManagerBottomNav(index: 3),
      actionBar: OutlinedButton.icon(
        onPressed: () {
          context.read<AuthBloc>().add(const AuthLogoutRequested());
          context.goNamed(loginRoute);
        },
        icon: const Icon(SdIcons.signOut),
        label: const Text('Logout'),
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (_message != null) Text(_message!, style: const TextStyle(color: Color(0xFF166534))),
                Center(
                  child: Column(
                    children: [
                      SdAvatar(initialsFor(name), large: true),
                      const SizedBox(height: 12),
                      Text(name, style: Theme.of(context).textTheme.headlineMedium),
                      const SizedBox(height: 4),
                      const Text('Store manager', style: TextStyle(color: AppTheme.muted)),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                if (account != null)
                  SdCard(
                    child: Column(
                      children: [
                        SdDetailRow('Email', account.email),
                        SdDetailRow('Branch', branchLabel(_branch).isEmpty ? 'No store assigned' : branchLabel(_branch)),
                        SdDetailRow(
                          'Business bank',
                          _branch?.accountNumberMasked?.isNotEmpty == true
                              ? _branch!.accountNumberMasked!
                              : 'Masked. Contact your administrator to change payout setup.',
                        ),
                      ],
                    ),
                  ),
                const SizedBox(height: 16),
                TextField(controller: _current, obscureText: true, decoration: const InputDecoration(labelText: 'Current password')),
                const SizedBox(height: 12),
                TextField(controller: _next, obscureText: true, decoration: const InputDecoration(labelText: 'New password')),
                const SizedBox(height: 12),
                OutlinedButton.icon(
                  onPressed: _changing ? null : _changePassword,
                  icon: const Icon(SdIcons.lock),
                  label: Text(_changing ? 'Saving…' : 'Change password'),
                ),
                const SizedBox(height: 8),
                SdListRow(
                  icon: SdIcons.bell,
                  title: 'Notifications',
                  subtitle: 'Auction and payment updates',
                  onTap: () => context.goNamed(notificationsRoute),
                ),
                SdListRow(
                  icon: SdIcons.headset,
                  title: 'Contact support',
                  subtitle: 'Get help with a transaction',
                  onTap: () => context.goNamed(reportIssueRoute),
                ),
              ],
            ),
    );
  }
}
