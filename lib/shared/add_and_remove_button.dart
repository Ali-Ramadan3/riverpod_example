import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddAndRemoveButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  const AddAndRemoveButton({super.key,required this.onPressed,required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: (title=="Add")?Colors.green:Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon((title=="Add")?Icons.add:Icons.close_sharp, color: Colors.white),
            const SizedBox(width: 5),
            Text(title, style: const TextStyle(color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
