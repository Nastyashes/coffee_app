import 'package:coffee_app/src/presentation/screens/few_page/mini_item.dart';
import 'package:coffee_app/src/presentation/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:coffee_app/src/presentation/bloc/coffees_bloc/coffee_bloc.dart';
import 'package:coffee_app/src/presentation/bloc/coffees_bloc/coffee_event.dart';
import 'package:coffee_app/src/presentation/bloc/coffees_bloc/coffee_state.dart';
import 'package:coffee_app/src/presentation/screens/naw_bar/navbar.dart';

class Few extends StatefulWidget {
  const Few({super.key});

  @override
  State<Few> createState() => FewState();
}

class FewState extends State<Few> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CoffeeBloc>(context).add(SortCoffeesByLiked());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoffeeBloc, CoffeeState>(
      builder: (context, state) {
        if (state is CoffeeLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is CoffeeLoaded) {
          return Scaffold(
            appBar: AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
                title:
                    Text('Favorite Coffees', style: AppFonts.title2.darkGrey)),
            body: ListView(
              children:
                  state.coffees.map((e) => MiniItemCoffee(item: e)).toList(),
            ),
            bottomNavigationBar: const NavigationPage(),
          );
        } else if (state is CoffeeError) {
          return Center(child: Text(state.message));
        } else {
          return const Center(child: Text('No coffees available'));
        }
      },
    );
  }
}
