import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/core/utils/theme.dart';
import 'package:safedealz_vendor/data/api/models/wallet_hold.dart';
import 'package:safedealz_vendor/data/repositories/wallet_repository.dart';
import 'package:safedealz_vendor/view/screens/wallet/money.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_vendor/view/widgets/html_kit.dart';

class WalletHoldsPage extends StatefulWidget {
  const WalletHoldsPage({super.key});

  @override
  State<WalletHoldsPage> createState() => _WalletHoldsPageState();
}

class _WalletHoldsPageState extends State<WalletHoldsPage> {
  List<WalletHold> _holds = const [];
  String? _error;
  bool _loading = true;
  int _reserved = 0;

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
        _reserved = wallet.reservedPaise ?? 0;
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
      onBack: () => GoRouter.maybeOf(context)?.goNamed(walletRoute),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : SdScrollBody(
              children: [
                if (_error != null)
                  Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                SdCard(
                  tint: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Reserved for bids', style: TextStyle(fontSize: 12, color: AppTheme.muted)),
                      Text(formatPaise(_reserved), style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w800)),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                if (_holds.isEmpty) const SdNotice('No reserved funds'),
                if (_holds.isEmpty) const Text('No funds are reserved.'),
                if (_holds.isEmpty)
                  TextButton(
                    onPressed: () => context.goNamed(liveQueueRoute),
                    child: const Text('Browse live devices'),
                  ),
                for (final hold in _holds)
                  SdDeviceCard(
                    title: formatPaise(hold.amountPaise),
                    subtitle: '${hold.reason ?? 'Hold'} · ${hold.status?.json ?? 'held'}',
                    status: 'Bid submitted',
                    footerLabel: 'Reserved',
                    footerValue: formatPaise(hold.amountPaise),
                    onTap: () => context.goNamed(myBidsRoute),
                  ),
                const SizedBox(height: 16),
                const SdNotice('Losing bids release at auction close. Winning bids stay reserved until accepted or expired.'),
              ],
            ),
    );
  }
}
