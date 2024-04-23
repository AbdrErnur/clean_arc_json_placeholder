import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zagruzka_ekrana/src/presentation/home_page_bloc/home_page_bloc.dart';
import 'package:zagruzka_ekrana/src/presentation/pages/my_home_page.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomePageBloc>(context).add(InitializeHomePageEvent());
    });
  }

  void _blocListener(BuildContext context, HomePageState state) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MyHomePage(title: 'Main page'),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width / 2;
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Slider')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //BlocBuilder + BlocListener(functional'no) = BlocConsumer
            BlocConsumer<HomePageBloc, HomePageState>(
              listenWhen: (oldState, newState){
                return newState.percent>=1;
              },
              listener: _blocListener,
              builder: (context, state) {
                return Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Container(
                      width: w,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black12,
                      ),
                    ),
                    Container(
                      width: state.percent * w,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '${(state.percent * 100).toInt()}%',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
