import 'package:flutter/material.dart';

final List<String> noteDescription = [];
final List<String> noteHeading = [];
TextEditingController noteHeadingController = new TextEditingController();
TextEditingController noteDescriptionController = new TextEditingController();
FocusNode textSecondFocusNode = new FocusNode();

int notesHeaderMaxLenth = 25;
int notesDescriptionMaxLines = 5;
int notesDescriptionMaxLenth=5;
String deletedNoteHeading = "";
String deletedNoteDescription = "";


List<Color> noteColor = [
  Colors.purpleAccent
];
List<Color> noteMarginColor = [
  Colors.purpleAccent
];