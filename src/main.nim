import arduino

var count:cint = 0
setup:
    Serial.begin(9600)
    pinMode(LED_BUILTIN, OUTPUT)

loop:
    digitalWrite(LED_BUILTIN, HIGH)
    delay(500)
    digitalWrite(LED_BUILTIN, LOW)
    delay(500)
    Serial.print "<Arduino is ready> :: "
    Serial.print count
    Serial.print "\n"
    Serial.println F_CPU
    inc count

