//uniform mat4 projectionMatrix;  при ShaderMaterial уже есть эта переменная
//uniform mat4 viewMatrix; при ShaderMaterial уже есть эта переменная
//uniform mat4 modelMatrix; при ShaderMaterial уже есть эта переменная

uniform vec2 uFrequency; // из threejs RawShaderMaterial

uniform float uTime;

//There are three types of variables in shaders: uniforms, attributes, and varyings

//float loremIpsum() {
//    float a = 1.0;
//    float b = 1.0;
//    return a + b;
//}

//attribute vec3 position; при ShaderMaterial уже есть эта переменная
//
//attribute vec2 uv; при ShaderMaterial уже есть эта переменная

varying vec2 vUv;
varying float vElevation;

//attribute float aRandom; // из threeJS geometry.attributes.position
//
//varying float vRandom; // для проброса в фрагмент уже с копированым содержимым

void main() {

    vec4 modelPosition = modelMatrix * vec4(position, 1.0);

    float elevation = sin(modelPosition.x * uFrequency.x - uTime) * 0.1;
    elevation += sin(modelPosition.y * uFrequency.y - uTime) * 0.1;

    modelPosition.z += elevation;
//    modelPosition.z += sin(modelPosition.x * uFrequency.x - uTime) * 0.1;
//    modelPosition.z += sin(modelPosition.y * uFrequency.y - uTime) * 0.1;



//    modelPosition.z += aRandom * 0.1;
    vec4 viewPosition = viewMatrix * modelPosition;
    vec4 projectedPosition = projectionMatrix * viewPosition;
//    float fooBar = 4; // переменная
//    int intt = 3;
//    bool foo = true;
//    bool bar = false;
//    vec2 vec = vec2(1.0, 1.0); // x, y
//    vec.x = 2.0;
//    vec.y = 3.0;
//    vec4 vector = vec4(1.0, 2.0, 3.0, 4.0);
//    float bar = vector.x;
    gl_Position = projectedPosition;

    // projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);
    vUv = uv;
    vElevation = elevation;
    //    vRandom = aRandom;
}