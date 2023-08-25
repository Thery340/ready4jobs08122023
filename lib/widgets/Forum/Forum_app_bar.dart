import 'package:flutter/material.dart';
import 'package:ready4jobs/widgets/profil/Profil_constants.dart';

class ForumCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  ForumCustomAppBar({required this.title, this.actions});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kAppBarBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Couleur de l'ombre
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // Position de l'ombre
          ),
        ],
      ),
      child: AppBar(
        backgroundColor: Colors.transparent, // Fond transparent pour montrer l'ombre
        elevation: 0, // Pas d'élévation pour l'appbar réelle
        centerTitle: true,
        leading: Container(
          margin: EdgeInsets.only(left: 8.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: kAppBarTitleFontSize,
            fontWeight: kAppBarTitleFontWeight,
          ),
        ),
        actions: actions,
      ),
    );
  }
}