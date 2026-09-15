import 'dart:io';

import 'package:flutter/material.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/view/widgets/sd_icons.dart';
import 'package:video_player/video_player.dart';

class LocalMediaView extends StatelessWidget {
  const LocalMediaView({super.key, required this.path, required this.video});
  final String path;
  final bool video;

  @override
  Widget build(BuildContext context) {
    final file = File(path);
    if (!file.existsSync()) {
      return const Center(child: Icon(SdIcons.camera, color: AppTheme.skyBlue, size: 36));
    }
    if (video) {
      return _LocalVideoView(path: path);
    }
    return Image.file(file, fit: BoxFit.cover, width: double.infinity, height: double.infinity);
  }
}

class _LocalVideoView extends StatefulWidget {
  const _LocalVideoView({required this.path});
  final String path;

  @override
  State<_LocalVideoView> createState() => _LocalVideoViewState();
}

class _LocalVideoViewState extends State<_LocalVideoView> {
  VideoPlayerController? _controller;
  Object? _error;

  @override
  void initState() {
    super.initState();
    final controller = VideoPlayerController.file(File(widget.path));
    _controller = controller;
    controller.initialize().then((_) {
      if (!mounted) return;
      setState(() {});
    }).catchError((Object error) {
      if (!mounted) return;
      setState(() => _error = error);
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = _controller;
    if (_error != null || controller == null || !controller.value.isInitialized) {
      return const Center(child: Icon(SdIcons.video, color: AppTheme.skyBlue, size: 36));
    }
    return GestureDetector(
      onTap: () {
        if (controller.value.isPlaying) {
          controller.pause();
        } else {
          controller.play();
        }
        setState(() {});
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          FittedBox(
            fit: BoxFit.cover,
            child: SizedBox(
              width: controller.value.size.width,
              height: controller.value.size.height,
              child: VideoPlayer(controller),
            ),
          ),
          if (!controller.value.isPlaying)
            Container(
              width: 56,
              height: 56,
              decoration: const BoxDecoration(color: Color(0xCC0369A1), shape: BoxShape.circle),
              child: const Icon(SdIcons.play, color: Colors.white, size: 28),
            ),
        ],
      ),
    );
  }
}
