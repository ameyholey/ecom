import 'package:flutter/material.dart';
class TProductprixe extends StatelessWidget {
  const TProductprixe({
    super.key, this.currency = '\$', required this.sign, this.maxlines = 1, this.isLarge= false , this.lineThrough = false,
  });
final String currency, sign;
final int maxlines;
final bool isLarge;
final lineThrough;

  get islagre => null;

  @override
  Widget build(BuildContext context) {
    return Text(
      currency + sign,

      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style:islagre ?  Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThrough ? TextDecoration.lineThrough : null) : Theme.of(context).textTheme.titleLarge!.apply(decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}