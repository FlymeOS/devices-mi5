.class public Lcom/android/camera/CameraScreenNail;
.super Lcom/android/camera/SurfaceTextureScreenNail;
.source "CameraScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraScreenNail$Listener;
    }
.end annotation


# instance fields
.field private mAnimState:I

.field private mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

.field private mFirstFrameArrived:Z

.field private mListener:Lcom/android/camera/CameraScreenNail$Listener;

.field private mLock:Ljava/lang/Object;

.field private mModuleAnimManager:Lcom/android/camera/ModuleAnimManager;

.field private mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

.field private final mTextureTransformMatrix:[F

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraScreenNail$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/CameraScreenNail$Listener;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;-><init>()V

    .line 64
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    .line 67
    new-instance v0, Lcom/android/camera/CaptureAnimManager;

    invoke-direct {v0}, Lcom/android/camera/CaptureAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    .line 68
    new-instance v0, Lcom/android/camera/SwitchAnimManager;

    invoke-direct {v0}, Lcom/android/camera/SwitchAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    .line 69
    new-instance v0, Lcom/android/camera/ModuleAnimManager;

    invoke-direct {v0}, Lcom/android/camera/ModuleAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/ModuleAnimManager;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    .line 91
    iput-object p1, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    .line 92
    return-void
.end method

.method private copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/CameraScreenNail;->copyTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V

    .line 302
    return-void
.end method

.method private copyTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V
    .locals 7
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "texture"    # Lcom/android/gallery3d/ui/RawTexture;

    .prologue
    const/4 v3, 0x0

    .line 305
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/RawTexture;->getWidth()I

    move-result v5

    .line 306
    .local v5, "width":I
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/RawTexture;->getHeight()I

    move-result v6

    .line 307
    .local v6, "height":I
    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 308
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraScreenNail;->updateTransformMatrix([F)V

    .line 309
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {v0, p1, p2, v3}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;I)V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 314
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 315
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endBindFrameBuffer()V

    .line 316
    return-void
.end method

.method private renderBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "texture"    # Lcom/android/gallery3d/ui/RawTexture;

    .prologue
    const/4 v2, 0x0

    .line 327
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/RawTexture;->getWidth()I

    move-result v4

    .line 328
    .local v4, "width":I
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/RawTexture;->getHeight()I

    move-result v5

    .line 330
    .local v5, "height":I
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {v0, p1, p2, v2}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;I)V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 334
    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->prepareBlurRenders()V

    .line 335
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 336
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;

    move-object v1, p2

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 337
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endBindFrameBuffer()V

    .line 338
    return-void
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 98
    invoke-super {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->acquireSurfaceTexture()V

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateCapture(I)V
    .locals 2
    .param p1, "animOrientation"    # I

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateHoldAndSlide()V

    .line 171
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 172
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 174
    :cond_0
    monitor-exit v1

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateHold(I)V
    .locals 2
    .param p1, "displayRotation"    # I

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateHold()V

    .line 189
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 190
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 192
    :cond_0
    monitor-exit v1

    .line 193
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateModuleChangeAfter()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleSwitching:Z

    if-eqz v0, :cond_1

    .line 130
    iput-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mModuleSwitching:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 132
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 135
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 137
    :cond_0
    monitor-exit v1

    .line 139
    :cond_1
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateModuleChangeBefore()V
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 123
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 125
    :cond_1
    monitor-exit v1

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateSlide()V
    .locals 4

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 202
    const-string v0, "CameraScreenNail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot animateSlide outside of animateCapture! Animation state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateSlide()V

    .line 206
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 207
    monitor-exit v1

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateSwitchCameraBefore()V
    .locals 3

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 152
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 153
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->startAnimation()V

    .line 154
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 156
    :cond_0
    monitor-exit v1

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateSwitchCopyTexture()V
    .locals 2

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 115
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 116
    monitor-exit v1

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAnimation()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->clearAnimation()V

    .line 143
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->clearAnimation()V

    .line 144
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/ModuleAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/ModuleAnimManager;->clearAnimation()V

    .line 145
    return-void
.end method

.method public directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 0
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 211
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 212
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 15
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 216
    iget-object v14, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 217
    :try_start_0
    iget-boolean v4, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 218
    :cond_0
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v4, :cond_1

    .line 219
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/gallery3d/ui/BitmapTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 220
    monitor-exit v14

    .line 298
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v13

    .line 223
    .local v13, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-eqz v13, :cond_2

    iget-boolean v4, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    if-nez v4, :cond_3

    :cond_2
    monitor-exit v14

    goto :goto_0

    .line 297
    .end local v13    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :catchall_0
    move-exception v4

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 225
    .restart local v13    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :cond_3
    :try_start_1
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    packed-switch v4, :pswitch_data_0

    .line 259
    :goto_1
    :pswitch_0
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_8

    .line 263
    :cond_4
    invoke-virtual {v13}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 264
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget-object v11, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object v10, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/camera/SwitchAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v12

    .line 266
    .local v12, "drawn":Z
    if-nez v12, :cond_5

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_7

    .line 267
    :cond_5
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 297
    .end local v12    # "drawn":Z
    :cond_6
    :goto_2
    monitor-exit v14

    goto :goto_0

    .line 227
    :pswitch_1
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_1

    .line 230
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 231
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/camera/SwitchAnimManager;->setReviewDrawingSize(IIII)V

    .line 232
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->onPreviewTextureCopied()V

    .line 233
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 240
    :pswitch_3
    invoke-virtual {v13}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 241
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget-object v10, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v10}, Lcom/android/camera/SwitchAnimManager;->drawPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z

    goto :goto_1

    .line 245
    :pswitch_4
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 246
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 247
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/camera/CaptureAnimManager;->startAnimation(IIII)V

    .line 248
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    goto :goto_1

    .line 251
    :pswitch_5
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/ModuleAnimManager;

    invoke-virtual {v4}, Lcom/android/camera/ModuleAnimManager;->animateStartHide()V

    .line 252
    const/16 v4, 0xb

    iput v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    goto/16 :goto_1

    .line 255
    :pswitch_6
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/ModuleAnimManager;

    invoke-virtual {v4}, Lcom/android/camera/ModuleAnimManager;->animateStartShow()V

    .line 256
    const/16 v4, 0xb

    iput v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    goto/16 :goto_1

    .line 271
    .restart local v12    # "drawn":Z
    :cond_7
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 272
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->onSwitchAnimationDone()V

    .line 273
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_2

    .line 275
    .end local v12    # "drawn":Z
    :cond_8
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    .line 276
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    iget-object v5, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, p0, v5}, Lcom/android/camera/CaptureAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v12

    .line 277
    .restart local v12    # "drawn":Z
    if-eqz v12, :cond_9

    .line 278
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    goto/16 :goto_2

    .line 282
    :cond_9
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 283
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto/16 :goto_2

    .line 285
    .end local v12    # "drawn":Z
    :cond_a
    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_6

    .line 286
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 287
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/ModuleAnimManager;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/ModuleAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIII)Z

    move-result v12

    .line 289
    .restart local v12    # "drawn":Z
    if-eqz v12, :cond_b

    .line 290
    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    goto/16 :goto_2

    .line 291
    :cond_b
    iget-boolean v4, p0, Lcom/android/camera/CameraScreenNail;->mModuleSwitching:Z

    if-nez v4, :cond_6

    .line 294
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public drawBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 319
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 320
    return-void
