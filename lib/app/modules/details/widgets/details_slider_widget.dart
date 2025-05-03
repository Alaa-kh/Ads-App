import 'package:ads_project/app/core/constants/app_packages.dart';

class DetailsSliderWidget extends StatelessWidget {
  const DetailsSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '200/km',
                style: TextStyle(
                  color: Color(0xFF0D0C2B),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                '1000/km',
                style: TextStyle(
                  color: Color(0xFF0D0C2B),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        FlutterSlider(
          values: [200, 1000],
          rangeSlider: true,
          max: 2000,
          min: 0,
          trackBar: FlutterSliderTrackBar(
            activeTrackBarHeight: 4,
            inactiveTrackBarHeight: 4,
            activeTrackBar: BoxDecoration(color: Colors.amber),
            inactiveTrackBar: BoxDecoration(color: Colors.grey[300]),
          ),
          handler: FlutterSliderHandler(
            decoration: BoxDecoration(),
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber,
              ),
            ),
          ),
          rightHandler: FlutterSliderHandler(
            decoration: BoxDecoration(),
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
