#version 460 core

layout(triangles) in;

layout(triangle_strip,max_vertices=3) out;

out gl_PerVertex
{
	vec4 gl_Position;
};

void main()
{
	gl_Position = gl_in[0].gl_Position;
	EmitVertex();

	gl_Position = gl_in[1].gl_Position;
	EmitVertex();

	gl_Position = gl_in[2].gl_Position;
	EmitVertex();

	EndPrimitive();
}
