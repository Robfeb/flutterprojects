class Story {
  String storyTitle;
  String choice1;
  String choice2;
  int nextStoryIfChoice1;
  int nextStoryIfChoice2;
  Story(
      {this.storyTitle,
      this.choice1,
      this.choice2,
      this.nextStoryIfChoice1,
      this.nextStoryIfChoice2});
}
