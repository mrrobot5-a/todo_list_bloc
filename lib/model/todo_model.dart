// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:equatable/equatable.dart';

class TodoModel extends Equatable {
  //!Properties
  final String id;
  final String title;
  final bool isDone;
  //!Constructor
  TodoModel({
    required this.id,
    required this.title,
    this.isDone = false, //default is false
  });
  //*Copy method to update the Task

  TodoModel copyWith({String? title, bool? isDone}) {
    return TodoModel(
      id: id,
      title: title ?? this.title,
      isDone: isDone ?? this.isDone,
    );
  }

  //*Required of Equatable class
  @override
  List<Object> get props {
    return [id, title, isDone];
  }
}
