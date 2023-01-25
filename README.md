<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [nimPioArduino](#nimpioarduino)
      - [Note](#note)
  - [Using Arduino Uno/Nano Library with Platformio CLI](#using-arduino-unonano-library-with-platformio-cli)
    - [Prerequisite](#prerequisite)
    - [Usage on Winodws10](#usage-on-winodws10)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# nimPioArduino
Nim language: Arduino Uno/Nano Library test using Platformio CLI.

#### Note

This project is based on [https://github.com/markspanbroek/nim-arduino](https://github.com/markspanbroek/nim-arduino),  
and has been modified at my `personal_branch` at this moment.

## Using Arduino Uno/Nano Library with Platformio CLI 

![alt](https://cdn.shopify.com/s/files/1/0506/1689/3647/products/A000066_03.front_970c6014-61ab-4226-a20f-14cc6d8d682c_218x163.jpg?v=1629816078)
![alt](https://cdn.shopify.com/s/files/1/0506/1689/3647/products/A000005_03.front_2c44e4db-5d01-45ec-9b14-78b6df214913_218x163.jpg?v=1628695116)

### Prerequisite

---

1. [nim-1.6.10 or later](https://nim-lang.org)
1. [Platformio installed](https://platformio.org/)

### Usage on Winodws10

---

1. Clone this repo,

   ```bash
   $ git clone https://github.com/dinau/nimPioArduino
   ```

1. Do sanity check

   ```bash
   $ cd nimPioArduino
   $ pio --version
   PlatformIO Core, version 6.1.5
   ```

   if the vesion is 6.1.5 or later, it would be ok.

1. Look at main test program [main.nim](src/main.nim)

   ```nim
   import arduino
   
   var count:cint = 0
   setup:
       Serial.begin(9600)
       pinMode(LED_BUILTIN, OUTPUT)
   
   loop:
       digitalWrite(LED_BUILTIN, HIGH)
       delay(300)
       digitalWrite(LED_BUILTIN, LOW)
       delay(300)
       Serial.print "<Arduino is ready> :: "
       Serial.print count
       Serial.print "\n"
       Serial.println F_CPU
       inc count
   ```

1. Build test program

   ```bash
   $ pio run

   Processing nimPioArduino (platform: atmelavr; framework: arduino; board: uno)
   --------------------------------------------------------------------------------------------------
   Verbose mode can be enabled via `-v, --verbose` option
   CONFIGURATION: https://docs.platformio.org/page/boards/atmelavr/uno.html
   PLATFORM: Atmel AVR (3.4.0) > Arduino Uno
   HARDWARE: ATMEGA328P 16MHz, 2KB RAM, 31.50KB Flash
   DEBUG: Current (avr-stub) On-board (avr-stub, simavr)
   PACKAGES:
    - framework-arduino-avr @ 5.1.0
    - toolchain-atmelavr @ 1.70300.191015 (7.3.0)
   LDF: Library Dependency Finder -> https://bit.ly/configure-pio-ldf
   LDF Modes: Finder ~ chain, Compatibility ~ soft
   Hint: used config file 'C:\Users\who\.choosenim\toolchains\nim-1.6.10\config\nim.cfg' [Conf]
   Hint: used config file 'C:\Users\who\.choosenim\toolchains\nim-1.6.10\config\config.nims' [Conf]
   ......................................................
   Hint: gc: arc; opt: size; options: -d:danger
   25403 lines; 0.531s; 20.652MiB peakmem; proj: C:\anywhere\nimPioArduino\src\main; out: C:\00nim-d\pio-data\nim\00rel\nimPioArduino\src\nimcache\main.json [SuccessX]
   Found 8 compatible libraries
   Scanning dependencies...
   Dependency Graph
   |-- nim-arduino @ 0.3.0+sha.96f340d
   |   |-- nim-platformio @ 0.2.1+sha.cd08bcd
   |   |   |-- nimbase @ 1.6.10+sha.8fc08f5
   |-- nimbase @ 1.6.10+sha.8fc08f5
   Building in release mode
   Compiling .pio\build\nimPioArduino\src\nimcache\@m..@s..@s..@s..@s..@s..@sUsers@smi@s.choosenim@stoolchains@snim-1.6.10@slib@ssystem.nim.cpp.o
   Compiling .pio\build\nimPioArduino\src\nimcache\@m..@s.pio@slibdeps@snimPioArduino@snim-arduino@sarduino.nim.cpp.o
   Compiling .pio\build\nimPioArduino\src\nimcache\@mmain.nim.cpp.o
   Archiving .pio\build\nimPioArduino\libFrameworkArduinoVariant.a
   Indexing .pio\build\nimPioArduino\libFrameworkArduinoVariant.a
   Compiling .pio\build\nimPioArduino\FrameworkArduino\CDC.cpp.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\HardwareSerial.cpp.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\HardwareSerial0.cpp.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\HardwareSerial1.cpp.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\HardwareSerial2.cpp.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\HardwareSerial3.cpp.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\IPAddress.cpp.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\PluggableUSB.cpp.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\Print.cpp.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\Stream.cpp.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\Tone.cpp.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\USBCore.cpp.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\WInterrupts.c.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\WMath.cpp.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\WString.cpp.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\abi.cpp.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\hooks.c.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\main.cpp.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\new.cpp.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\wiring.c.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\wiring_analog.c.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\wiring_digital.c.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\wiring_pulse.S.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\wiring_pulse.c.o
   Compiling .pio\build\nimPioArduino\FrameworkArduino\wiring_shift.c.o
   Archiving .pio\build\nimPioArduino\libFrameworkArduino.a
   Indexing .pio\build\nimPioArduino\libFrameworkArduino.a
   Linking .pio\build\nimPioArduino\firmware.elf
   Checking size .pio\build\nimPioArduino\firmware.elf
   Advanced Memory Usage is available via "PlatformIO Home > Project Inspect"
   RAM:   [=         ]  11.1% (used 228 bytes from 2048 bytes)
   Flash: [=         ]   9.7% (used 3138 bytes from 32256 bytes)
   Building .pio\build\nimPioArduino\firmware.hex
   ================================== [SUCCESS] Took 6.76 seconds ==================================
   ```

   Artifacts are generated in .pio/build/nimPioArduino,

   or you can just use `make` command (if you have `make command`),

   ```bash
   $ make
   ```

1. Upload program to Arduino Uno/Nano board,

   ```bash
   $ pio run -t upload
   ```

   or you can use make command,

   ```bash
   $ make upload
   ```

