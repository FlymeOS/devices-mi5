.class public final Lcom/android/camera/effect/renders/PipeRenderPair;
.super Lcom/android/camera/effect/renders/RenderGroup;
.source "PipeRenderPair.java"


# instance fields
.field private mBasicTexureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

.field private mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field private mBufferHeight:I

.field private mBufferWidth:I

.field private mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field private mFirstRender:Lcom/android/camera/effect/renders/Render;

.field private mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field private mFrameBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/FrameBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field private mSecondRender:Lcom/android/camera/effect/renders/Render;

.field private mTextureFilled:Z

.field private mUseMiddleBuffer:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 3
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 36
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 23
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 24
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTexureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    .line 27
    iput-boolean v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    .line 28
    iput v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 29
    iput v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    .line 31
    iput-boolean v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V
    .locals 3
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "first"    # Lcom/android/camera/effect/renders/Render;
    .param p3, "second"    # Lcom/android/camera/effect/renders/Render;
    .param p4, "useMiddleBuffer"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 40
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 23
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 24
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTexureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    .line 27
    iput-boolean v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    .line 28
    iput v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 29
    iput v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    .line 31
    iput-boolean v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    .line 41
    invoke-virtual {p0, p2, p3}, Lcom/android/camera/effect/renders/PipeRenderPair;->setRenderPairs(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;)V

    .line 42
    iput-boolean p4, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    .line 43
    return-void
.end method

.method private getEffectBufferRatio()I
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isDisplayShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 2
    .param p1, "render"    # Lcom/android/camera/effect/renders/Render;

    .prologue
    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supportted addRender in PipeRenderPair !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyBlurTexture(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 7
    .param p1, "ext"    # Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .prologue
    .line 101
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v0

    iget v1, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v0

    iget v1, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    if-eq v0, v1, :cond_3

    .line 104
    :cond_2
    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    iget v4, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mParentFrameBufferId:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 107
    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTexureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-boolean v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    :goto_1
    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mX:I

    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mY:I

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 113
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->endBindFrameBuffer()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    goto :goto_0

    .line 107
    :cond_4
    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    goto :goto_1
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 12
    .param p1, "attri"    # Lcom/android/camera/effect/draw_mode/DrawAttribute;

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 129
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v3

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v10, :cond_2

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    if-ne v0, v1, :cond_3

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result v3

    goto :goto_0

    .line 137
    :cond_3
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    move-object v8, p1

    .line 138
    check-cast v8, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 139
    .local v8, "ext":Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;
    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewWidth:I

    invoke-direct {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->getEffectBufferRatio()I

    move-result v1

    div-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewHeight:I

    invoke-direct {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->getEffectBufferRatio()I

    move-result v2

    div-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 141
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 142
    iget-object v11, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, v8, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, v8, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    iget-object v4, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v4}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/RawTexture;->getTextureWidth()I

    move-result v5

    iget-object v4, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v4}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/RawTexture;->getTextureHeight()I

    move-result v6

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 146
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->endBindFrameBuffer()V

    .line 148
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v0, :cond_4

    .line 149
    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->updateMiddleBuffer(II)V

    .line 150
    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 151
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 152
    iget-object v11, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, v8, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, v8, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    iget v5, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    iget v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 154
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->endBindFrameBuffer()V

    .line 157
    :cond_4
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isMainFrameDisplay()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 158
    invoke-static {}, Lcom/android/camera/Device;->isHoldBlurBackground()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 159
    invoke-virtual {p0, v8}, Lcom/android/camera/effect/renders/PipeRenderPair;->copyBlurTexture(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    .line 160
    invoke-virtual {p0, v8}, Lcom/android/camera/effect/renders/PipeRenderPair;->drawBlurTexture(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    :cond_5
    :goto_1
    move v3, v10

    .line 169
    goto/16 :goto_0

    .line 162
    :cond_6
    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTexureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-boolean v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    :goto_2
    iget v2, v8, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mX:I

    iget v3, v8, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mY:I

    iget v4, v8, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    iget v5, v8, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    goto :goto_2

    .line 170
    .end local v8    # "ext":Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;
    :cond_8
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_9

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    :cond_9
    move-object v7, p1

    .line 172
    check-cast v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 173
    .local v7, "basic":Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    iget v1, v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->updateMiddleBuffer(II)V

    .line 174
    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 175
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 176
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTexureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v2, v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    iget-object v4, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v4}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/RawTexture;->getTextureWidth()I

    move-result v5

    iget-object v4, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v4}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/RawTexture;->getTextureHeight()I

    move-result v6

    move v4, v3

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 181
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->endBindFrameBuffer()V

    .line 182
    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTexureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    iget v2, v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mX:I

    iget v3, v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mY:I

    iget v4, v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    iget v5, v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move v3, v10

    .line 187
    goto/16 :goto_0

    .line 188
    .end local v7    # "basic":Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    :cond_a
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    move-object v9, p1

    .line 189
    check-cast v9, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    .line 190
    .local v9, "intTex":Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;
    iget v0, v9, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mWidth:I

    iget v1, v9, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 191
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 192
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    iget v2, v9, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mTexId:I

    iget v5, v9, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mWidth:I

    iget v6, v9, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mHeight:I

    move v4, v3

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;-><init>(IIIII)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 197
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->endBindFrameBuffer()V

    .line 199
    iget-object v11, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTexureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    iget v2, v9, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mX:I

    iget v3, v9, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mY:I

    iget v4, v9, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mWidth:I

    iget v5, v9, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mHeight:I

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIIIZ)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move v3, v10

    .line 205
    goto/16 :goto_0
