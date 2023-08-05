import 'package:flutter/material.dart';
import 'package:mvvm_clean_arch/Core/utils/styles.dart';

class FreeOrPay extends StatelessWidget {
  const FreeOrPay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("9.88",
                    textAlign: TextAlign.center,
                    style: Styles.textStyle18.copyWith(color: Colors.black)),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.orange.shade300,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Free Preview", style: Styles.textStyle18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
