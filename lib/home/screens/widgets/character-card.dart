import 'package:flutter/material.dart';
import 'package:flutter_hangi/home/models/character.dart';

class CharacterCard extends StatelessWidget {
  final CharacterDTO characterDTO;
  const CharacterCard({Key? key, required this.characterDTO}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(children: [
        Image.network(
          characterDTO.image,
          width: 180,
          fit: BoxFit.cover,
        ),
        Expanded(
            child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  characterDTO.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  softWrap: true,
                ),
                Text(
                  characterDTO.species,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  characterDTO.status,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ]),
        ))
      ]),
    );
  }
}
