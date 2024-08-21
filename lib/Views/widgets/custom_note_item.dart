
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left: 20,top: 20,bottom: 30),
      width: double.infinity,
      // height: 200,
      decoration:const BoxDecoration(
        color: Color.fromARGB(255, 168, 152, 150) ,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
          title:const Padding(
            padding:  EdgeInsets.only(bottom: 20),
            child:  Text(
              'Flutter Tips',
              style: TextStyle(
                fontSize: 35,
                color: Colors.white
              ),
            ),
          ),
          subtitle:const Text(
            'Build Your Career With Ahmed Ashraf',
            style: TextStyle(
              fontSize: 19
            ),
          ),
          trailing: IconButton(
            onPressed: (){},
            icon:const Icon(
            
            FontAwesomeIcons.trash,
            color: Colors.black,
            size: 25  ,
          ),) 
              ),
          const Padding(
            padding:  EdgeInsets.only(right: 35,top: 30),
            child:  Text(
              "21-08-2024",
              style: TextStyle(
                fontSize: 16
              ),
            ),
          ),
        ],
      ),
    );
  }
}
