.class public Lcom/android/camera/effect/renders/SnapshotEffectRender;
.super Ljava/lang/Object;
.source "SnapshotEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/renders/SnapshotEffectRender$1;,
        Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;,
        Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;,
        Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;
    }
.end annotation


# static fields
.field private static final CONFIG_SPEC:[I


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mEglThread:Landroid/os/HandlerThread;

.field private mEglThreadBlockVar:Landroid/os/ConditionVariable;

.field private mExifNeeded:Z

.field private mImageSaver:Lcom/android/camera/storage/ImageSaver;

.field private mIsImageCaptureIntent:Z

.field private volatile mJpegQueueSize:I

.field private final mLock:Ljava/lang/Object;

.field private mQuality:I

.field private mRelease:Z

.field private mReleasePending:Z

.field private mTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->CONFIG_SPEC:[I

    return-void

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3038
    .end array-data
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;Z)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/ActivityBase;
    .param p2, "isImageCaptureIntent"    # Z

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    .line 49
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTitleMap:Ljava/util/Map;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    .line 66
    const/16 v0, 0x55

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mQuality:I

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mLock:Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;

    .line 79
    iput-boolean p2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mIsImageCaptureIntent:Z

    .line 80
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SnapshotEffectProcessor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThread:Landroid/os/HandlerThread;

    .line 81
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;-><init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    .line 83
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->sendMessageSync(I)V

    .line 84
    iput-boolean v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRelease:Z

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/ActivityBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/ActivityBase;)Lcom/android/camera/ActivityBase;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;
    .param p1, "x1"    # Lcom/android/camera/ActivityBase;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLSurface;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mQuality:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTitleMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mReleasePending:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/storage/ImageSaver;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/effect/renders/SnapshotEffectRender;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mReleasePending:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/effect/renders/SnapshotEffectRender;[B)Lcom/android/gallery3d/exif/ExifInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;
    .param p1, "x1"    # [B

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/camera/effect/renders/SnapshotEffectRender;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRelease:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$410(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGL10;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGL10;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object p1
.end method

.method static synthetic access$800(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1
    .param p0, "x0"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;
    .param p1, "x1"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p1
.end method

.method private static chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12
    .param p0, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    const/4 v4, 0x0

    .line 206
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 207
    .local v5, "numConfig":[I
    sget-object v2, Lcom/android/camera/effect/renders/SnapshotEffectRender;->CONFIG_SPEC:[I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    aget v10, v5, v4

    .line 212
    .local v10, "numConfigs":I
    if-gtz v10, :cond_1

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_1
    new-array v9, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 217
    .local v9, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v8, Lcom/android/camera/effect/renders/SnapshotEffectRender;->CONFIG_SPEC:[I

    move-object v6, p0

    move-object v7, p1

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_2
    aget-object v0, v9, v4

    return-object v0
.end method

.method private getExif([B)Lcom/android/gallery3d/exif/ExifInterface;
    .locals 4
    .param p1, "jpeg"    # [B

    .prologue
    .line 182
    new-instance v1, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 184
    .local v1, "exif":Lcom/android/gallery3d/exif/ExifInterface;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-object v1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "SnapshotEffectProcessor"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processorThumAsync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V
    .locals 7
    .param p1, "jpeg"    # Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;

    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    iget v6, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    invoke-static/range {v0 .. v6}, Lcom/android/camera/storage/Storage;->newImage(Landroid/content/Context;Ljava/lang/String;JIII)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private processorThumSync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V
    .locals 8
    .param p1, "jpeg"    # Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v0

    iput-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    .line 164
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBytes()[B

    move-result-object v7

    .line 165
    .local v7, "data":[B
    if-eqz v7, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 167
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 168
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 179
    .end local v7    # "data":[B
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;

    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    iget v6, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    invoke-static/range {v0 .. v6}, Lcom/android/camera/storage/Storage;->newImage(Landroid/content/Context;Ljava/lang/String;JIII)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public changeJpegTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "oldTitle"    # Ljava/lang/String;

    .prologue
    .line 140
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTitleMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    monitor-exit p0

    .line 145
    :cond_0
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public prepareEffectRender(I)V
    .locals 3
    .param p1, "effect"    # I

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 725
    return-void
.end method

.method public processorJpegAsync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)Z
    .locals 8
    .param p1, "jpeg"    # Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    const-string v5, "SnapshotEffectProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queueSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget v5, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    const/4 v6, 0x7

    if-lt v5, v6, :cond_0

    .line 106
    const-string v4, "SnapshotEffectProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queueSize is full, drop it "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    return v3

    .line 109
    :cond_0
    iget v5, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    if-nez v5, :cond_2

    move v1, v4

    .line 110
    .local v1, "sync":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 111
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->processorThumSync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V

    .line 116
    :goto_2
    iget-boolean v5, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mIsImageCaptureIntent:Z

    if-nez v5, :cond_1

    if-eqz v1, :cond_1

    iget-boolean v5, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    if-eqz v5, :cond_1

    .line 117
    iget-object v5, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v5}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    iget-object v5, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    if-eqz v5, :cond_1

    .line 120
    iput-boolean v3, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mFinalImage:Z

    .line 121
    iget-object v5, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    iget v6, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-static {v5, v0, v6, v3}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v2

    .line 122
    .local v2, "t":Lcom/android/camera/Thumbnail;
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;)V

    .line 125
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "t":Lcom/android/camera/Thumbnail;
    :cond_1
    iget-object v5, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 126
    :try_start_0
    iget v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    .line 127
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    invoke-virtual {v3, v4, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    move v3, v4

    .line 129
    goto :goto_0

    .end local v1    # "sync":Z
    :cond_2
    move v1, v3

    .line 109
    goto :goto_1

    .line 113
    .restart local v1    # "sync":Z
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->processorThumAsync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V

    goto :goto_2

    .line 127
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public processorJpegSync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V
    .locals 4
    .param p1, "jpeg"    # Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 135
    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v3, 0x2

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 136
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 137
    return-void

    :cond_0
    move v0, v1

    .line 135
    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 198
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iput-boolean v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mReleasePending:Z

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setImageSaver(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0
    .param p1, "imageSaver"    # Lcom/android/camera/storage/ImageSaver;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    .line 89
    return-void
.end method

.method public setQuality(I)V
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 92
    if-lez p1, :cond_0

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 93
    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mQuality:I

    .line 95
    :cond_0
    return-void
.end method
