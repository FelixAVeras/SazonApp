class RecepieModel {
  final int id;
  final String title;
  final String description;
  final List<String> ingredients;
  final List<String> steps;
  final String imageUrl;
  final String userId;
  final DateTime creationDate;
  final double rate;

  RecepieModel({
    this.id, 
    this.title, 
    this.description, 
    this.ingredients, 
    this.steps, 
    this.imageUrl, 
    this.userId, 
    this.creationDate, 
    this.rate = 0.0
  });

  factory RecepieModel.fromMap(Map<String, dynamic> data) {
    return RecepieModel(
      id: data['id'],
      title: data['title'],
      description: data['description'],
      ingredients: List<String>.from(data['ingredients']),
      steps: List<String>.from(data['steps']),
      imageUrl: data['image_url'] ?? '',
      userId: data['user_id'],
      creationDate: DateTime.parse(data['creation_date']),
      rate: data['rate']?.toDouble() ?? 0.0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'ingredients': ingredients,
      'steps': steps,
      'image_url': imageUrl,
      'user_id': userId,
      'creation_date': creationDate.toIso8601String(),
      'rate': rate,
    };
  }
}