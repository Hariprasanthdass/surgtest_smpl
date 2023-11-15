import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:surgtest_smpl/models/grandtest_model.dart';
import 'package:surgtest_smpl/models/mcqbank_model.dart';
import 'package:surgtest_smpl/models/quizzesmodel.dart';
import 'package:surgtest_smpl/models/video_model.dart';
import 'package:surgtest_smpl/widgets/grandtest_card.dart';
import 'package:surgtest_smpl/widgets/main_drawer.dart';
import 'package:surgtest_smpl/widgets/mcqbank_card.dart';
import 'package:surgtest_smpl/widgets/quizzes_card.dart';
import 'package:surgtest_smpl/widgets/videocard.dart';
import 'package:surgtest_smpl/constants/constant.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DashboardScreenState();
  }
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map(
          (item) => Container(
            child: Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('viswanath'),
      ),
      drawer: const MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    initialPage: 2,
                    autoPlay: false,
                  ),
                  items: imageSliders,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Text(
                      'Video Lecture Series',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      child: Text('View All'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: VideoCard(registeredVideoModel),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Text(
                      'MCQ Banks',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      child: Text('View All'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: McqBankCard(registeredMcqModel),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Text(
                      'Grand Test Pack',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      child: Text('View All'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: GrandTestCard(registeredGrandTest),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Text(
                      'Quizzes',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      child: Text('View All'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: QuizzesCard(registeredQuizzesModel),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
