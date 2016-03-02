#version 430 core

uniform mat4 mvpMatrix;
uniform mat4 mvMatrix;
uniform mat4 normalTransformMatrix;
 
layout(location = 0) in vec3 vPosition;
layout(location = 1) in vec2 vTexCoord;
layout(location = 2) in vec3 vNormal;

out vec2 fragTexCoord;
out vec3 fragNormal;
out vec3 vPosInViewSpace;
 
void main()
{
	fragTexCoord = vTexCoord;
	fragNormal = (normalTransformMatrix * vec4(vNormal, 0.0)).xyz;
	vPosInViewSpace = (mvMatrix * vec4(vPosition, 1.0)).xyz;
	gl_Position = mvpMatrix * vec4(vPosition, 1.0) ;
}