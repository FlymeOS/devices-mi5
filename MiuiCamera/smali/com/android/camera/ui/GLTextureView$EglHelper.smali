.class Lcom/android/camera/ui/GLTextureView$EglHelper;
.super Ljava/lang/Object;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EglHelper"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/ui/GLTextureView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/ui/GLTextureView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 758
    .local p1, "glTextureViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/camera/ui/GLTextureView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    iput-object p1, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 760
    return-void
.end method

.method private destroySurfaceImp()V
    .locals 6

    .prologue
    .line 928
    iget-object v1, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_1

    .line 929
    iget-object v1, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 932
    iget-object v1, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GLTextureView;

    .line 933
    .local v0, "view":Lcom/android/camera/ui/GLTextureView;
    if-eqz v0, :cond_0

    .line 934
    # getter for: Lcom/android/camera/ui/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/android/camera/ui/GLTextureView$EGLWindowSurfaceFactory;
    invoke-static {v0}, Lcom/android/camera/ui/GLTextureView;->access$600(Lcom/android/camera/ui/GLTextureView;)Lcom/android/camera/ui/GLTextureView$EGLWindowSurfaceFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/camera/ui/GLTextureView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 936
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 938
    .end local v0    # "view":Lcom/android/camera/ui/GLTextureView;
    :cond_1
    return-void
.end method

