varying vec2 vUv;
// uv нужно для размещение текстуры на пиксели и так же рисовать на них
// uv это vec2 ( x, y ) от 0.0 о 1.0
void main() {
    // Pattern 15
    float barY = step(0.4, mod(vUv.x * 10.0, 1.0));
    barY *= step(0.8, mod(vUv.y * 10.0, 1.0));

    float barX = step(0.8, mod(vUv.x * 10.0, 1.0));
    barX *= step(0.4, mod(vUv.y * 10.0, 1.0));

    float strength = barX + barY;
//    // Pattern 14
//    float barY = step(0.4, mod(vUv.x * 10.0, 1.0));
//    barY *= step(0.8, mod(vUv.y * 10.0, 1.0));
//
//    float barX = step(0.8, mod(vUv.x * 10.0, 1.0));
//    barX *= step(0.4, mod(vUv.y * 10.0, 1.0));
//
//    float strength = barX + barY;

//    // Pattern 13
//    float strength = step(0.4, mod(vUv.x * 10.0, 1.0));
//    strength *= step(0.8, mod(vUv.y * 10.0, 1.0));

//    // Pattern 12
//    float strength = step(0.8, mod(vUv.x * 10.0, 1.0));
//    strength *= step(0.8, mod(vUv.y * 10.0, 1.0));

      // Pattern 11
//    float strength = step(0.8, mod(vUv.x * 10.0, 1.0));
//    strength += step(0.8, mod(vUv.y * 10.0, 1.0));

//    // Pattern 10
//    float strength = mod(vUv.x * 10.0, 1.0);
//    strength = step(0.8, strength);

//    // Pattern 9
//    float strength = mod(vUv.y * 10.0, 1.0);
//    strength = step(0.8, strength);

//    // Pattern 8
//    float strength = mod(vUv.y * 10.0, 1.0);
//    strength = step(0.5, strength);

//    // Pattern 7
//    float strength = mod(vUv.y * 10.0, 1.0);
//    strength = strength < 0.5 ? 0.0 : 1.0;
//    if (strength < 0.5) {
//        strength = 0.0;
//    } else {
//        strength = 1.0;
//    }

//    // Pattern 7
//    float strength = mod(vUv.y * 10.0, 1.0);

//    // Pattern 6
//    float strength = vUv.y / 0.1; // or * 10.0

//    // Pattern 5
//    float strength = 1.0 - vUv.y;

//    // Pattern 4
//    float strength = vUv.y;

//    // Pattern 3
//    float strength = vUv.x;

    gl_FragColor = vec4(strength, strength, strength, 1.0);
}