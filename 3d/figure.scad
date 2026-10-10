// Parameters
width = 20;
length = 50;
height = 30;
radius = 3;

// Rounded rectangular prism
module rounded_prism(w, l, h, r) {
    linear_extrude(height = h, center = true)
        hull() {
            translate([r, r])
                circle(r = r, $fn = 64);
            translate([w - r, r])
                circle(r = r, $fn = 64);
            translate([w - r, l - r])
                circle(r = r, $fn = 64);
            translate([r, l - r])
                circle(r = r, $fn = 64);
        }
}

// Render
rounded_prism(width, length, height, radius);