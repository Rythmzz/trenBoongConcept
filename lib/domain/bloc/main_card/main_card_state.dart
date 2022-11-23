import 'package:equatable/equatable.dart';
import 'package:tren_boong_concept/domain/entity/card_entity.dart';

abstract class MainCardState extends Equatable {
  const MainCardState();

  @override
  List<Object> get props => [];
}

class CardInitialState extends MainCardState {}

class CardLoadingState extends MainCardState {}

class CardLoadSuccessState extends MainCardState {
  final CardEntity card;
  const CardLoadSuccessState(this.card);
}

class CardLoadFailState extends MainCardState {}