.end method

.method public drawBlurTexture(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 7
    .param p1, "ext"    # Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .prologue
    .line 118
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mX:I

    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mY:I

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {v6, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 125
    :cond_0
    return-void
.end method

.method public getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;
    .locals 16
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 225
    const/4 v2, 0x0

    .line 226
    .local v2, "buffer":Lcom/android/camera/effect/FrameBuffer;
    const/4 v4, 0x0

    .line 227
    .local v4, "bufferW":I
    const/4 v3, 0x0

    .line 228
    .local v3, "bufferH":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 229
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_3

    .line 230
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v8}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v4

    .line 231
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v8}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v3

    .line 232
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    int-to-double v8, v3

    int-to-double v10, v4

    div-double/2addr v8, v10

    move/from16 v0, p2

    int-to-double v10, v0

    move/from16 v0, p1

    int-to-double v12, v0

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 234
    .local v6, "ratio":D
    :goto_1
    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpl-double v8, v6, v8

    if-lez v8, :cond_2

    .line 229
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 232
    .end local v6    # "ratio":D
    :cond_1
    int-to-double v8, v4

    int-to-double v10, v3

    div-double/2addr v8, v10

    move/from16 v0, p1

    int-to-double v10, v0

    move/from16 v0, p2

    int-to-double v12, v0

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    goto :goto_1

    .line 237
    .restart local v6    # "ratio":D
    :cond_2
    invoke-static {v4}, Lcom/android/gallery3d/ui/Utils;->nextPowerOf2(I)I

    move-result v8

    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/ui/Utils;->nextPowerOf2(I)I

    move-result v9

    if-ne v8, v9, :cond_0

    invoke-static {v3}, Lcom/android/gallery3d/ui/Utils;->nextPowerOf2(I)I

    move-result v8

    invoke-static/range {p2 .. p2}, Lcom/android/gallery3d/ui/Utils;->nextPowerOf2(I)I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 239
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "buffer":Lcom/android/camera/effect/FrameBuffer;
    check-cast v2, Lcom/android/camera/effect/FrameBuffer;

    .line 245
    .end local v5    # "i":I
    .end local v6    # "ratio":D
    .restart local v2    # "buffer":Lcom/android/camera/effect/FrameBuffer;
    :cond_3
    if-nez v2, :cond_5

    .line 246
    new-instance v2, Lcom/android/camera/effect/FrameBuffer;

    .end local v2    # "buffer":Lcom/android/camera/effect/FrameBuffer;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/effect/renders/PipeRenderPair;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/effect/renders/PipeRenderPair;->mParentFrameBufferId:I

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v2, v8, v0, v1, v9}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    .line 247
    .restart local v2    # "buffer":Lcom/android/camera/effect/FrameBuffer;
    const-string v8, "PipeRenderPair"

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v10, "Camera new framebuffer thread = %d  w = %d, h= %d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x5

    if-le v8, v9, :cond_4

    .line 251
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 253
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_5
    return-object v2
.end method

.method public getTexture()Lcom/android/gallery3d/ui/RawTexture;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 213
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v0

    goto :goto_0
.end method

.method public prepareCopyBlurTexture()V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    .line 275
    return-void
.end method

.method public setFirstRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 2
    .param p1, "first"    # Lcom/android/camera/effect/renders/Render;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    .line 75
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_1
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    .line 63
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewWidth:I

    div-int/lit8 v0, v0, 0xc

    :goto_0
    iput v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 64
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewHeight:I

    div-int/lit8 v0, v0, 0xc

    :goto_1
    iput v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    .line 65
    return-void

    .line 63
    :cond_0
    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewWidth:I

    goto :goto_0

    .line 64
    :cond_1
    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewHeight:I

    goto :goto_1
.end method

.method public setRenderPairs(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;)V
    .locals 1
    .param p1, "first"    # Lcom/android/camera/effect/renders/Render;
    .param p2, "second"    # Lcom/android/camera/effect/renders/Render;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    if-ne p2, v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 48
    if-eqz p1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_1
    if-eqz p2, :cond_2

    .line 53
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_2
    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    .line 57
    iput-object p2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    goto :goto_0
.end method

.method public setSecondRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 2
    .param p1, "second"    # Lcom/android/camera/effect/renders/Render;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 82
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    if-eqz p1, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_1
    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    .line 89
    return-void
.end method

.method public setUsedMiddleBuffer(Z)V
    .locals 0
    .param p1, "useMiddleBuffer"    # Z

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    .line 261
    return-void
.end method

.method public updateMiddleBuffer(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v0, :cond_0

    .line 265
    div-int/lit8 v0, p1, 0xc

    iput v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 266
    div-int/lit8 v0, p2, 0xc

    iput v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    .line 271
    :goto_0
    return-void

    .line 268
    :cond_0
    iput p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 269
    iput p2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    goto :goto_0
.end method
