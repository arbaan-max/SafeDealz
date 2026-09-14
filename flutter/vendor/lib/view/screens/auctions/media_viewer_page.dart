import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:safedealz_vendor/core/route/routes.dart';
import 'package:safedealz_vendor/view/widgets/app_page_scaffold.dart';

class MediaViewerPage extends StatelessWidget {
  const MediaViewerPage({super.key, required this.label, this.url});
  final String label;
  final String? url;

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: 'Media',
      onBack: () => GoRouter.maybeOf(context)?.goNamed(liveQueueRoute),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(label),
          const SizedBox(height: 12),
          if (url == null || url!.isEmpty)
            const Text('Remote media is missing. Retry from the device detail.')
          else
            Text('Loading $url'),
        ],
      ),
    );
  }
}
