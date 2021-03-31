varying vec2 vUv;
// uv нужно для размещение текстуры на пиксели и так же рисовать на них
// uv это vec2 ( x, y ) от 0.0 о 1.0
void main()
{
    gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0);
    vUv = uv;
}