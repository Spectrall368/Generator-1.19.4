{
    "parent": "block/template_fence_gate",
    "textures": {
        <#if data.particleTexture?has_content>"particle": "${modid}:block/${data.particleTexture}",</#if>
        "texture": "${modid}:block/${data.texture}"
    },
    "render_type": "${data.getRenderType()}"
}