# Recuperador de calor
Handling VR32: If the RecoVair is connected behind a VR32/3 (bus coupler),
you might need to rename the 08.recov.csv file locally to 38.v32.csv to ensure it is picked up correctly.

# List of devices
address 03: master #11
address 04: slave #25, scanned "MF=Vaillant;ID=NETX3;SW=0128;HW=0404"
address 08: slave #11, scanned "MF=Vaillant;ID=HMU00;SW=0902;HW=5103", loaded "vaillant/08.hmu00.csv"
address 10: master #2
address 15: slave #2, scanned "MF=Vaillant;ID=CTLV3;SW=0808;HW=8004", loaded "vaillant/15.ctlv3.csv"
address 26: slave, scanned "MF=Vaillant;ID=VR_71;SW=0201;HW=0503", loaded "vaillant/26.vr_71.csv"
address 30: master #3
address 31: master #8, ebusd
address 33: master #13
address 35: slave #3, scanned "MF=Vaillant;ID=VR_92;SW=0709;HW=3904"
address 36: slave #8, ebusd, scanning
address 38: slave #13, scanned "MF=Vaillant;ID=V32;SW=0106;HW=6004", loaded "vaillant/38.v32.csv"
address 71: master #9
address 76: slave #9, scanned "MF=Vaillant;ID=VWZIO;SW=0202;HW=0103", loaded "vaillant/76.vwzio.csv"
address ec: slave, scanned "MF=Vaillant;ID=SOL00;SW=0808;HW=8004", loaded "vaillant/ec.sol.sc.csv"
address f1: master #10
address f6: slave #10, scanned "MF=Vaillant;ID=NETX3;SW=0128;HW=0404"
address ff: master #25

# Check all sensors
ebusctl find -d -r