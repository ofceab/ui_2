import 'package:flutter/material.dart';

class AppTheme{

  
  /// This part is about background and accent Colors 

  ///This is the color choose for the headerBackground
  static Color headerBackgroundColor=Colors.blueGrey.shade600;
  
  ///This is the color choose for the main Background
  static Color mainBackgroundColor=Colors.black87;

  ///Second background color for other perpective
  static Color secondaryBackgroundColor=Colors.black38;

  ///This is the color choose for the accentColor
  static Color accentColor=Colors.yellow[700];

  ///This is general text Color 
  static Color generalTextColor=Colors.white;
  

  
  /// Here the part where all style and color 
   
    static TextStyle usernameTextStyle=TextStyle(
      fontWeight: FontWeight.w400,
      color: generalTextColor,
      fontSize: 22
    );

    ///General textStyle
    static TextStyle generalTextStyle=TextStyle(
      fontWeight: FontWeight.w400,
      color: generalTextColor,
    );

    /// Extra textStyle
    static TextStyle extraTextStyle=usernameTextStyle.copyWith(
      color: Colors.black54
    );

    
    /// Padding and Margin defaultUnit
    static  double defaultPadding=20;
    static  double defaultHeight=150;
    static  double defaultMargin=20;

    
    ///Icon size
    static double defaultIconSize=28.9;

    /// Icon colors
    static Color unselectedIconColor=Colors.white38;

    static Color selectedIconColor=Colors.white;
}