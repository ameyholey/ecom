import 'package:flutter/material.dart';

import '../../utils/constants/enums.dart';

class Tbrandtitletext extends StatelessWidget {
  const Tbrandtitletext({
    super.key,
    this.color,
    required this.title,
    this.maxlines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextsizes = TextSizes.small,

  });

  final Color? color;
  final String title;
  final int maxlines;
  final TextAlign? textAlign;
  final TextSizes brandTextsizes;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        overflow: TextOverflow.ellipsis,
        maxLines: maxlines,
        style: brandTextsizes == TextSizes.small
            ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
            : brandTextsizes == TextSizes.medium
                ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
                : brandTextsizes == TextSizes.large
                    ? Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .apply(color: color)
                    : Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: color));
  }
}
