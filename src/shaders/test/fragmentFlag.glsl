//precision mediump float; при ShaderMaterial уже есть эта переменная

//varying float vRandom;
varying vec2 vUv; // прокинуто из vertex (вершиного шейдера)
varying float vElevation; // прокинуто из vertex (вершиного шейдера)

uniform vec3 uColor; // получено из material threeJS
uniform sampler2D uTexture; // получено из material threeJS

void main() {

    vec4 textureColor = texture2D(uTexture, vUv); // return vec4
    textureColor.rgb *= vElevation * 2.0 + 0.5;

    gl_FragColor = vec4(textureColor);
}