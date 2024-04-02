shader_type canvas_item;

uniform sampler2D under_texture;
uniform sampler2D progress_texture;
uniform float progress : hint_range(0.0, 1.0);

void fragment() {
    // คำนวณตำแหน่งใหม่ของแผนที่ (Texture) บนส่วนของ Progress
    vec2 uv = UV;
	vec4 under_color = texture(under_texture, uv);
    vec4 progress_color = texture(progress_texture, vec2(uv.x * progress, uv.y));

    // ผสานสีของ under และ progress เข้าด้วยกัน
    vec4 final_color = mix(under_color, progress_color, progress);

    // ส่งผลลัพธ์สีไปยังเฟรกเมนต์ (Fragment)
    COLOR = final_color;
}

void fragment() {
    // ดึงค่าสีจากแต่ละพิกเซล
    vec4 color = texture(progress_texture, UV);

    // ปรับสีโดยใช้ค่า progress เช่น
    color *= vec4(progress); // หรือ color.rgb *= progress; ตามต้องการ

    // ส่งสีไปยังเฟรกเมนต์ (Fragment)
    COLOR = color;
}
