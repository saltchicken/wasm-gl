@group(0) @binding(0)
var<uniform> time: vec4<f32>;

struct VertexInput {
    @location(0) position: vec2<f32>,
}

struct VertexOutput {
    @builtin(position) clip_position: vec4<f32>,
}

@vertex
fn vs_main(
    model: VertexInput,
) -> VertexOutput {
    var out: VertexOutput;
    out.clip_position = vec4<f32>(model.position, 0.0, 1.0);
    return out;
}

@fragment
fn fs_main() -> @location(0) vec4<f32> {
    let green = (sin(time.x * 2.0) + 1.0) / 2.0;
    return vec4<f32>(1.0, green, 0.5, 1.0);
}
