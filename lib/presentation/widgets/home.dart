import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
   

//  IconButton(
//               icon: const Icon(Icons.logout),
//               onPressed: (){Navigator.pushNamed(context, '/screen1');},
//             ),


      //   backgroundColor: Colors.white,
      // body: 
      //   Center(    
      //   child: Stack(
      //     children: [
      //        SizedBox(
      // width: double.infinity,
      // child: FloatingActionButton(
      //   backgroundColor: const Colors.white(),
      //   shape: new RoundedRectangleBorder(),
      //   elevation: 0.0,
      //   onPressed: () {
      //     print("entra");
      //   },
      //   child: Text(
      //     'Search',
      //     style: TextStyle(color: Colors.white),
      //   ),
            // ElevatedButton(
            //    style: ElevatedButton.styleFrom(
            //                     fixedSize: const Size(80, 25),
            //                      backgroundColor: Colors.white, // background (button) color
            //                      foregroundColor: Colors.black, // foreground (text) color
            //                      shadowColor: Colors.white,
                                
            //                   ),
            //                   onPressed:(){Navigator.pushNamed(context, '/screen1');},
            //                 child: const Text(
            //                   "Skip >",
            //                   style: TextStyle( color: Colors.black87,
            //        fontSize: 12,
            //        height: 2,
            //        decorationThickness: 3,
            //        fontWeight: FontWeight.w700,
            //        decorationStyle: TextDecorationStyle.wavy,
            //        fontStyle: FontStyle.normal,
            //        )),
            //                 ),
              const Padding(padding: EdgeInsets.fromLTRB(0, 100, 0, 200),
              child:  Image(image: AssetImage("assets/images/origdog.png"), height: 400, width: 250,),
              ),
             
            // Image(image: AssetImage("assets/images/whitedog.jpg"))
        ]      
        )
      )
    );
      
  }
}