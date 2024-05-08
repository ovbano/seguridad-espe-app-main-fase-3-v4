import 'package:flutter/material.dart';

class CustonInput extends StatelessWidget {
  final IconData icon;
  final String placeholder;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final bool isPassword;
  final bool obscurePassword;
  final Widget? suffixIcon;

  const CustonInput({
    super.key,
    required this.icon,
    required this.placeholder,
    required this.textController,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.obscurePassword = true, // Cambiado a true por defecto
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                  color: Color(0xFF1F5545),
                  //offset: para mover la sobra
                  offset: Offset(0.5, 1.8),
                  blurRadius: 5)
            ]),
        child: TextField(
          textCapitalization: TextCapitalization.sentences,
          controller: textController,
          autocorrect: false,
          maxLength: 50,
          obscureText: isPassword,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            prefixIcon: Icon(icon, color: const Color.fromARGB(255, 0, 0, 0)),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(3.4)),
              borderSide: BorderSide(
                color: Colors.black, // Color del borde negro
                width: 1, // Ancho del borde
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(3.4)),
              borderSide: BorderSide(
                color: Colors.black, // Color del borde negro
                width: 1, // Ancho del borde
              ),
            ),
            hintText: placeholder,
            counterText:
                '', // Establecer el contador de caracteres como una cadena vacía
            contentPadding: const EdgeInsets.symmetric(
                vertical:
                    16), // Establecer el contador de caracteres como una cadena vacía
          ),
        ),
      ),
    ]);
  }
}
