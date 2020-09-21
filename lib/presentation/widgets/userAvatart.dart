import 'package:flutter/material.dart';
import 'package:help_other/utils/appTheme.dart';

class UserAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border:Border.all(
          width: 3,
          color: Colors.black.withOpacity(0.7)
        ) 
      ),
      child: ClipRRect(
        borderRadius:BorderRadius.circular(50),
              child: CircleAvatar(
          radius: 50,
          child: Icon(Icons.person, size: AppTheme.defaultIconSize*3.7,),
          backgroundColor: Colors.blueGrey.shade600,
        ),
      ),
    );
  }
}