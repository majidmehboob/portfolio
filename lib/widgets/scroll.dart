import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AutoScrollRow extends StatefulWidget {
  final List<Widget> children;
  final bool reverse;

  const AutoScrollRow({
    super.key,
    required this.children,
    this.reverse = false,
  });

  @override
  State<AutoScrollRow> createState() => _AutoScrollRowState();
}

class _AutoScrollRowState extends State<AutoScrollRow>
    with SingleTickerProviderStateMixin {
  late ScrollController _controller;
  late Ticker _ticker;

  bool isPaused = false;

  @override
  void initState() {
    super.initState();

    _controller = ScrollController();

    _ticker = createTicker((_) {
      if (!isPaused &&
          _controller.hasClients &&
          _controller.position.hasContentDimensions) {

        double max = _controller.position.maxScrollExtent;
        double offset = _controller.offset + (widget.reverse ? -0.5 : 0.5);

        if (offset >= max) {
          _controller.jumpTo(0);
        } else if (offset <= 0) {
          _controller.jumpTo(max);
        } else {
          _controller.jumpTo(offset);
        }
      }
    });

    _ticker.start();
  }

  @override
  void dispose() {
    _ticker.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _pause() => setState(() => isPaused = true);
  void _resume() => setState(() => isPaused = false);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _pause(),
      onExit: (_) => _resume(),
      child: GestureDetector(
        onTapDown: (_) => _pause(),
        onTapUp: (_) => _resume(),
        child: ShaderMask(
          shaderCallback: (rect) {
            return const LinearGradient(
              colors: [
                Colors.transparent,
                Colors.black,
                Colors.black,
                Colors.transparent,
              ],
              stops: [0.0, 0.1, 0.9, 1.0],
            ).createShader(rect);
          },
          blendMode: BlendMode.dstIn,
          child: ListView(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              ...widget.children,
              ...widget.children, // duplicate for infinite effect
            ],
          ),
        ),
      ),
    );
  }
}