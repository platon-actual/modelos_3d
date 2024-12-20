// Cómo imprimir dinero en 2024: Openscad Edition.

$fn = 25; // esto define la cantidad de vértices de las figuras redondas.

alto_moneda = 2;
radio_moneda = 12;
rebarba = 0.05;

union() {
    difference(){
        cylinder(h=alto_moneda, r=radio_moneda);
        translate([ 0, 0, alto_moneda*2/3 + rebarba ])
            cylinder(h=alto_moneda/3, r=radio_moneda - 1.2);
    }
    
    difference() {
        translate([ 0, radio_moneda +2, 0 ])
            cylinder(h=alto_moneda, r=4);
        translate([ 0, radio_moneda +2, 0 ])
            cylinder(h=alto_moneda + rebarba, r=1.6);
    }
    
    translate([ -radio_moneda +2.2, 0, 0 ])
        linear_extrude(alto_moneda) text("Perrite Catz", size=2.4);
    translate([ -radio_moneda +2.2, 0, 0 ])
        translate([ 0, -2.8, 0 ])
        linear_extrude(alto_moneda) text("11-2345-6789", size=2.1);
}