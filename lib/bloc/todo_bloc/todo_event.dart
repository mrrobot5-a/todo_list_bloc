import 'package:equatable/equatable.dart';
import 'package:todo_list_bloc/model/todo_model.dart';

class TodoEvent extends Equatable {
  const TodoEvent();

  @override
  List<Object?> get props => [];
}

//Todo Event add

class AddTodo extends TodoEvent {
  //create an object from todoModel
  final TodoModel todo;

  //constructor
  const AddTodo(this.todo);

  @override
  List<Object?> get props {
    return [todo];
  }
}

//Todo Event delete

class DeleteTodo extends TodoEvent {
  final String id;
  const DeleteTodo(this.id);

  @override
  List<Object?> get props {
    return [id];
  }
}

// Event to toggle task completion status

class ToggleTodoStatus extends TodoEvent {
  final String id;
  const ToggleTodoStatus(this.id);

  @override
  List<Object?> get props {
    return [id];
  }
}
