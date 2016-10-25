#! /usr/bin/env python

import serial
import time

ser = serial.Serial('/dev/ttyUSB0', 115200)
# Toggle DTR to reset Arduino
ser.setDTR(False)
time.sleep(1)
ser.setDTR(True)
