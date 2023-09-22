import 'package:document_reader/reader.dart';
import 'package:flutter/material.dart';

import 'package:document_reader/docs.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.menu),),
        title:  Text('READER'),
      ),
      body:
         Padding( padding: EdgeInsets.symmetric(horizontal:20.0 ,vertical: 10.0),
          child: SingleChildScrollView(
          
            child: Column(
            
              mainAxisAlignment: MainAxisAlignment.start,
            
              crossAxisAlignment: CrossAxisAlignment.start,
            
              children: [
              
                Text("Recent Documents",
                
                style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),
                
                ),

                Column(
                  
                  children:  Document.doclist.map((doc) =>   ListTile(
                    
                   onTap: (){

                    Navigator.push(context,MaterialPageRoute(builder: (context) => Reader(doc)));

                   },
                   
                   title: Text(doc.doctitle!,
                   
                   overflow: TextOverflow.ellipsis,
                   
                   ),

                   subtitle: Text("${doc.docpagenum}page" ),

                   trailing: Text(doc.docdate!,
                   
                   style: TextStyle(fontWeight: FontWeight.w100,color: Colors.grey),
                   
                   ),

                    leading: const Icon(Icons.picture_as_pdf,
                    
                      color: Colors.red,
                    
                      size: 28.0,
                    ),
                  
                  )).toList(),
                
                ),



              ],
            ),
          ),
        ),
    
    
    );
  }
}