module wiring_channels()
{
	difference()
	{
		square([10, 5], center = true);
		
		square([0.5, 5], center = true);
		translate([1.5, 0])
			rotate(-30)
			square([0.5, 8], center = true);
		translate([-1.5, 0])
			rotate(30)
			square([0.5, 8], center = true);
	}
}

linear_extrude(2)
{
	translate([0, -10 + 4]) square([14 + 0.4, 10], center = true);

	wiring_channels();
}

linear_extrude(1)
{
	translate([0, -10 + 5.5]) square([10, 10], center = true);

	wiring_channels();
}

linear_extrude(2.5 + 3)
	translate([10 / 2 + 1.2, -2.5])
	square([2, 3], center = true);
translate([0, 0, 2 + 3])
	linear_extrude(1)
	translate([10 / 2 + 0.7, -2.5])
	square([3, 3], center = true);

linear_extrude(2.5 + 3)
	translate([-(10 / 2 + 1.2), -2.5])
	square([2, 3], center = true);
translate([0, 0, 2 + 3])
	linear_extrude(1)
	translate([-(10 / 2 + 0.7), -2.5])
	square([3, 3], center = true);

translate([0, 0, 2 + 3])
	linear_extrude(1)
	translate([0, -2.5])
	square([14 + 0.4, 3], center = true);
