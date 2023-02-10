import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:flutter/material.dart';

class ErrorDialog extends StatefulWidget {
  ArtSweetAlertType type;
  String title;
  String text;


  ErrorDialog(this.type, this.title, this.text);

  @override
  State<ErrorDialog> createState() => _ErrorDialogState();
}

class _ErrorDialogState extends State<ErrorDialog> {
  @override
  Widget build(BuildContext context) {
    return ArtSweetAlert.show(
        context: context,
        artDialogArgs: ArtDialogArgs(
            type: widget.type,
            title: widget.title,
            text: widget.text
        )
    );;
  }
}
