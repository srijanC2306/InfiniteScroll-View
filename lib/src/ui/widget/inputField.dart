
import 'package:base_code/src/ui/ui_resources/color_constants.dart';
import 'package:flutter/material.dart';
class InputField extends StatefulWidget {
  final TextEditingController textEditingController ;
  final String hintText ;
  final Gradient? gradientBackground ;
  final Color? backgroundColor ;
  final TextInputType?  inputType ;
  final Function(String)?  onChanged ;
  final Widget?  suffixIcon ;
  final bool isPassword ;
  const InputField({
    required this.textEditingController ,
    this.backgroundColor ,
    this.suffixIcon ,
    this.onChanged ,
    this.gradientBackground ,
    this.inputType  ,
    this.isPassword = false  ,
    required this.hintText ,
    Key? key}) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late ValueNotifier<bool> obscureText ;

  @override
  void initState() {
    obscureText = ValueNotifier(false) ;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow:   [ BoxShadow(offset: const Offset(0,4) , blurRadius: 4 ,spreadRadius: 1,color: Colors.black.withOpacity(0.5)) ],
        color: widget.backgroundColor ,
        gradient:widget.gradientBackground ??LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter ,
            colors: [
          ColorConstants.textGradientTop ,
          ColorConstants.textGradientBottom ,
            ])
      ),
      child: ValueListenableBuilder<bool>(
        valueListenable: obscureText,
        builder: (context , isObscure , _) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8 ),
            child: TextFormField(
              controller: widget.textEditingController,
              onChanged: widget.onChanged,
              keyboardType: widget.inputType ??TextInputType.text,
              decoration: InputDecoration(
                hintText: widget.hintText,
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
                suffixIcon: widget.isPassword ?  IconButton(
                  icon: Icon(
                    !isObscure
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.black54,
                  ),
                  onPressed: () {
                    obscureText.value = !isObscure;
                  },
                ): widget.suffixIcon ?? const SizedBox.shrink()
              ),
            ),
          );
        }
      ),
    );
  }
}
