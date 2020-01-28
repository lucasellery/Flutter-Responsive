# responsividade

A new Flutter (w/ mobx) project for studies about responsive web apps.

- In this repository, I created three main home modules, they are: home_page, home_two and home_bottom:
  
  - home_page: It is about become responsive images and fonts;
  - home_two: It is about become a "smarthphone screen" (web version but with small size) responsive when someone increase the size;
  - home_bottom: It is only for preview the height and width of screen; 

## Getting Started

- Important:
  - As you work on your stores, you would want to keep the build_runner active, constantly generating the *.g.dart files. The trick to keep it running is to use the watch sub-command, as shown below:
    flutter packages pub run build_runner watch
        or
    pub run build_runner watch

### Don't do (because it is not working well):

- width: double.infinity / 
    height: double.infinity
- mainAxisAlignment: MainAxisAlignment.center, /
    crossAxisAlignment: CrossAxisAlignment.center,

### Just do it:

- Always work with const values;
- You can use the LayoutBuilder widget and create some methods to call;