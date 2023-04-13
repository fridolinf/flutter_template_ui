class Course {
  String author;
  String authorImage;
  String title;
  String imageUrl;

  Course(this.author, this.authorImage, this.imageUrl, this.title);

  static List<Course> generateCourse() {
    return [
      Course("Erren", "assets/icons/avatar01.png", "assets/images/course01.png",
          "Plant Technologies"),
      Course("Anenda Yearsc", "assets/icons/avatar02.png",
          "assets/images/course02.png", "How to become a hero"),
      Course("Sctawch Sereria", "assets/icons/avatar03.png",
          "assets/images/course03.png", "How to be stronger"),
    ];
  }
}
