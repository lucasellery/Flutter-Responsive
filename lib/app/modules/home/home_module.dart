import 'package:responsividade/app/modules/home/home_controller.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:responsividade/app/modules/home/home_page.dart';
import 'package:responsividade/app/modules/home/home_two.dart';

class HomeModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => HomeController()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => HomeTwo();

  static Inject get to => Inject<HomeModule>.of();
}
