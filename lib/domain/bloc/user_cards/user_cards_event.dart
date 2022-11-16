import 'package:equatable/equatable.dart';

abstract class UserCardsEvent extends Equatable {
  @override
  List<Object?> get props => <Object?>[];
}

class GetCardsEvent extends UserCardsEvent {}
