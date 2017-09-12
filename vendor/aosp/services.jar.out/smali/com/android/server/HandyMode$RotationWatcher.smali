.class Lcom/android/server/HandyMode$RotationWatcher;
.super Landroid/view/IRotationWatcher$Stub;
.source "HandyMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HandyMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RotationWatcher"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 111
    invoke-static {}, Lmiui/util/HandyModeUtils;->isFeatureVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    if-eqz p1, :cond_0

    # getter for: Lcom/android/server/HandyMode;->sMode:I
    invoke-static {}, Lcom/android/server/HandyMode;->access$000()I

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/android/server/HandyMode;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/HandyMode$RotationWatcher$1;

    invoke-direct {v1, p0}, Lcom/android/server/HandyMode$RotationWatcher$1;-><init>(Lcom/android/server/HandyMode$RotationWatcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
