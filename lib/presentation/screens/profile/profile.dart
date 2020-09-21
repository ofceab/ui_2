import 'package:flutter/material.dart';
import 'package:help_other/utils/appTheme.dart';

import 'profileBody.dart';
import 'profileHeader.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Colors.blueGrey.shade800,
          ),
          _buildContainer(context),
          Positioned(
            left: 7,
            top: AppTheme.defaultHeight-25,
            child: UserProfileBar(),
          ),

        ],
      ),
    );
  }

  Column _buildContainer(context){
    const children2 =const [
          ProfileHeader(),
          ProfileBody(),
        ];
    return Column(
        children: children2,
      );
  }
}
