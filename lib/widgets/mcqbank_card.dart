import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:surgtest_smpl/models/mcqbank_model.dart';

class McqBankCard extends StatelessWidget {
  const McqBankCard(this.mcqBankModel, {super.key});

  final List<McqBankModel> mcqBankModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: mcqBankModel.length,
      shrinkWrap: true,
      itemBuilder: (context, i) {
        final mcqBankModels = mcqBankModel[i];
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mcqBankModels.title!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Text('Expire on :'),
                        Text(
                          DateFormat('yyyy/MM/dd')
                              .format(mcqBankModels.expiredate!),
                        ),
                      ],
                    )
                  ],
                ),
                const Spacer(),
                const Icon(Icons.lock_open),
              ],
            ),
          ),
        );
      },
    );
  }
}
