#!/bin/sh

#define SLAVE_ADDRESS_7113    (0x4a >> 1)
#define SLAVE_ADDRESS_7121    (0x88 >> 1)
# Set up a vbit Pi saa7120/7121
# 
i2cset -y 1 0x44 0x3a 0x13 # 0x3a,0x13, // H/V from CCIR, UV2C and Y2C straight binary
i2cset -y 1 0x44 0x5a 0x0a # 0x5a,0x0a, // CHPS. Colour might be better at 00?  where did 0x77 come from?
i2cset -y 1 0x44 0x5b 0x7d # 0x5b,0x7d, // U gain - white to black=100ire
i2cset -y 1 0x44 0x5c 0xaf # 0x5c,0xaf, // V Gain
i2cset -y 1 0x44 0x5d 0x63 # 0x5d,0x40+0x23, // (aa) blckl=23, decoe (use rtci) =1
i2cset -y 1 0x44 0x5e 0x35 # 0x5e,0x35, // default blanking level
i2cset -y 1 0x44 0x5f 0x35 # 0x5f,0x35, // ditto
i2cset -y 1 0x44 0x61 0x06 # 0x61,0x06, // 00000101. scbw and fise
i2cset -y 1 0x44 0x62 0xaf # 0x62,0xaf, // rtce=1 bsta=2f
i2cset -y 1 0x44 0x63 0xcb # 0x63,0xcb, // FSC0 set for PAL
i2cset -y 1 0x44 0x64 0x8a # 0x64,0x8a, // FSC1
i2cset -y 1 0x44 0x65 0x09 # 0x65,0x09, // FSC2
i2cset -y 1 0x44 0x66 0x2a # 0x66,0x2a, // FSC3 - Subcarrier frequency
i2cset -y 1 0x44 0x67 0x55 # 0x67,0x55, // L21O0 - captioning data (four bytes per field)
i2cset -y 1 0x44 0x68 0x56 # 0x68,0x56, // L21O1
i2cset -y 1 0x44 0x69 0x67 # 0x69,0x67, // L21E0
i2cset -y 1 0x44 0x6a 0x58 # 0x6a,0x58, // L21E1
i2cset -y 1 0x44 0x6b 0x20 # 0x6b,0x20, // RCV port control (not used)
i2cset -y 1 0x44 0x6c 0x01 # 0x6c,0x01, // HTRIG
i2cset -y 1 0x44 0x6d 0x30 # 0x6d,0x30, // VTRIG
i2cset -y 1 0x44 0x6e 0xa0 # 0x6e,0xa0, // SBLBN=1, PHRES=2 FLC=0
i2cset -y 1 0x44 0x6f 0x20 # 0x6f,0x20, // (00) CCEN=0, TTXEN=1 Enable teletext, SCCLN=0 (was 20)
i2cset -y 1 0x44 0x70 0x00 # 0x70,0x00, // RCV2S 
i2cset -y 1 0x44 0x71 0x00 # 0x71,0x00, //
i2cset -y 1 0x44 0x72 0x00 # 0x72,0x00, // RCV2E
i2cset -y 1 0x44 0x73 0x42 # 0x73,0x42, // Start of TTX signal. TTXHS=PAL=42 
i2cset -y 1 0x44 0x74 0x02 # 0x74,0x02, // H delay TTXHD=data delay=4 - minimum=2
i2cset -y 1 0x44 0x75 0x00 # 0x75,0x00, // VS_S
i2cset -y 1 0x44 0x76 0x06 # 0x76,0x06, // TTXOVS=05 for PAL V odd start (line 5)
i2cset -y 1 0x44 0x77 0x16 # 0x77,0x16, // TTXOVE=16 for PAL V odd end (line 22)
i2cset -y 1 0x44 0x78 0x05 # 0x78,0x05, // TTXEVS=04 for PAL V even start (should be line 4) 
i2cset -y 1 0x44 0x79 0x16 # 0x79,0x16, // TTXEVE=16 for PAL V even end (line 22)
i2cset -y 1 0x44 0x7a 0x00 # 0x7a,0x00, // FAL
i2cset -y 1 0x44 0x7b 0x00 # 0x7b,0x00, //
i2cset -y 1 0x44 0x7c 0x00 # 0x7c,0x00, // 
i2cset -y 1 0x44 0x7d 0x00 # 0x7d,0x00, //
i2cset -y 1 0x44 0x7e 0x00 # 0x7e,0x00, // (00) Disable TTX line
i2cset -y 1 0x44 0x7f 0x00 # 0x7f,0x00, // (00) Disable TTX line
