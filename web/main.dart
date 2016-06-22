// Copyright (c) 2016, Will Streuli. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'package:polymer/polymer.dart';

ButtonElement button1 = querySelector('#1');
ButtonElement button2 = querySelector('#2');
ButtonElement button3 = querySelector('#3');
ButtonElement button4 = querySelector('#4');
ButtonElement button5 = querySelector('#5');
ButtonElement button6 = querySelector('#6');
ButtonElement button7 = querySelector('#7');
ButtonElement button8 = querySelector('#8');
ButtonElement button9 = querySelector('#9');
ButtonElement button0 = querySelector('#0');

//List<ButtonElement> numberButtons = new List(10);

ButtonElement buttonAdd = querySelector('#add');
ButtonElement buttonTake = querySelector('#take');
ButtonElement buttonTimes = querySelector('#times');
ButtonElement buttonDivide = querySelector('#divide');
ButtonElement buttonEquals = querySelector('#equals');
ButtonElement buttonAC = querySelector('#ac');
ButtonElement buttonPoint = querySelector('#point');

main() async {
  await initPolymer();

  List numberButtons = [8,3,324234,234];

  print('wow');

  Iterator i = numberButtons.iterator;

  while (i.moveNext()) {
    String selector = '\# ${i.current}';
    print(selector);
    numberButtons[i.current] = querySelector(selector);
    print(numberButtons[i.current]);
  }

  querySelector('#output').text = 'Your Dart app is running.';
}