.end method

.method public getRenderRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mRenderLayoutRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isModuleSwitching()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleSwitching:Z

    return v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 390
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    if-nez v0, :cond_1

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 378
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 379
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    if-eqz v0, :cond_3

    .line 380
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 381
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 382
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->restartPreview()V

    .line 383
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->startResume()V

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 389
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseBitmapIfNeeded()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->isKeptBitmapTexture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 350
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 352
    :cond_0
    return-void
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    invoke-super {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->releaseSurfaceTexture()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleSwitching:Z

    .line 109
    monitor-exit v1

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public renderBitmapToCanvas(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 342
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 343
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 344
    return-void
.end method

.method public renderBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/CameraScreenNail;->renderBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V

    .line 324
    return-void
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 398
    :try_start_0
    invoke-static {}, Lcom/android/camera/Device;->isSurfaceSizeLimited()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, p1

    :goto_0
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mSurfaceWidth:I

    .line 400
    invoke-static {}, Lcom/android/camera/Device;->isSurfaceSizeLimited()Z

    move-result v0

    if-nez v0, :cond_2

    .end local p2    # "height":I
    :goto_1
    iput p2, p0, Lcom/android/camera/CameraScreenNail;->mSurfaceHeight:I

    .line 403
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget v2, p0, Lcom/android/camera/CameraScreenNail;->mSurfaceWidth:I

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mSurfaceHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/SwitchAnimManager;->setPreviewFrameLayoutSize(II)V

    .line 404
    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->updateRenderRect()V

    .line 407
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleSwitching:Z

    if-eqz v0, :cond_0

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 410
    :cond_0
    monitor-exit v1

    .line 411
    return-void

    .line 398
    .restart local p2    # "height":I
    :cond_1
    const/16 v0, 0x2d0

    goto :goto_0

    .line 400
    :cond_2
    mul-int/lit16 v0, p2, 0x2d0

    div-int p2, v0, p1

    goto :goto_1

    .line 410
    .end local p2    # "height":I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public switchCameraDone()V
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    .line 162
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 164
    :cond_0
    monitor-exit v1

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public switchModule()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleSwitching:Z

    .line 179
    return-void
.end method

.method protected updateExtraTransformMatrix([F)V
    .locals 9
    .param p1, "matrix"    # [F

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/high16 v6, -0x41000000    # -0.5f

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 414
    const/high16 v0, 0x3f800000    # 1.0f

    .line 415
    .local v0, "scaleX":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 416
    .local v1, "scaleY":F
    iget v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 419
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v2}, Lcom/android/camera/SwitchAnimManager;->getExtScaleX()F

    move-result v0

    .line 420
    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v2}, Lcom/android/camera/SwitchAnimManager;->getExtScaleY()F

    move-result v1

    .line 422
    :cond_1
    cmpl-float v2, v0, v4

    if-nez v2, :cond_2

    cmpl-float v2, v1, v4

    if-eqz v2, :cond_3

    .line 423
    :cond_2
    invoke-static {p1, v5, v8, v8, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 424
    invoke-static {p1, v5, v0, v1, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 425
    invoke-static {p1, v5, v6, v6, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 427
    :cond_3
    return-void
.end method
