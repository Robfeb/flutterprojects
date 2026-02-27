class Story {
  final String storyTitle;
  final String choice1;
  final String choice2;
  final int nextStoryIfChoice1;
  final int nextStoryIfChoice2;

  Story({
    required this.storyTitle,
    required this.choice1,
    required this.choice2,
    required this.nextStoryIfChoice1,
    required this.nextStoryIfChoice2,
  });
}
