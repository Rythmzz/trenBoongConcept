import 'package:equatable/equatable.dart';

import '../../entity/card_entity.dart';

abstract class UserCardsState extends Equatable {
  const UserCardsState();

  @override
  List<Object> get props => [];
}

class CardsInitialState extends UserCardsState {}

class CardsLoadingState extends UserCardsState {}

class CardsLoadSuccessState extends UserCardsState {
  final List<CardEntity> cards;

  CardsLoadSuccessState(this.cards);
}

class CardsLoadFailState extends UserCardsState {}
