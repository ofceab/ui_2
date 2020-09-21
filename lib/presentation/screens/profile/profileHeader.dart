import 'package:flutter/material.dart';
import 'package:help_other/utils/appTheme.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      height: AppTheme.defaultHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade900,
              borderRadius: BorderRadius.circular(25)
            ),
            width: 155,
            child: Row(
              children: [
                Icon(Icons.remove_red_eye,color: AppTheme.accentColor,),
                Text('Customize your cover >',style: AppTheme.generalTextStyle,)
              ],
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.blueGrey.shade900,
            child: Stack(
              children: [
                Icon(Icons.menu,color: AppTheme.selectedIconColor,
            size: AppTheme.defaultIconSize,),

            Positioned(
              top: 1.5,
              right: 0.5,
              child: CircleAvatar(
                radius: 1.5,
                backgroundColor: AppTheme.accentColor,
              ))
              ],
            ),
          )
          ],     
      ),
    );
  }
}