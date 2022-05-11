import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    required this.function,
  });

  final void Function() function;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 100,
      left: MediaQuery.of(context).size.width / 2.5,
      child: Container(
        height: 90,
        width: 90,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(
                0.1,
              ),
              blurRadius: 30,
              offset: const Offset(
                0,
                50,
              ),
              spreadRadius: 5,
            )
          ],
        ),
        child: FloatingActionButton(
          onPressed: function,
          tooltip: 'Increment',
          child: const Icon(
            Icons.arrow_forward,
          ),
        ),
      ),
    );
  }
}
