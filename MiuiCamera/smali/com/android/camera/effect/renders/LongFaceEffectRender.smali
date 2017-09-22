.class public Lcom/android/camera/effect/renders/LongFaceEffectRender;
.super Lcom/android/camera/effect/renders/PixelEffectRender;
.source "LongFaceEffectRender.java"


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "id"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 12
    return-void
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string v0, "precision mediump float; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nuniform float uAlpha; \nvec4 longface() { \n    float sgnv; \n    if(vTexCoord[1]>0.5) { \n        sgnv = 1.0;  \n    } else { \n        sgnv = -1.0; \n    } \n    float new_radius = sgnv * pow(abs(vTexCoord[1]-0.5)*2.0, 1.5)/2.0; \n    vec2 newCoord = vec2(vTexCoord[0], 0.5 + new_radius); \n    if (newCoord.x > 1.0 || newCoord.x < 0.0 || newCoord.y > 1.0 || newCoord.y < 0.0) { \n        return vec4(0.0, 0.0, 0.0, 1.0); \n    } else { \n        return texture2D(sTexture, newCoord); \n    } \n} \nvoid main() { \n    gl_FragColor = vec4(longface().rgb, 1.0) * uAlpha; \n}"

    return-object v0
.end method
