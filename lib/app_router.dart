import 'package:flutter/material.dart';
import 'package:rick_and_morty/constants/strings.dart';
import 'package:rick_and_morty/presentation/screens/character_details_screen.dart';
import 'package:rick_and_morty/presentation/screens/characters_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case CHARACTERS_SCREEN:
        return MaterialPageRoute(builder: (_) => CharactersScreen());
      case CHARACTERS_DETAILS_SCREEN:
        return MaterialPageRoute(builder: (_) => CharacterDetailsScreen());
    }
  }
}
