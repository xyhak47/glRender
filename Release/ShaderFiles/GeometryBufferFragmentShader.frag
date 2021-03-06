#version 430 core

uniform sampler2D DiffuseMap;
uniform sampler2D SpecularMap;
uniform sampler2D HeightMap;

in vec3 fragWorldPosition;
in vec2 fragTexCoord;
in vec3 fragNormal;

layout (location = 0) out vec3 WorldPosOut;
layout (location = 1) out vec3 DiffuseOut;
layout (location = 2) out vec3 NormalOut;
layout (location = 3) out vec3 SpecularOut;
 
void main()
{
	WorldPosOut = fragWorldPosition;
	DiffuseOut = texture(DiffuseMap, fragTexCoord).xyz;
	SpecularOut = texture(SpecularMap, fragTexCoord).xyz;
	NormalOut = normalize(fragNormal);
}