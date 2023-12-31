import 'package:f03_toktik/config/helpers/human_format.dart';
import 'package:f03_toktik/domain/entities/video_post.dart';
import 'package:flutter/material.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          value: video.likes,
          iconColor: Colors.red,
          iconData: Icons.favorite,
        ),
        _CustomIconButton(
          value: video.views,
          iconData: Icons.remove_red_eye,
        )
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color color;

  const _CustomIconButton({
    required this.value,
    required this.iconData,
    iconColor,
  }) : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {}, icon: Icon(iconData, color: color, size: 40)),
        Text(HumanFormats.humanReadableNumber(value.toDouble())),
      ],
    );
  }
}
