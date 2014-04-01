#version 130

in vec3 s_vPosition;
//in vec4 s_vColor;
//out vec4 color;
//uniform mat4 s_mM;	// The matrix for the pose of the model
//uniform mat4 s_mV;	// The matrix for the pose of the camera
//uniform mat4 s_mP;	// The perspective matrix

in vec2 s_vTexCoord;	// Coming FROM the OpenGL program
out vec2 texCoord;		// Going TO the fragment shader



void main () {
	// Look, Ma!  I avoided any matrix multiplication!
	// The value of s_vPosition should be between -1.0 and +1.0 (to be visible on the screen)
	//gl_Position = s_mP*s_mV*s_mM*s_vPosition;
	// NEW!! Just pass off the UVs to the fragment shader
	texCoord = s_vTexCoord;
	
	gl_Position = vec4 (s_vPosition, 1);
}