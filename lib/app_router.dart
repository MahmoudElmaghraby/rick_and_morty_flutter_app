import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/business_logic/characters_cubit.dart';
import 'package:rick_and_morty/constants/strings.dart';
import 'package:rick_and_morty/data/repository/characters_repository.dart';
import 'package:rick_and_morty/data/web_services/characters_web_services.dart';
import 'package:rick_and_morty/presentation/screens/character_details_screen.dart';
import 'package:rick_and_morty/presentation/screens/characters_screen.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersRepository = CharactersRepository(CharactersWebServices());
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case CHARACTERS_SCREEN:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => charactersCubit,
            child: CharactersScreen(),
          ),
        );
      case CHARACTERS_DETAILS_SCREEN:
        return MaterialPageRoute(builder: (_) => CharacterDetailsScreen());
    }
  }
}
