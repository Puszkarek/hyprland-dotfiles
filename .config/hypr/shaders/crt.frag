// modified version of [this shader](https://github.com/Euro20179/.files/blob/master/.config/hypr/shaders/crt.frag)

#version 300 es

precision mediump float;
in vec2 v_texcoord;
out vec4 fragColor;

uniform sampler2D tex;

void main() {
	vec2 tc = vec2(v_texcoord.x, v_texcoord.y);

	// Get texel directly without distortion
	vec4 cta = texture(tex, tc);

	// Keep only the scanline effect
	cta.rgb += sin(tc.y * 1250.0) * 0.02;

	// Cutoff
	if(tc.y > 1.0 || tc.x < 0.0 || tc.x > 1.0 || tc.y < 0.0)
		cta = vec4(0.0);

	// Apply
	fragColor = cta;
}