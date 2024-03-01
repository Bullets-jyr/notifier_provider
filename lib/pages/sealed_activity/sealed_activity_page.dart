import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/activity.dart';
import '../enum_activity/enum_activity_page.dart';
import 'sealed_activity_provider.dart';
import 'sealed_activity_state.dart';

class SealedActivityPage extends ConsumerStatefulWidget {
  const SealedActivityPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SealedActivityPageState();
}

class _SealedActivityPageState extends ConsumerState<SealedActivityPage> {
  Widget? prevWidget;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      ref.read(sealedActivityProvider.notifier).fetchActivity(activityTypes[0]);
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<SealedActivityState>(
      sealedActivityProvider,
      (previous, next) {
        // break를 처리하지 않아도 됩니다.
        // enhanced switch statement + pattern matching
        switch (next) {
          // 맞으면 SealedActivityFailure의 error property의 값을 String error에 저장합니다.
          case SealedActivityFailure(error: String error):
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text(error),
                );
              },
            );
          case _:
        }
      },
    );

    final activityState = ref.watch(sealedActivityProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('SealedActivityNotifier'),
        actions: [
          IconButton(
            onPressed: () {
              ref.invalidate(sealedActivityProvider);
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: switch (activityState) {
        SealedActivityInitial() => const Center(
            child: Text(
              'Get some activity',
              style: TextStyle(fontSize: 20),
            ),
          ),
        SealedActivityLoading() => const Center(
            child: CircularProgressIndicator(),
          ),
        // error property의 값을 사용하지 않을거라서...
        SealedActivityFailure() => prevWidget == null
            ? const Center(
                child: Text(
                  'Get some activity',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                  ),
                ),
              )
            : prevWidget!,
        SealedActivitySuccess(activity: Activity activity) => prevWidget =
              ActivityWidget(
            activity: activity,
          ),
      },
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          final randomNumber = Random().nextInt(activityTypes.length);
          ref.read(sealedActivityProvider.notifier).fetchActivity(activityTypes[randomNumber]);
        },
        label: Text(
          'New Activity',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
