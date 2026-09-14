import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safedealz_vendor/core/utils/theme.dart';
import 'package:safedealz_vendor/data/api/models/wallet_detail.dart';
import 'package:safedealz_vendor/data/api/models/wallet_hold.dart';
import 'package:safedealz_vendor/data/api/models/wallet_hold_status.dart';
import 'package:safedealz_vendor/data/api/models/wallet_ledger_entry.dart';
import 'package:safedealz_vendor/data/api/models/wallet_ledger_entry_type.dart';
import 'package:safedealz_vendor/data/repositories/wallet_repository.dart';
import 'package:safedealz_vendor/view/screens/wallet/wallet_entry_page.dart';
import 'package:safedealz_vendor/view/screens/wallet/wallet_holds_page.dart';
import 'package:safedealz_vendor/view/screens/wallet/wallet_page.dart';

final _sample = WalletDetail(
  id: 'w1',
  vendorAccountId: 'v1',
  availablePaise: 10000,
  reservedPaise: 2500,
  processingPaise: 0,
  currency: 'INR',
  ledger: const [
    WalletLedgerEntry(
      id: 'l1',
      type: WalletLedgerEntryType.reserve,
      amountPaise: 2500,
      availableAfterPaise: 10000,
      reservedAfterPaise: 2500,
      reason: 'bid',
    ),
    WalletLedgerEntry(
      id: 'l0',
      type: WalletLedgerEntryType.credit,
      amountPaise: 12500,
      availableAfterPaise: 12500,
      reservedAfterPaise: 0,
      reason: 'seed',
    ),
  ],
  reservations: const [
    WalletHold(
      id: 'h1',
      amountPaise: 2500,
      status: WalletHoldStatus.held,
      reason: 'bid',
    ),
  ],
);

Widget _wrap(Widget child) {
  return MaterialApp(
    theme: AppTheme.lightTheme,
    home: RepositoryProvider<WalletRepository>.value(
      value: MemoryWalletRepository(_sample),
      child: child,
    ),
  );
}

void main() {
  testWidgets('V07 shows available, reserved and signed reserve rows', (tester) async {
    await tester.pumpWidget(_wrap(const WalletPage()));
    await tester.pumpAndSettle();
    expect(find.text('Available to bid'), findsOneWidget);
    expect(find.text('₹100'), findsOneWidget);
    expect(find.text('Reserved ₹25'), findsOneWidget);
    expect(find.text('Payments processing ₹0'), findsOneWidget);
    expect(find.text('Reserve'), findsWidgets);
    expect(find.textContaining('-₹25'), findsOneWidget);
    expect(
      tester.widget<FilledButton>(find.widgetWithText(FilledButton, 'Add money')).onPressed,
      isNull,
    );
  });

  testWidgets('V11 lists held reservations', (tester) async {
    await tester.pumpWidget(_wrap(const WalletHoldsPage()));
    await tester.pumpAndSettle();
    expect(find.text('₹25'), findsOneWidget);
    expect(find.textContaining('bid'), findsOneWidget);
  });

  testWidgets('V10 shows a signed ledger movement', (tester) async {
    await tester.pumpWidget(_wrap(const WalletEntryPage(entryId: 'l1')));
    await tester.pumpAndSettle();
    expect(find.text('Reserve'), findsOneWidget);
    expect(find.text('-₹25'), findsOneWidget);
    expect(find.text('Available after: ₹100'), findsOneWidget);
  });
}
