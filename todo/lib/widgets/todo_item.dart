import 'package:flutter/material.dart';
import 'package:todo/colors.dart';
import '../model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;

  const ToDoItem({
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: (10),
      ),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
          print("this is ok");
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdblue,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 15,
            color: tdBlack,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 10),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(6),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 20,
            icon: Icon(Icons.delete),
            onPressed: () {
              onDeleteItem(todo.id);
              // print("clicked on delete button");
            },
          ),
        ),
      ),
    );
  }
}
