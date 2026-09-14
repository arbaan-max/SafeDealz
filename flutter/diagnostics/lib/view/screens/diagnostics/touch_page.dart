import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_diagnostics/bloc/session/diagnostic_session_cubit.dart';
import 'package:safedealz_diagnostics/core/route/routes.dart';
import 'package:safedealz_diagnostics/core/utils/theme.dart';

class TouchPage extends StatelessWidget {
  const TouchPage({super.key});

  static const int columns = 10;
  static const int rows = 12;

  @override
  Widget build(BuildContext context) {
    final Color canvas =
        Theme.of(context).extension<DiagnosticSurface>()?.color ??
        AppTheme.diagnosticCanvas;
    return BlocBuilder<DiagnosticSessionCubit, DiagnosticSessionState>(
      buildWhen: (previous, current) => true,
      builder: (context, state) {
        final cubit = context.read<DiagnosticSessionCubit>();
        return Scaffold(
          backgroundColor: canvas,
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () => context.goNamed(automatedRoute),
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        tooltip: 'Back',
                      ),
                      const Expanded(
                        child: Text(
                          'Full-screen touch test',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'DRAG ACROSS THE ENTIRE SCREEN',
                              style: TextStyle(color: Color(0xFF94A3B8), fontSize: 11, letterSpacing: 0.6),
                            ),
                            Text(
                              '${state.touch.percent}% covered',
                              style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            key: const Key('touch-remaining'),
                            '${state.touch.remaining} dots remaining',
                            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
                          ),
                          const Text('dots left', style: TextStyle(color: Color(0xFF94A3B8), fontSize: 11)),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Text(
                    key: const Key('touch-attempt'),
                    'Attempt ${state.touch.attempts}',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Dots disappear wherever your finger travels. Cover every edge and corner.',
                    style: TextStyle(color: Color(0xFFCBD5E1)),
                  ),
                ),
                Expanded(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      final cellW = constraints.maxWidth / columns;
                      final cellH = constraints.maxHeight / rows;
                      return Listener(
                        onPointerDown: (event) => _clearNear(cubit, event.localPosition, cellW, cellH),
                        onPointerMove: (event) => _clearNear(cubit, event.localPosition, cellW, cellH),
                        child: CustomPaint(
                          painter: _DotPainter(
                            cleared: state.touch.cleared,
                            columns: columns,
                            rows: rows,
                          ),
                          child: const SizedBox.expand(),
                        ),
                      );
                    },
                  ),
                ),
                if (state.submitMessage != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      state.submitMessage!,
                      style: const TextStyle(color: Colors.orangeAccent),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          key: const Key('retry-touch'),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            minimumSize: const Size(0, 48),
                          ),
                          onPressed: cubit.retryTouch,
                          child: const Text('Try again'),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: FilledButton(
                          key: const Key('submit-touch'),
                          style: FilledButton.styleFrom(minimumSize: const Size(0, 48)),
                          onPressed: () async {
                            final router = GoRouter.of(context);
                            if (!cubit.submitTouch()) {
                              return;
                            }
                            await cubit.runButtons();
                            router.goNamed(buttonsRoute);
                          },
                          child: const Text('Submit test'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _clearNear(
    DiagnosticSessionCubit cubit,
    Offset position,
    double cellW,
    double cellH,
  ) {
    final col = (position.dx / cellW).floor();
    final row = (position.dy / cellH).floor();
    if (col < 0 || col >= columns || row < 0 || row >= rows) {
      return;
    }
    cubit.clearDot(row * columns + col);
  }
}

class _DotPainter extends CustomPainter {
  _DotPainter({
    required this.cleared,
    required this.columns,
    required this.rows,
  });

  final Set<int> cleared;
  final int columns;
  final int rows;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = const Color(0xFF38BDF8);
    final cellW = size.width / columns;
    final cellH = size.height / rows;
    for (var i = 0; i < columns * rows; i++) {
      if (cleared.contains(i)) {
        continue;
      }
      final col = i % columns;
      final row = i ~/ columns;
      canvas.drawCircle(
        Offset(col * cellW + cellW / 2, row * cellH + cellH / 2),
        3,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant _DotPainter oldDelegate) =>
      oldDelegate.cleared.length != cleared.length;
}