.method public static formatEglError(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "function"    # Ljava/lang/String;
    .param p1, "error"    # I

    .prologue
    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "error"    # I

    .prologue
    .line 971
    invoke-static {p1, p2}, Lcom/android/camera/ui/GLTextureView$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .locals 1
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 958
    iget-object v0, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera/ui/GLTextureView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 959
    return-void
.end method

.method public static throwEglException(Ljava/lang/String;I)V
    .locals 2
    .param p0, "function"    # Ljava/lang/String;
    .param p1, "error"    # I

    .prologue
    .line 962
    invoke-static {p0, p1}, Lcom/android/camera/ui/GLTextureView$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 967
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method createGL()Ljavax/microedition/khronos/opengles/GL;
    .locals 5

    .prologue
    .line 887
    iget-object v4, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v4}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 888
    .local v1, "gl":Ljavax/microedition/khronos/opengles/GL;
    iget-object v4, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/GLTextureView;

    .line 889
    .local v3, "view":Lcom/android/camera/ui/GLTextureView;
    if-eqz v3, :cond_3

    .line 890
    # getter for: Lcom/android/camera/ui/GLTextureView;->mGLWrapper:Lcom/android/camera/ui/GLTextureView$GLWrapper;
    invoke-static {v3}, Lcom/android/camera/ui/GLTextureView;->access$700(Lcom/android/camera/ui/GLTextureView;)Lcom/android/camera/ui/GLTextureView$GLWrapper;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 891
    # getter for: Lcom/android/camera/ui/GLTextureView;->mGLWrapper:Lcom/android/camera/ui/GLTextureView$GLWrapper;
    invoke-static {v3}, Lcom/android/camera/ui/GLTextureView;->access$700(Lcom/android/camera/ui/GLTextureView;)Lcom/android/camera/ui/GLTextureView$GLWrapper;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/camera/ui/GLTextureView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 894
    :cond_0
    # getter for: Lcom/android/camera/ui/GLTextureView;->mDebugFlags:I
    invoke-static {v3}, Lcom/android/camera/ui/GLTextureView;->access$800(Lcom/android/camera/ui/GLTextureView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_3

    .line 895
    const/4 v0, 0x0

    .line 896
    .local v0, "configFlags":I
    const/4 v2, 0x0

    .line 897
    .local v2, "log":Ljava/io/Writer;
    # getter for: Lcom/android/camera/ui/GLTextureView;->mDebugFlags:I
    invoke-static {v3}, Lcom/android/camera/ui/GLTextureView;->access$800(Lcom/android/camera/ui/GLTextureView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 898
    or-int/lit8 v0, v0, 0x1

    .line 900
    :cond_1
    # getter for: Lcom/android/camera/ui/GLTextureView;->mDebugFlags:I
    invoke-static {v3}, Lcom/android/camera/ui/GLTextureView;->access$800(Lcom/android/camera/ui/GLTextureView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 901
    new-instance v2, Lcom/android/camera/ui/GLTextureView$LogWriter;

    .end local v2    # "log":Ljava/io/Writer;
    invoke-direct {v2}, Lcom/android/camera/ui/GLTextureView$LogWriter;-><init>()V

    .line 903
    .restart local v2    # "log":Ljava/io/Writer;
    :cond_2
    invoke-static {v1, v0, v2}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 906
    .end local v0    # "configFlags":I
    .end local v2    # "log":Ljava/io/Writer;
    :cond_3
    return-object v1
.end method

.method public createSurface()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 830
    iget-object v3, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v3, :cond_0

    .line 831
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "egl not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 833
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v3, :cond_1

    .line 834
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglDisplay not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 836
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v3, :cond_2

    .line 837
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mEglConfig not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 844
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/GLTextureView$EglHelper;->destroySurfaceImp()V

    .line 849
    iget-object v3, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/GLTextureView;

    .line 850
    .local v1, "view":Lcom/android/camera/ui/GLTextureView;
    if-eqz v1, :cond_5

    .line 851
    # getter for: Lcom/android/camera/ui/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/android/camera/ui/GLTextureView$EGLWindowSurfaceFactory;
    invoke-static {v1}, Lcom/android/camera/ui/GLTextureView;->access$600(Lcom/android/camera/ui/GLTextureView;)Lcom/android/camera/ui/GLTextureView$EGLWindowSurfaceFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v7

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/camera/ui/GLTextureView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 857
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v3, v4, :cond_6

    .line 858
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 859
    .local v0, "error":I
    const/16 v3, 0x300b

    if-ne v0, v3, :cond_4

    .line 860
    const-string v3, "EglHelper"

    const-string v4, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    .end local v0    # "error":I
    :cond_4
    :goto_1
    return v2

    .line 854
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    .line 869
    :cond_6
    iget-object v3, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v7, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 874
    const-string v3, "EGLHelper"

    const-string v4, "eglMakeCurrent"

    iget-object v5, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/camera/ui/GLTextureView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 878
    :cond_7
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public destroySurface()V
    .locals 0

    .prologue
    .line 924
    invoke-direct {p0}, Lcom/android/camera/ui/GLTextureView$EglHelper;->destroySurfaceImp()V

    .line 925
    return-void
.end method

.method public finish()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 944
    iget-object v1, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_1

    .line 945
    iget-object v1, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GLTextureView;

    .line 946
    .local v0, "view":Lcom/android/camera/ui/GLTextureView;
    if-eqz v0, :cond_0

    .line 947
    # getter for: Lcom/android/camera/ui/GLTextureView;->mEGLContextFactory:Lcom/android/camera/ui/GLTextureView$EGLContextFactory;
    invoke-static {v0}, Lcom/android/camera/ui/GLTextureView;->access$500(Lcom/android/camera/ui/GLTextureView;)Lcom/android/camera/ui/GLTextureView$EGLContextFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/camera/ui/GLTextureView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 949
    :cond_0
    iput-object v5, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 951
    .end local v0    # "view":Lcom/android/camera/ui/GLTextureView;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v1, :cond_2

    .line 952
    iget-object v1, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 953
    iput-object v5, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 955
    :cond_2
    return-void
.end method

.method public start()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 773
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v3

    check-cast v3, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v3, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 778
    iget-object v3, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v3, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 780
    iget-object v3, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v3, v5, :cond_0

    .line 781
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "eglGetDisplay failed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 787
    :cond_0
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 788
    .local v1, "version":[I
    iget-object v3, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v3, v5, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 789
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "eglInitialize failed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 791
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/GLTextureView;

    .line 792
    .local v2, "view":Lcom/android/camera/ui/GLTextureView;
    if-nez v2, :cond_4

    .line 793
    iput-object v4, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 794
    iput-object v4, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 806
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v3, v5, :cond_3

    .line 807
    :cond_2
    iput-object v4, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 808
    const-string v3, "createContext"

    invoke-direct {p0, v3}, Lcom/android/camera/ui/GLTextureView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 814
    :cond_3
    iput-object v4, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 815
    return-void

    .line 796
    :cond_4
    # getter for: Lcom/android/camera/ui/GLTextureView;->mEGLConfigChooser:Lcom/android/camera/ui/GLTextureView$EGLConfigChooser;
    invoke-static {v2}, Lcom/android/camera/ui/GLTextureView;->access$300(Lcom/android/camera/ui/GLTextureView;)Lcom/android/camera/ui/GLTextureView$EGLConfigChooser;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v3, v5, v6}, Lcom/android/camera/ui/GLTextureView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 802
    # getter for: Lcom/android/camera/ui/GLTextureView;->mShareContextGetter:Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;
    invoke-static {v2}, Lcom/android/camera/ui/GLTextureView;->access$400(Lcom/android/camera/ui/GLTextureView;)Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;

    move-result-object v3

    if-nez v3, :cond_5

    move-object v0, v4

    .line 804
    .local v0, "shareContext":Ljavax/microedition/khronos/egl/EGLContext;
    :goto_1
    # getter for: Lcom/android/camera/ui/GLTextureView;->mEGLContextFactory:Lcom/android/camera/ui/GLTextureView$EGLContextFactory;
    invoke-static {v2}, Lcom/android/camera/ui/GLTextureView;->access$500(Lcom/android/camera/ui/GLTextureView;)Lcom/android/camera/ui/GLTextureView$EGLContextFactory;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v3, v5, v6, v7, v0}, Lcom/android/camera/ui/GLTextureView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0

    .line 802
    .end local v0    # "shareContext":Ljavax/microedition/khronos/egl/EGLContext;
    :cond_5
    # getter for: Lcom/android/camera/ui/GLTextureView;->mShareContextGetter:Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;
    invoke-static {v2}, Lcom/android/camera/ui/GLTextureView;->access$400(Lcom/android/camera/ui/GLTextureView;)Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;->getShareContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    goto :goto_1
.end method

.method public swap()I
    .locals 3

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 917
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3000

    goto :goto_0
.end method
