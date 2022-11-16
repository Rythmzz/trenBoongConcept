import '../../domain/entity/card_entity.dart';

class CardRepository {
  List<CardEntity> fetchCardsByUser(String id) {
    return [
      CardEntity(
          '1',
          'Luffy Strawhat 1',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaJ1CNiDNe8AZHYJDrlkkPN6LdThRBzUENXs9B1N2JM9BiFWZsNsbsdRUj9VizvchzLz4&usqp=CAU',
          350000),
      CardEntity(
          '2',
          'Luffy Strawhat 2',
          'https://assets.st-note.com/img/1662544326219-6WCv8s0PTA.jpg?width=2000&height=2000&fit=bounds&quality=85',
          350000),
      CardEntity(
          '3',
          'Sanji 1',
          'https://asia-en.onepiece-cardgame.com/images/cardlist/card/OP02-026.png?20221104',
          350000),
      CardEntity(
          '4',
          'Ace 1',
          'https://asia-en.onepiece-cardgame.com/images/cardlist/card/OP02-013.png?20221104',
          350000),
      CardEntity(
          '5',
          'White Bear 1',
          'https://asia-en.onepiece-cardgame.com/images/cardlist/card/OP02-001_p1.png?20221104',
          350000),
      CardEntity(
          '6',
          'White Bear 2',
          'https://asia-en.onepiece-cardgame.com/images/cardlist/card/OP02-001.png?20221104',
          350000)
    ];
  }

  CardEntity fetchRandomCardByUser(String id) {
    return CardEntity(
        '1',
        'Luffy Strawhat 1',
        'https://asia-en.onepiece-cardgame.com/images/cardlist/card/OP02-013.png?20221104',
        350000);
  }
}
