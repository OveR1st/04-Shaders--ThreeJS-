uniform float uSize;
uniform float uTime;

attribute float aScale;
attribute vec3 aRandomness;

varying vec3 vColor;

void main() {
  /**
   * Position
   */
  vec4 modelPosition = modelMatrix * vec4(position, 1.0);


  // Spin
  float angle = atan(modelPosition.x, modelPosition.z);
  float distanceToCenter = length(modelPosition.xz);
  float angleOffset = (1.0 / distanceToCenter) * uTime * 0.2;
  angle += angleOffset;
  modelPosition.x = cos(angle) * distanceToCenter;
  modelPosition.z = sin(angle) * distanceToCenter;

  //Randomness
  modelPosition.x += aRandomness.x;
  modelPosition.y += aRandomness.y;
  modelPosition.z += aRandomness.z;


  vec4 viewPosition = viewMatrix * modelPosition;
  vec4 projectedPosition = projectionMatrix * viewPosition;
  gl_Position = projectedPosition;

  /**
   * Size
   */
  gl_PointSize = uSize * aScale;
  // формула затухания частиц при скроле (меняет размер частиц в зависимости от скрола)
  gl_PointSize *= (1.0 / - viewPosition.z);

  /**
   * Color
   */
  vColor = color;
}