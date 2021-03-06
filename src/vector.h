#ifndef VECTOR_H
#define VECTOR_H

typedef struct {
  float x;
  float y;
} vec2_t;

typedef struct {
  float x;
  float y;
  float z;
} vec3_t;

typedef struct {
  vec3_t position_x;
  vec3_t position_y;
  float angle;
} camera_t;

vec3_t vect3_rotate_x(vec3_t v, float angle);
vec3_t vect3_rotate_y(vec3_t v, float angle);
vec3_t vect3_rotate_z(vec3_t v, float angle);

#endif