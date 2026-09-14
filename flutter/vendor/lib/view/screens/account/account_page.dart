import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/bloc/auth/auth_bloc.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/core/utils/theme.dart';
import 'package:safedealz_vendor/data/api/models/account_summary.dart';
import 'package:safedealz_vendor/data/repositories/profile_repository.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_vendor/view/widgets/html_kit.dart';
import 'package:safedealz_vendor/view/widgets/vendor_bottom_nav.dart';

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
  bool _changing = false;
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
    final stores = (account?.assignedBranchIds ?? []).length;
    return AppPageScaffold(
      title: 'Account',
      bottomNavigationBar: const VendorBottomNav(index: 3),
      actionBar: OutlinedButton.icon(
        onPressed: () {
          context.read<AuthBloc>().add(const AuthLogoutRequested());
          context.goNamed(loginRoute);
        },
        icon: const Icon(Icons.logout),
        label: const Text('Logout'),
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : SdScrollBody(
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
                      const Text('Vendor account', style: TextStyle(color: AppTheme.muted)),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                if (account != null)
                  SdCard(
                    child: Column(
                      children: [
                        SdDetailRow('Email', account.email),
                        SdDetailRow('Account status', account.active == false ? 'Inactive' : 'Active'),
                        const SdDetailRow('Wallet owner', 'This vendor account'),
                      ],
                    ),
                  ),
                const SizedBox(height: 16),
                SdListRow(
                  icon: Icons.storefront_outlined,
                  title: 'Assigned stores',
                  subtitle: stores == 0 ? 'No branches assigned' : '$stores branches',
                  onTap: () => context.goNamed(assignedStoresRoute),
                ),
                SdListRow(
                  icon: Icons.bar_chart_outlined,
                  title: 'Performance',
                  subtitle: 'Bids, wins and response time',
                  onTap: () => context.goNamed(performanceRoute),
                ),
                const SizedBox(height: 8),
                TextField(controller: _current, obscureText: true, decoration: const InputDecoration(labelText: 'Current password')),
                const SizedBox(height: 12),
                TextField(controller: _next, obscureText: true, decoration: const InputDecoration(labelText: 'New password')),
                const SizedBox(height: 12),
                OutlinedButton.icon(
                  onPressed: _changing ? null : _changePassword,
                  icon: const Icon(Icons.lock_outline),
                  label: Text(_changing ? 'Saving…' : 'Change password'),
                ),
                SdListRow(
                  icon: Icons.headset_mic_outlined,
                  title: 'Support',
                  subtitle: 'Get help with a transaction',
                  onTap: () => context.goNamed(reportIssueRoute),
                ),
              ],
            ),
    );
  }
}
