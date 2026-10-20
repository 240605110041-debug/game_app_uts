class SystemRequirements {
  final String os;
  final String processor;
  final String memory;
  final String graphics;
  final String storage;

  SystemRequirements({
    required this.os,
    required this.processor,
    required this.memory,
    required this.graphics,
    required this.storage,
  });

  factory SystemRequirements.fromJson(Map<String, dynamic> json) {
    return SystemRequirements(
      os: json['os'] ?? '-',
      processor: json['processor'] ?? '-',
      memory: json['memory'] ?? '-',
      graphics: json['graphics'] ?? '-',
      storage: json['storage'] ?? '-',
    );
  }
}

class Game {
  final String id;
  final String title;
  final String category;
  final String releaseDate;
  final String imageUrl;
  final String description;
  final SystemRequirements systemRequirements;

  Game({
    required this.id,
    required this.title,
    required this.category,
    required this.releaseDate,
    required this.imageUrl,
    required this.description,
    required this.systemRequirements,
  });

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      id: json['id'],
      title: json['title'],
      category: json['category'],
      releaseDate: json['releaseDate'],
      imageUrl: json['imageUrl'],
      description: json['description'],
      systemRequirements: SystemRequirements.fromJson(json['systemRequirements']),
    );
  }
}