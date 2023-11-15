import 'package:flutter/material.dart';
import 'package:surgtest_smpl/models/grandtest_model.dart';

class GrandTestCard extends StatelessWidget {
  const GrandTestCard(this.grandTestModel, {super.key});

  final List<GrandTestModel> grandTestModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: grandTestModel.length,
      shrinkWrap: true,
      itemBuilder: (context, i) {
        final grandTestModels = grandTestModel[i];
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 50,
          width: 280,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 2.5,
                  spreadRadius: 0.2),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        grandTestModels.title!,
                        maxLines: 2,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(grandTestModels.subtitle!),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Buy Now'),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.lock),
              ],
            ),
          ),
        );
      },
    );
  }
}
