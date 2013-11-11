module addElement(l, w, h, x, y, z) {
	translate([x, y, z])
		cube([l, w, h]);
}

boardLen=85.6;
boardWidth=56;
boardHeight=1.6;
boardTop=boardHeight/2;
boardBottom=-boardHeight/2;
topEdge=boardWidth/2;
bottomEdge=-boardWidth/2;
rightEdge=boardLen/2;
leftEdge=-boardLen/2;

linear_extrude(height = boardHeight, center = true, convexity = 10, twist = 0)
square ([boardLen,boardWidth],center = true);

powerLength=5.6;
powerWidth=7.6;
powerHeight=2.4;
translate([37.7,16.8,0.8]) 
	cube([powerLength,powerWidth,powerHeight]);

sdLength=36;
sdWidth=27.8;
sdHeight=5;
sdX=(boardLen/2) - (sdLength/2);
sdY=-(sdWidth/2);
sdZ=-((boardHeight/2) + sdHeight);
addElement(sdLength, sdWidth, sdHeight, sdX, sdY, sdZ);

hdmiLength=11.4;
hdmiWidth=15.1;
hdmiHeight=6.15;
hdmiX= (rightEdge-hdmiLength) - 37.5;
hdmiY= (topEdge - hdmiWidth) + 1.2;
hdmiZ=boardTop;
addElement(hdmiLength, hdmiWidth, hdmiHeight, hdmiX, hdmiY, hdmiZ);

usbLength = 21.8;
usbWidth = 15.4;
usbHeight = 13;
usbX = (leftEdge - usbLength) + (usbLength - 1);
usbY = (topEdge - usbWidth) -2;
usbZ = boardTop;
addElement(usbLength, usbWidth, usbHeight, usbX, usbY, usbZ);

ethernetLength = 17.2;
ethernetWidth = 13.25;
ethernetHeight = 15.3;
ethernetX = (leftEdge - ethernetLength) + (ethernetLength -7.7);
ethernetY = (bottomEdge) + 18.8;
ethernetZ = boardTop;
addElement(ethernetLength, ethernetWidth, ethernetHeight, ethernetX, ethernetY, ethernetZ);

audioLength = 12;
audioWidth = 11.4;
audioHeight = 10.2;
audioX = (leftEdge - audioLength) + (audioLength + 14);
audioY = (bottomEdge);
audioZ = boardTop;
addElement(audioLength, audioWidth, audioHeight, audioX, audioY, audioZ);

audioJackHeight = 3.4;
audioJackRadius = 6.7/2;
translate([(leftEdge + 14 + (audioLength/2)), bottomEdge, (boardTop + audioJackRadius + 3)])
	rotate(a=[90,0,0])
		cylinder(h=audioJackHeight, r=audioJackRadius, $fs=1);

rsaLength = 9.8;
rsaWidth = 10;
rsaHeight = 13;
rsaX = (rightEdge - rsaLength) - 40.6;
rsaY = (bottomEdge + 2.1);
rsaZ = boardTop;
addElement(rsaLength, rsaWidth, rsaHeight, rsaX, rsaY, rsaZ);

rsaJackHeight = 9.1;
rsaJackRadius = 8.3/2;
translate([(rightEdge - (rsaLength/2) - 40.6), bottomEdge + 2.1, (boardTop + rsaJackRadius + 4)])
	rotate(a=[90,0,0])
		cylinder(h=rsaJackHeight, r=rsaJackRadius, $fs=1);

