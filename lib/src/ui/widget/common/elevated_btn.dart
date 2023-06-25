import 'package:flutter/material.dart';
class PrimaryElevatedBtn extends StatefulWidget {
  final VoidCallback onBtnPressed ;
  final String  text  ;
  final bool isEnabled ;
  final TextStyle? textStyle ;
  const PrimaryElevatedBtn({
    required this.onBtnPressed ,
    this.textStyle ,
    this.isEnabled = true ,
    required this.text ,
    Key? key}) : super(key: key);

  @override
  State<PrimaryElevatedBtn> createState() => _PrimaryElevatedBtnState();
}

class _PrimaryElevatedBtnState extends State<PrimaryElevatedBtn> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
        onPressed: widget.onBtnPressed,
        style: buttonStyle(size),
        child: _txt);
  }

  Widget get _txt => Text(widget.text , style:widget.textStyle ?? const  TextStyle(
      fontSize: 14 ,
     color: Colors.black,
     fontWeight: FontWeight.w400
  ));

  ButtonStyle   buttonStyle(Size size) => ElevatedButton.styleFrom(
       backgroundColor:widget.isEnabled?  Colors.white: Colors.grey ,
      maximumSize: Size(size.width, 40),
      minimumSize:Size(size.width, 40) ,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
      );
}
