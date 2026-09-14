import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/data/api/models/wallet_hold.dart';
import 'package:safedealz_vendor/data/repositories/wallet_repository.dart';
import 'package:safedealz_vendor/view/screens/wallet/money.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';

class WalletHoldsPage extends StatefulWidget {
  const WalletHoldsPage({super.key});

  @override
  State<WalletHoldsPage> createState() => _WalletHoldsPageState();
}

class _WalletHoldsPageState extends State<WalletHoldsPage> {
  List<WalletHold> _holds = const [];
  String? _error;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  Future<void> _load() async {
    try {
      final wallet = await context.read<WalletRepository>().getMyWallet();
      if (!mounted) return;
      setState(() {
        _holds = wallet.reservations ?? const [];
        _loading = false;
      });
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _error = apiErrorMessage(error);
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Reserved funds',
      actions: [
        TextButton(
          onPressed: () => context.goNamed(walletRoute),
          child: const Text('Wallet'),
        ),
      ],
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (_error != null)
                  Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (_holds.isEmpty) const Text('No funds are reserved.'),
                for (final hold in _holds)
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(formatPaise(hold.amountPaise)),
                    subtitle: Text('${hold.reason ?? 'Hold'} · ${hold.status?.json ?? 'held'}'),
                  ),
              ],
            ),
    );
  }
}
