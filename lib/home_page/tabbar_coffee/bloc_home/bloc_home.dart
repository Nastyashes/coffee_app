import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'event_home.dart';
part 'state_home.dart';


class HomePageBloc extends Bloc<HomePageEvent,HomePageState>{
  HomePageBloc() : super(HomePageInitial())  {
    on<ClickStar>((event,emit){
    log( 'Raiting+');
    });
}
}