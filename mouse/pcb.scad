fullLength = 48.43;
fullWidth = 43.08;

topEdge = fullLength;


difference () {
	square ([fullWidth, fullLength]);
	translate([-0.5, (topEdge - 20),0])
		square ([2.5, 20.29], center = false);
	square ([], center = false);
}
