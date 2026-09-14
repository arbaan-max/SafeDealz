import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/core/utils/theme.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';
import 'package:safedealz_vendor/view/widgets/html_kit.dart';

class MediaViewerPage extends StatelessWidget {
  const MediaViewerPage({super.key, required this.label, this.url});
  final String label;
  final String? url;

  static const _slots = ['Video', 'Front', 'Back', 'Top', 'Bottom', 'Left', 'Right'];

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Media',
      onBack: () => GoRouter.maybeOf(context)?.goNamed(liveQueueRoute),
      actionBar: OutlinedButton(
        onPressed: () => GoRouter.maybeOf(context)?.goNamed(liveQueueRoute),
        child: const Text('Back to device'),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            constraints: const BoxConstraints(minHeight: 300),
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: AppTheme.surface,
              border: Border.all(color: AppTheme.border),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Icon(label.toLowerCase() == 'video' ? Icons.videocam_outlined : Icons.photo_camera_outlined, size: 40, color: AppTheme.skyBlue),
                const SizedBox(height: 12),
                Text(label, style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: 6),
                const Text('Demo evidence viewer', style: TextStyle(color: AppTheme.muted)),
                const SizedBox(height: 12),
                if (url == null || url!.isEmpty)
                  const Text('Remote media is missing. Retry from the device detail.')
                else ...[
                  Text('Loading $url'),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.play_arrow_outlined),
                    label: const Text('Play preview'),
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final slot in _slots)
                FilterChip(
                  label: Text(slot),
                  selected: slot == label,
                  onSelected: (_) => GoRouter.maybeOf(context)?.goNamed(
                    mediaViewerRoute,
                    queryParameters: {'label': slot, 'url': url ?? ''},
                  ),
                ),
            ],
          ),
          const SizedBox(height: 16),
          const SdNotice('Captured evidence stays attached to this device. Customer identity images are never visible here.'),
        ],
      ),
    );
  }
}
