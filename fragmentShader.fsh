#version 130

// NEW! Texture stuff... the "sampler2D" is the image
in vec2 texCoord;				
uniform sampler2D texture;
out vec4 fColor;

void main () {
	vec4 texel = texture2D(texture, texCoord);
	fColor = texel;
}