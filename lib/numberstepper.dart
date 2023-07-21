import'package:flutter/material.dart';



class NumberStepper extends StatefulWidget{
   final int initialValue;
   final int min;
   final int max;
   final int step;

   final Function(int) onChanged;

   const NumberStepper({
    super.key,
    required this.initialValue,
    required this.min,
    required this.max,
    required this.step,
    required this.onChanged,

   });


   @override
   State<NumberStepper> createState()=> _NumberStepperState();
}

class _NumberStepperState extends State<NumberStepper>{

  int _currentValue=0;

   @override
   void initState(){
    super.initState();

    _currentValue=widget.initialValue;
   }






  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
           height: 25,
          width: 25,
          decoration: BoxDecoration(
    color: Color.fromARGB(255, 177, 184, 180),
    border: Border.all(color: const Color.fromARGB(255, 99, 90, 90))
     // Set the background color of the container
     // Set the border radius (optional)
    
  ),
          child: IconButton(onPressed: (){
             setState(() {
               if(_currentValue>widget.min){
                _currentValue  -=  widget.step;
               }
             });
          }, icon: Icon(Icons.remove),
          iconSize: 15,),
        ),
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
    color: Color.fromARGB(255, 177, 184, 180),
    border: Border.all(color: const Color.fromARGB(255, 99, 90, 90))
    
     // Set the background color of the container
     // Set the border radius (optional)
    
  ),
          child: Center(
            child: Text(
              _currentValue.toString(),
              style: TextStyle(fontSize: 15),),
          ),
        ),
           Container(
             height: 25,
          width: 25,
            decoration: BoxDecoration(
    color: Color.fromARGB(255, 177, 184, 180),
    border: Border.all(color: const Color.fromARGB(255, 99, 90, 90))),
             child: IconButton(onPressed: (){
              setState(() {
               if(_currentValue<widget.max){
                _currentValue  += widget.step;
               }
               widget.onChanged(_currentValue);
             });
                   }, icon: Icon(Icons.add),
                   iconSize:15),
           ),
      ],
    );
  }
}