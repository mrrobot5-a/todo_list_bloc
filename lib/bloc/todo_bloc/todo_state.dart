import 'package:equatable/equatable.dart';
import 'package:todo_list_bloc/model/todo_model.dart';

class TodoState extends Equatable {
  const TodoState();

  //
  @override
  List<Object?> get props {
    return [];
  }
}

//initial State
class TodoInitialState extends TodoState {}

// State when tasks are loaded or updated
class TodoLoaded extends TodoState {
  final List<TodoModel> todo;

  const TodoLoaded(this.todo);

  @override
  List<Object> get props {
    return [todo];
  }
}
