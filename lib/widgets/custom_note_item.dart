
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/widgets/edit_new_view_body.dart';

class NoteItem extends StatelessWidget {
   NoteItem({super.key ,required this.containerColor});
  Color containerColor ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return EditNewViewBody() ;
        }));
      },
      child: Container(
        padding:const EdgeInsets.only(left: 20,top: 20,bottom: 30),
        width: double.infinity,
        // height: 200,
        decoration: BoxDecoration(
          color: containerColor ,
          borderRadius:const BorderRadius.all(Radius.circular(16)),
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
                  color: Colors.black
                ),
              ),
            ),
            subtitle:const Text(
              'Build Your Career With Ahmed Ashraf',
              style: TextStyle(
                fontSize: 19,
                color: Colors.black
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
      ),
    );
  }
}
