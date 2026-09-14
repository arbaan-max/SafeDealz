import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safedealz_vendor/bloc/auth/auth_bloc.dart';
import 'package:safedealz_vendor/core/utils/theme.dart';
import 'package:safedealz_vendor/data/api/models/assigned_store.dart';
import 'package:safedealz_vendor/data/repositories/auth_repository.dart';
import 'package:safedealz_vendor/data/repositories/store_repository.dart';
import 'package:safedealz_vendor/view/screens/stores/assigned_stores_page.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';

class _EmptyStores implements StoreRepository {
  @override
  Future<List<AssignedStore>> listAssignedStores() async => const [];
}

class _FakeAuth implements AuthRepository {
  @override
  Future<void> login(String email, String password) async {}
  @override
  Future<void> logout() async {}
  @override
  Future<bool> restore() async => false;
}

void main() {
  testWidgets('AppPageScaffold uses the ThemeData app-background extension', (
    tester,
  ) async {
    const Color token = Color(0xFFE0F2FE);
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.lightThemeWith(background: token),
        home: const AppPageScaffold(title: 'Assigned stores', body: Text('Body')),
      ),
    );
    expect(tester.widget<Scaffold>(find.byType(Scaffold)).backgroundColor, token);
    expect(find.text('Assigned stores'), findsOneWidget);
  });

  testWidgets('V15 shows empty assigned-store copy', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.lightTheme,
        home: RepositoryProvider<StoreRepository>.value(
          value: _EmptyStores(),
          child: BlocProvider<AuthBloc>(
            create: (_) => AuthBloc(_FakeAuth()),
            child: const AssignedStoresPage(),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Assigned stores'), findsOneWidget);
    expect(
      find.text('No stores are assigned to this vendor account.'),
      findsOneWidget,
    );
  });
}
