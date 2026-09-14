import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/network/api_error_message.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/data/api/models/performance.dart';
import 'package:safedealz_vendor/data/repositories/performance_repository.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';

class PerformancePage extends StatefulWidget {
  const PerformancePage({super.key});

  @override
  State<PerformancePage> createState() => _PerformancePageState();
}

class _PerformancePageState extends State<PerformancePage> {
  Performance? _row;
  String? _error;
  bool _loading = true;
  DateTimeRange? _range;

  Future<void> _load() async {
    final repo = context.read<PerformanceRepository>();
    setState(() { _loading = true; _error = null; });
    try {
      final row = await repo.load(
        from: _range?.start.toIso8601String(),
        to: _range?.end.toIso8601String(),
      );
      if (mounted) setState(() { _row = row; _loading = false; });
    } catch (error) {
      if (mounted) setState(() { _error = apiErrorMessage(error); _loading = false; });
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) { _load(); });
  }

  @override
  Widget build(BuildContext context) {
    final row = _row;
    return AppPageScaffold(
      title: 'Performance',
      onBack: () => GoRouter.maybeOf(context)?.goNamed(assignedStoresRoute),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                TextButton(
                  onPressed: () async {
                    final picked = await showDateRangePicker(
                      context: context,
                      firstDate: DateTime(2024),
                      lastDate: DateTime.now(),
                    );
                    if (picked != null) {
                      setState(() => _range = picked);
                      await _load();
                    }
                  },
                  child: Text(_range == null ? 'Filter period' : 'Period ${_range!.start.toIso8601String().split('T').first} – ${_range!.end.toIso8601String().split('T').first}'),
                ),
                if (_error != null) Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                if (row != null) ...[
                  Text('Bids ${row.bids ?? 0}'),
                  Text('Wins ${row.wins ?? 0}'),
                  Text('Accepted purchases ${row.acceptedPurchases ?? 0}'),
                  Text('Win rate ${((row.winRate ?? 0) * 100).toStringAsFixed(0)}%'),
                  Text('Average response ${((row.averageResponseSeconds ?? 0).toDouble()).toStringAsFixed(0)} seconds'),
                  const SizedBox(height: 12),
                  const Text('Hourly bids'),
                  if ((row.hourly ?? []).every((item) => (item.bids ?? 0) == 0))
                    const Text('No activity in this period.')
                  else
                    for (final hour in row.hourly ?? [])
                      if ((hour.bids ?? 0) > 0) Text('${hour.hour}:00 · ${hour.bids} bids'),
                ],
              ],
            ),
    );
  }
}
