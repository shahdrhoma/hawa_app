import 'package:flutter/material.dart';

class OTPTextField extends StatefulWidget {
  const OTPTextField({super.key});

  @override
  State<OTPTextField> createState() => _OTPTextFieldState();
}

class _OTPTextFieldState extends State<OTPTextField> {
  List<TextEditingController> controllers = List.generate(5, (_) => TextEditingController());
  List<FocusNode> focusNodes = List.generate(5, (_) => FocusNode());
  List<bool> isFilled = List.generate(5, (_) => false);

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    for (var node in focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(5, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: 50,
              height: 50,
              child: TextFormField(
                controller: controllers[index],
                focusNode: focusNodes[index],
                cursorColor: const Color(0xff49AAEF),
                cursorHeight: 30,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff414141),
                ),
                decoration: InputDecoration(
                  counterText: "",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Color(0xffD0D0D0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Color(0xff49AAEF), width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: isFilled[index] ? const Color(0xff49AAEF) : const Color(0xffD0D0D0),
                      width: isFilled[index] ? 2 : 1,
                    ),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    isFilled[index] = value.isNotEmpty;
                  });

                  if (value.isNotEmpty && index < 3) {
                    FocusScope.of(context).nextFocus(); 
                  } else if (value.isEmpty && index > 0) {
                    FocusScope.of(context).previousFocus(); 
                  }
                },
              ),
            ),
          );
        }),
      ),
    );
  }
}