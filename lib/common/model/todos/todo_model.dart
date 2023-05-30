class Todo {
  int userId;
  int id;
  String title;
  bool completed;

  Todo(this.userId, this.id, this.title, this.completed);

  factory Todo.fromJson(Map<String, Object?> json) {
    int userId = json["userId"] as int;
    int id = json["id"] as int;
    String title = json["title"] as String;
    bool completed = json["completed"] as bool;
    return Todo(userId, id, title, completed);
  }

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
      };

  @override
  String toString() {
    return 'Todo{userId: $userId, id: $id, title: $title, completed: $completed, toJson: $toJson}';
  }
}
