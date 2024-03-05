import 'package:flutter/material.dart';

class MessageBox extends StatefulWidget {
  const MessageBox({super.key});

  @override
  State<MessageBox> createState() => _MessageBoxState();
}

class _MessageBoxState extends State<MessageBox> {
  @override
  Widget build(BuildContext context) {

    final textControler = TextEditingController();
    final focusNode = FocusNode();
    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40)
    );

    final inputDecoration = InputDecoration(
      hintText: 'Ingresa tú búsqueda',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon (Icons.search),
          onPressed: (){
            textControler.clear();
          },
          ),
    );
    return TextFormField(
      onTapOutside: (event){
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textControler,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textControler.clear();
        focusNode.requestFocus();
        },  
    );
  }
  }
