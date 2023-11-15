import 'package:flutter/material.dart';
import 'package:surgtest_smpl/models/quizzesmodel.dart';

class QuizzesCard extends StatelessWidget {
  const QuizzesCard(this.quizzesModel, {super.key});

  final List<QuizzesModel> quizzesModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: quizzesModel.length,
      shrinkWrap: true,
      itemBuilder: (context, i) {
        final quizzesModels = quizzesModel[i];
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
                  spreadRadius: 1.0),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  quizzesModels.title!,
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(quizzesModels.subtitle!),
              ],
            ),
          ),
        );
      },
    );
  }
}
