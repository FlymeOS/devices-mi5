.class Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;
.super Ljava/lang/Object;
.source "MorphoPanoramaModule.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MorphoPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StillPreviewRender"
.end annotation


# instance fields
.field private mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field mTransform:[F

.field final synthetic this$0:Lcom/android/camera/module/MorphoPanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 2

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 303
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->mTransform:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/module/MorphoPanoramaModule;
    .param p2, "x1"    # Lcom/android/camera/module/MorphoPanoramaModule$1;

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .param p1, "gl10"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v11

    .line 317
    .local v11, "screen":Lcom/android/camera/CameraScreenNail;
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvas;

    move-result-object v7

    .line 318
    .local v7, "canvas":Lcom/android/gallery3d/ui/GLCanvas;
    if-eqz v11, :cond_0

    if-eqz v7, :cond_0

    .line 319
    monitor-enter v7

    .line 320
    :try_start_0
    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    .line 322
    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->getWidth()I

    move-result v10

    .line 323
    .local v10, "oldWidth":I
    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->getHeight()I

    move-result v9

    .line 324
    .local v9, "oldHeight":I
    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 325
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;
    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1000(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/ui/GLTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->getWidth()I

    move-result v12

    .line 326
    .local v12, "width":I
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreview:Lcom/android/camera/ui/GLTextureView;
    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1000(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/ui/GLTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->getHeight()I

    move-result v8

    .line 327
    .local v8, "height":I
    invoke-interface {v7, v12, v8}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    .line 328
    invoke-virtual {v11}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->mTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 329
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {v11}, Lcom/android/camera/CameraScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->mTransform:[F

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureOffsetX:I
    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureOffsetY:I
    invoke-static {v4}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1200(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureWidth:I
    invoke-static {v5}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1300(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    # getter for: Lcom/android/camera/module/MorphoPanoramaModule;->mStillPreviewTextureHeight:I
    invoke-static {v6}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1400(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 332
    invoke-interface {v7, v10, v9}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    .line 333
    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 335
    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->recycledResources()V

    .line 336
    monitor-exit v7

    .line 338
    .end local v8    # "height":I
    .end local v9    # "oldHeight":I
    .end local v10    # "oldWidth":I
    .end local v12    # "width":I
    :cond_0
    return-void

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .param p1, "gl10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 312
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .param p1, "gl10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 308
    return-void
.end method
