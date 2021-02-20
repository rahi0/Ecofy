import 'package:flutter/material.dart';


//////////// How to Call /////////////

// _enable = false;

// CustomSwitch(
//    value: _enable ,
//    onChanged: (bool val){
//       setState(() {
//          _enabled = val;
//       });
//    },
// ),

class CustomSwitch extends StatefulWidget {
    final bool value;
    final ValueChanged<bool> onChanged;

    CustomSwitch({
      Key key,
      this.value,
      this.onChanged})
      : super(key: key);

    @override
   _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
     with SingleTickerProviderStateMixin {
    Animation _circleAnimation;
    AnimationController _animationController;

    @override
    void initState() {
       super.initState();
      _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 60));
      _circleAnimation = AlignmentTween(
          begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
          end: widget.value ? Alignment.centerLeft :Alignment.centerRight).animate(CurvedAnimation(
          parent: _animationController, curve: Curves.linear));
    }

  @override
  Widget build(BuildContext context) {
      return AnimatedBuilder(
               animation: _animationController,
               builder: (context, child) {
                      return GestureDetector(
                             onTap: () {
                                 if (_animationController.isCompleted) {
                                     _animationController.reverse();
                                 } else {
                                     _animationController.forward();
                                 }
                                widget.value == false
                                     ? widget.onChanged(true)
                                     : widget.onChanged(false);
                              },
                             child: Container(
                                     width: 45.0,
                                     height: 28.0,
                                     decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(24.0),
                                     color: _circleAnimation.value == 
                                             Alignment.centerLeft
                                           ? Colors.grey
                                           : Color(0xFFFF9100),),
                                   child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 2.0, bottom: 2.0, right: 2.0, left: 2.0),
                                       child:  Container(
                                                 alignment: widget.value 
                                                    ? Alignment.centerRight 
                                                    : Alignment.centerLeft,
                                  child: Container(
                                          width: 20.0,
                                          height: 20.0,
                                          decoration: BoxDecoration(
                                                  shape: BoxShape.circle, 
                                                  color: Colors.white),
                                          ),
                                   ),
                                ),
                            ),
                          );
                     },
               );
         }
       }