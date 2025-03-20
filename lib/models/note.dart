// lib/models/note.dart
class Note {
  String title;
  String content;
  DateTime dateModified;

  // Note Model Fields

  Note({
    required this.title,
    required this.content,
    required this.dateModified,
  });

  // Constructor for fields (Every field must be required)

  
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'content': content,
      'dateModified': dateModified.toIso8601String(),
    };
  }

  // Serialize datas for db, such a json.

  static Note fromMap(Map<String, dynamic> map) {
    return Note(
      title: map['title'],
      content: map['content'],
      dateModified: DateTime.parse(map['dateModified']),
    );
  }
  
  // Deserialize datas from db, to show in app.
}
