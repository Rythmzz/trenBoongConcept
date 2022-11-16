import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tren_boong_concept/infrastructure/repository/card_repository.dart';

import 'main_card_event.dart';
import 'main_card_state.dart';

class MainCardBloc extends Bloc<MainCardEvent, MainCardState> {
  //pass value to state to reponse to UI

  MainCardBloc({required CardRepository cardRepository})
      : _cardRepository = cardRepository,
        super(CardInitialState()) {
    on<GetCardEvent>(fetchRandomCard);
    on<ChangeCardEvent>(changeCard);
  }

  final CardRepository _cardRepository;

  Future<void> fetchRandomCard(
      GetCardEvent event, Emitter<MainCardState> state) async {
    emit(CardLoadingState());
    var card = _cardRepository.fetchRandomCardByUser('id');
    try {
      emit(CardLoadSuccessState(card));
    } catch (e) {
      emit(CardLoadFailState());
    }
  }

  FutureOr<void> changeCard(
      ChangeCardEvent event, Emitter<MainCardState> state) async {
    print('change roi ne');
    emit(CardLoadingState());
    try {
      emit(CardLoadSuccessState(event.card));
    } catch (e) {
      emit(CardLoadFailState());
    }
  }
}
