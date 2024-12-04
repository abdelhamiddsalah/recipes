import 'package:flutter/widgets.dart';
import 'package:recipes/features/home/ui/widgets/bottomItem.dart';

class ListviewInHome extends StatelessWidget {
  const ListviewInHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, builder) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: const Bottomitem(),
          );
        },
      ),
    );
  }
}
