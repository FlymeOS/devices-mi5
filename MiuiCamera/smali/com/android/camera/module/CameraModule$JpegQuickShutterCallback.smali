.class final Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegQuickShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .prologue
    .line 1252
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/module/CameraModule;
    .param p2, "x1"    # Lcom/android/camera/module/CameraModule$1;

    .prologue
    .line 1252
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 6

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/camera/module/CameraModule;->mShutterCallbackTime:J
    invoke-static {v0, v2, v3}, Lcom/android/camera/module/CameraModule;->access$3302(Lcom/android/camera/module/CameraModule;J)J

    .line 1256
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mShutterCallbackTime:J
    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$3300(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v4, v1, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/camera/module/CameraModule;->mShutterLag:J

    .line 1257
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v2, v2, Lcom/android/camera/module/CameraModule;->mShutterLag:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    # getter for: Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$5200(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/module/CameraModule$BurstSpeedController;

    move-result-object v0

    # invokes: Lcom/android/camera/module/CameraModule$BurstSpeedController;->onShutter()V
    invoke-static {v0}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->access$5400(Lcom/android/camera/module/CameraModule$BurstSpeedController;)V

    .line 1261
    return-void
.end method
