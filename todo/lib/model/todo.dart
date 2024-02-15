class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });
  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Morning exercise', isDone: true),
      ToDo(id: '02', todoText: 'Team Meetings', isDone: true),
      ToDo(id: '03', todoText: 'Buy Groceries'),
      ToDo(id: '04', todoText: 'Check Emails'),
      ToDo(id: '06', todoText: 'Dinner'),
      ToDo(id: '05', todoText: 'Work on Flutter App'),
    ];
  }
}
