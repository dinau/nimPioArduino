all:
	@pio run

clean:
	@pio run -t clean
	@-rm -fr src/nimcache

BASE_DIR                = .pio/libdeps/nimPioArduino
NIM_ARDUINO_DIR         = $(BASE_DIR)/nim-arduino
NIM_NIMBASE_DIR         = $(BASE_DIR)/nimbase
NIM_PLATFORMIO_DIR      = $(BASE_DIR)/nim-platformio
REL_DIR                 = ../00rel
UPSTREAM_NIM_ARDUINO    = $(REL_DIR)/nim-arduino
UPSTREAM_NIMBASE        = $(REL_DIR)/nimbase
UPSTREAM_NIM_PLATFORMIO = $(REL_DIR)/nim-platformio

commit:
	cp -u $(NIM_ARDUINO_DIR)/*    $(UPSTREAM_NIM_ARDUINO)
	cp -u $(NIM_NIMBASE_DIR)/*    $(UPSTREAM_NIMBASE)
	cp -u $(NIM_PLATFORMIO_DIR)/* $(UPSTREAM_NIM_PLATFORMIO)

