import 'package:flutter/material.dart';
import 'package:surgtest_smpl/models/video_model.dart';

class VideoCard extends StatelessWidget {
  const VideoCard(this.videoModel, {super.key});

  final List<VideoModel> videoModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: videoModel.length,
      shrinkWrap: true,
      itemBuilder: (context, i) {
        final videoModels = videoModel[i];
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
              // const BoxShadow(
              //     color: Colors.white,
              //     offset: Offset(4.0, 4.0),
              //     blurRadius: 15,
              //     spreadRadius: 1.0),
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
                      videoModels.title!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(videoModels.subtitle!),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.lock),
              ],
            ),
          ),
        );
      },
    );
  }
}
