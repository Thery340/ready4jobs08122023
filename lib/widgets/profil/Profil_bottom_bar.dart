import 'package:flutter/material.dart';
import 'package:ready4jobs/widgets/profil/Profil_constants.dart';

class ProfilBottomNavigationBarItemInfo {
  final IconData iconData;
  final String routeName;

  ProfilBottomNavigationBarItemInfo({required this.iconData, required this.routeName});
}

class BottomNavigationBarWidget extends StatelessWidget {
  final List<ProfilBottomNavigationBarItemInfo> navigationItems = [
    ProfilBottomNavigationBarItemInfo(iconData: Icons.home, routeName: '/homepage'),
    ProfilBottomNavigationBarItemInfo(iconData: Icons.description, routeName: '/cv'),
    ProfilBottomNavigationBarItemInfo(iconData: Icons.calendar_today, routeName: '/entretiens'),
    ProfilBottomNavigationBarItemInfo(iconData: Icons.person, routeName: '/profil'),
    ProfilBottomNavigationBarItemInfo(iconData: Icons.lightbulb, routeName: '/forum'),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      key: UniqueKey(),
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        side: BorderSide(
          width: 0.2,
        ),
      ),
      child: Container(
        height: 56.0,
        decoration: BoxDecoration(
          color: kAppBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 20,
              offset: Offset(0, -5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: navigationItems.map((item) {
            return Expanded(
              child: IconButton(
                onPressed: () => Navigator.pushNamed(context, item.routeName),
                icon: Icon(item.iconData),
                color: kWelcomeButtonTextStyle.color,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}


// BottomNavigationBarWidget est un widget personnalisé qui affiche une barre de navigation en bas de l'écran.
// Il utilise un Material widget pour ajouter de l'élévation et un contour arrondi à la barre de navigation.
// La couleur de fond de la barre de navigation est définie en utilisant la constante kAppBackgroundColor.
// La barre de navigation contient une rangée de IconButton, chacun représentant un élément de navigation.
// Chaque IconButton est associé à une route spécifique et une action de navigation est déclenchée lorsque l'utilisateur appuie sur un bouton.
// La couleur des icônes est définie en utilisant la couleur de la constante kWelcomeButtonTextStyle.