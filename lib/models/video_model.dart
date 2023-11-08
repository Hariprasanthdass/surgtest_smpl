class VideoModel {
  final String? title;
  final String? subtitle;

  VideoModel({this.title, this.subtitle});
}

final List<VideoModel> registeredVideoModel = [
  VideoModel(
    title: 'General Surgery video...',
    subtitle: 'Comprehensive lectures on General',
  ),
  VideoModel(
    title: 'Urology Video Lecture...',
    subtitle: 'omprehensive lectures on Urology',
  ),
  VideoModel(
    title: 'Neurosurgery Video...',
    subtitle: 'Comprehensive lectures for',
  ),
];
