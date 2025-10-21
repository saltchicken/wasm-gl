// ‼️ Vertex shader

// ‼️ Removed CameraUniform

struct VertexInput {
    @location(0) position: vec2<f32>, // ‼️ Changed
    // ‼️ Removed tex_coords
}

struct VertexOutput {
    @builtin(position) clip_position: vec4<f32>,
    // ‼️ Removed tex_coords
}

@vertex
fn vs_main(
    model: VertexInput,
) -> VertexOutput {
    var out: VertexOutput;
    // ‼️ Directly use the 2D position for the full-screen quad
    out.clip_position = vec4<f32>(model.position, 0.0, 1.0);
    return out;
}

// ‼️ Fragment shader

// ‼️ Removed texture and sampler bindings

@fragment
// ‼️ No input struct needed
fn fs_main() -> @location(0) vec4<f32> {
    // ‼️ Return a solid color (green)
    return vec4<f32>(1.0, 1.0, 0.5, 1.0);
}
