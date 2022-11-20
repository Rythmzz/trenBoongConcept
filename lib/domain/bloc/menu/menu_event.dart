import 'package:equatable/equatable.dart';

abstract class MenuEvent extends Equatable {
  @override
  List<Object?> get props => <Object?>[];
}

class LoadMenuEvent extends MenuEvent {}
