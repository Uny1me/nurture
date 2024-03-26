/*
    <---  Schema Explained -->
    The curated content for each user is based on their preferences, hence we can have the category match up to their preference
 */

class Content {
  final String name;
  final String description;
  final String author;
  final String type;
  final String image;

  Content(
      {required this.name,
      required this.description,
      required this.author,
      required this.type,
      required this.image});
}

class Category {
  final int id;
  final String name;
  final String description;

  Category({required this.id, required this.name, required this.description});
}
