import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../repository/coin_repository.dart';

import '../coin_bloc/coin_bloc.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isActive = false;
    return AppBar(
      title: const Text("CoinCap WebSocket"),
      actions: [
        StatefulBuilder(
          builder: (context, setState) {
            return Row(
              children: [
                const Text("Connection"),
                Switch(
                  value: isActive, 
                  onChanged: (value) {
                    isActive = value;
                    final event = isActive ? 
                      TurnOnCointEvent() : 
                      TurnOffCointEvent();
                    context.read<CoinBloc>().add(event);
                    setState((){});
                  },
                ),
              ],
            );
          }
        )
      ],
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

// =============================================================================

class CoinGridTile extends StatefulWidget {
  const CoinGridTile({
    super.key,
    required this.coinModel,
  });
  final CoinModel coinModel;


  @override
  State<CoinGridTile> createState() => _CoinGridTileState();
}

class _CoinGridTileState extends State<CoinGridTile> with SingleTickerProviderStateMixin {

  late AnimationController _animationController;
  late Animation<Color?> _animation;
  late Animation<double> _animationNumber;

  late MaterialColor endColor;
  late IconData arrowDirIcon;
  late bool isChanged;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this
    );
    _animation = ColorTween(begin: Colors.white, end: Colors.green).animate(CurvedAnimation(
      parent: _animationController, 
      curve: Curves.ease));
    _animationNumber = _animationController.drive(Tween<double>(begin: 4, end: 12));

    final coinModel = widget.coinModel;
    isChanged = coinModel.currentValue != coinModel.previousValue;
    endColor = coinModel.currentValue >= coinModel.previousValue 
      ? Colors.green 
      : Colors.red;
    arrowDirIcon = coinModel.currentValue >= coinModel.previousValue 
      ? Icons.arrow_drop_up 
      : Icons.arrow_drop_down; 
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  _animate() {
    if (!isChanged) return;
    final ticker = _animationController.forward(from: 0.0);
    ticker.whenComplete(() => _animationController.reverse(from: 1.0));
  }

  @override
  Widget build(BuildContext context) {
    final coinModel = widget.coinModel;
    isChanged = coinModel.currentValue != coinModel.previousValue;
    Future(() => _animate(),);
    if (isChanged){
      endColor = coinModel.currentValue >= coinModel.previousValue 
          ? Colors.green 
          : Colors.red;
      arrowDirIcon = coinModel.currentValue >= coinModel.previousValue 
          ? Icons.arrow_drop_up 
          : Icons.arrow_drop_down;
    }  
    _animation = ColorTween(begin: Colors.white, end: endColor).animate(CurvedAnimation(
      parent: _animationController, 
      curve: Curves.ease));

    return Stack(
      alignment: Alignment.center,
      children: [        
        CoinContainer(listenable: _animation, widthBorderAnimation: _animationNumber,),

        Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 90,
                height: 90,
                child: Image.asset(widget.coinModel.image),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.coinModel.currentValue.toString() , style: const TextStyle(fontSize: 16),),
                  Icon(arrowDirIcon, color: endColor,)
                ],
              )
            ],
          )
      ],
    );
  }
}

// =============================================================================

class CoinContainer extends AnimatedWidget {
  const CoinContainer({
    super.key, 
    required super.listenable,
    required this.widthBorderAnimation
  });

  final Animation<double> widthBorderAnimation;

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<Color?>;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: animation.value ?? Colors.white, 
          width: widthBorderAnimation.value
        ),
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}
