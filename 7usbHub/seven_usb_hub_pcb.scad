fullLength = 133 + 4;
fullWidth = 20;

difference() {
	translate([0,0,0])
		linear_extrude(height = 2, center = true, convexity = 10, twist = 0)
			square ([fullLength, fullWidth], center = false);
				translate([fullLength - 6,-1,0])
					square ([7, 11], center = false);
}

translate([fullLength - 11 +2, 10, 1])
	cube(size = [11,5,5], center = false);

for ( i = [[ 7, 5,  1],
           [21, 5, 1],
           [35, 5, 1],
           [49, 5, 1],
           [63, 5, 1],
           [77, 5, 1],
           [91, 5, 1]])
	
		translate(i)
			cube(size = [6,20,13], center = false);
