import 'package:flutter/material.dart';
class TProductprixe extends StatelessWidget {
  const TProductprixe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$35.5',
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}