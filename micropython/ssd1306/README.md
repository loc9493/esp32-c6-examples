### Requirements
- Install micropython on Esp32C6
- Install thony for IDE
- Install SSD1306 package in Thony


### How to use
- Add main.py and ssd1306.py to ESP32C6 using Files feature in Thony
- Replace correct port number for SCL and SDA in 
-- i2c = I2C(0, scl=Pin(7), sda=Pin(6))