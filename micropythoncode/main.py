import network
# import _thread as th
from time import sleep
from lcd_api import LcdApi
from i2c_lcd import I2cLcd
from machine import Pin, SoftI2C, SoftSPI
from mfrc522 import MFRC522
import time
import usocket as socket

ip = '192.168.8.103'
port = 5001

# GPIO pins
sck = Pin(18, Pin.OUT)
mosi = Pin(23, Pin.OUT)
miso = Pin(19, Pin.OUT)
spi = SoftSPI(baudrate=100000, polarity=0, phase=0, sck=sck, mosi=mosi, miso=miso)

sda = Pin(5, Pin.OUT)
red = Pin(12, Pin.OUT)
green = Pin(13, Pin.OUT)
blue = Pin(14, Pin.OUT)

def greenind():
    green.on()
    time.sleep(0.5)
    green.off()
    time.sleep(0.5)
    green.on()

def redind():
    red.on()
    time.sleep(0.5)
    red.off()
    time.sleep(0.5)

def blueind():
    blue.on()
    time.sleep(0.5)
    blue.off()
    time.sleep(0.5)
# def lcdshow():
def lcdshow(lcdprint):
    I2cadd = 0x27
    totalrow = 2
    totalcolumn = 16
    i2c = SoftI2C(scl = Pin(22),sda = Pin(21),freq=10000)
    lcd = I2cLcd(i2c, I2cadd,totalrow,totalcolumn)
    lcd.putstr(lcdprint)
    time.sleep(3)
    lcd.clear()
def wifi():
    ssid = "Dialog 4G"
    password = "8EM5DFDN5J5"
    station = network.WLAN(network.STA_IF)
    
    if station.isconnected():
        print("Already connected")
        greenind()
        return
    
    station.active(True)
    station.connect(ssid, password)
    
    while not station.isconnected():
        print("Not connected")
        redind()
        time.sleep(0.1)
        
    print(station.ifconfig())
    time.sleep(1)
    greenind()

def main():
    while True:
        green.off()
        red.off()
        blue.off()
        wifi()
        
        try:
            so = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            so.connect((ip, port))
            
            rdr = MFRC522(spi, sda)
            
            while True:
                (stat, tag_type) = rdr.request(rdr.REQIDL)
                print(tag_type)
                if stat == rdr.OK:
                    (stat, raw_uid) = rdr.anticoll()
                    if stat == rdr.OK:
                        uid = "{:03}{:04}{:04}{:04}".format(raw_uid[0], raw_uid[1], raw_uid[2], raw_uid[3])
                        print(uid)
                        so.send(uid.encode())
                        
    #                     if not so.recv(1024):
    #                         print('No data')
                        
                        data = so.recv(1024)
                        lcdshow(data.decode())
                        print(data.decode())
                        sleep(1)
        except Exception as e:
            lcdshow('socket error')
            for x in range(2):
                blueind()
                lcdshow('call ict sir or wait some time ')
                x=x+1
            print(e)
            continue
            print(e)

if __name__ == "__main__":
    main()

