import 'package:flutter/material.dart';
import 'idle_manager.dart';

class IdleDetector extends StatefulWidget {
  final Widget child;
  final Duration timeout;
  final VoidCallback onIdle;
  final VoidCallback? onActive;

  const IdleDetector({
    super.key,
    required this.child,
    required this.timeout,
    required this.onIdle,
    this.onActive,
  });

  @override
  State<IdleDetector> createState() => _IdleDetectorState();
}

class _IdleDetectorState extends State<IdleDetector> {
  late IdleManager _idleManager;

  @override
  void initState() {
    super.initState();
    _idleManager = IdleManager(
      timeout: widget.timeout,
      onIdle: widget.onIdle,
      onActive: widget.onActive,
    );
    _idleManager.start();
  }

  void _onUserInteraction([_]) {
    _idleManager.userInteracted();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      behavior: HitTestBehavior.translucent,
      onPointerDown: _onUserInteraction,
      onPointerMove: _onUserInteraction,
      onPointerSignal: _onUserInteraction,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _idleManager.dispose();
    super.dispose();
  }
}
