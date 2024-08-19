#include <Wire.h>               // Only needed for Arduino 1.6.5 and earlier
#include "SSD1306Wire.h"        // legacy: #include "SSD1306.h"

class Display {
  private:
    SSD1306Wire display;
  public:
    Display();
}
