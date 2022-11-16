import 'package:equatable/equatable.dart';

import '../../entity/card_entity.dart';

abstract class MainCardEvent extends Equatable {
  @override
  List<Object?> get props => <Object?>[];
}

class GetCardEvent extends MainCardEvent {}

class ChangeCardEvent extends MainCardEvent {
  final CardEntity card;

  ChangeCardEvent(this.card);
}
