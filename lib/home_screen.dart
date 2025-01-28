import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_eighth_project/stream_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            final stockPrice = ref.watch(streamProvider);
            return stockPrice.when(
                data: (price) => Text(
                      price.toStringAsFixed(2),
                      style: TextTheme.of(context).bodyLarge,
                    ),
                error: (error, stackTrace) => Text("Error : $error"),
                loading: () => LinearProgressIndicator());
          },
        ),
      ),
    );
  }
}
