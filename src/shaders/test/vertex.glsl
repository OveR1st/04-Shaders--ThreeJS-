uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;

attribute vec3 position;

//float loremIpsum() {
//    float a = 1.0;
//    float b = 1.0;
//    return a + b;
//}

attribute vec3 position;

void main() {
//    float fooBar = 4; // переменная
//    int intt = 3;
//    bool foo = true;
//    bool bar = false;
//    vec2 vec = vec2(1.0, 1.0); // x, y
//    vec.x = 2.0;
//    vec.y = 3.0;
//    vec4 vector = vec4(1.0, 2.0, 3.0, 4.0);
//    float bar = vector.x;
    gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);
}