import 'dart:math';
import 'dart:ui';

class Items{
  late int id;
  late String title;
  Color? color=Color((Random().nextDouble() * 0xffEE4B2B).toInt()).withOpacity(1.0);

  Items(this.id, this.title, {this.color});
}