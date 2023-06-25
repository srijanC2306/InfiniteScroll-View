
import 'package:base_code/routes/route_constants.dart';
import 'package:base_code/src/bloc/signin/signin_bloc.dart';
import 'package:base_code/src/ui/screens/inifinite_scroll.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routes{

  static Map<String , Widget Function(BuildContext)> routes() =>
      {
        RouteConstants.infiniteScrollRoute: (context) => BlocProvider(
          create: (_)=>SignInBloc(),
          child: InfiniteScrollView()
        ),
      };

}