import 'package:bloc_journey/screens/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeBloc homeBloc = HomeBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      // listenWhen: (previous, current) {
      //   null;
      // },
      // buildWhen: (previous, current) {
      //   null;
      // },
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Grocery App"),
            actions: [
              IconButton(
                  onPressed: () {
                    homeBloc.add(HomeproductWishlistButtonClickedEvent());
                  },
                  icon: Icon(Icons.favorite_border)),
              IconButton(
                  onPressed: () {
                    homeBloc.add(HomeproductCartButtonClickedEvent());
                  },
                  icon: Icon(Icons.shopping_cart))
            ],
          ),
        );
      },
    );
  }
}
