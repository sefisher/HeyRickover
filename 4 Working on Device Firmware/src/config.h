// WiFi credentials
#include "secrets.h"
//NOTE: I store my wifi info in environment variables to avoid accidentally sending them up to Git. 
// Either do the same or replace this reference with a text string for the SSID or PSWD
// (to auto replace the text use the build_flag in platformio.ini to reference the variable and substitute it here)
// To use dynamic variables see: https://docs.platformio.org/en/latest/projectconf/dynamic_variables.html
//    TIP: if your password has special characters you may need to escape them in the definition (eg $ --> \$ in windows)
//    TIP: in platformio.ini definitions you need to wrap the strings in \" \" since the macro puts in whatever follows =

#ifndef WIFI_SSID
    #define WIFI_SSID "PUT YOUR SSID"
#endif
#ifndef WIFI_PSWD
    #define WIFI_PSWD "PUT YOUR PASS"
#endif

// Command recognition settings
#ifndef COMMAND_RECOGNITION_ACCESS_KEY
    #define COMMAND_RECOGNITION_ACCESS_KEY "PUT YOUR ACCESS KEY"
#endif

// are you using an I2S microphone - comment this out if you want to use an analog mic and ADC input
#define USE_I2S_MIC_INPUT

// I2S Microphone Settings

// Which channel is the I2S microphone on? I2S_CHANNEL_FMT_ONLY_LEFT or I2S_CHANNEL_FMT_ONLY_RIGHT
#define I2S_MIC_CHANNEL I2S_CHANNEL_FMT_ONLY_LEFT
// #define I2S_MIC_CHANNEL I2S_CHANNEL_FMT_ONLY_RIGHT
#define I2S_MIC_SERIAL_CLOCK GPIO_NUM_26
#define I2S_MIC_LEFT_RIGHT_CLOCK GPIO_NUM_22
#define I2S_MIC_SERIAL_DATA GPIO_NUM_21

// Analog Microphone Settings - ADC1_CHANNEL_7 is GPIO35
#define ADC_MIC_CHANNEL ADC1_CHANNEL_7

// speaker settings
#define I2S_SPEAKER_SERIAL_CLOCK GPIO_NUM_19
#define I2S_SPEAKER_LEFT_RIGHT_CLOCK GPIO_NUM_27
#define I2S_SPEAKER_SERIAL_DATA GPIO_NUM_18
