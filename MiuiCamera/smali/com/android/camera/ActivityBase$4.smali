.class Lcom/android/camera/ActivityBase$4;
.super Ljava/lang/Object;
.source "ActivityBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/camera/ActivityBase$4;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 500
    const-string v0, "ActivityBase"

    const-string v1, "Time of starting gallery is too long, maybe it was killed at background."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v0, p0, Lcom/android/camera/ActivityBase$4;->this$0:Lcom/android/camera/ActivityBase;

    const/4 v1, 0x0

    # setter for: Lcom/android/camera/ActivityBase;->mJumpFlag:I
    invoke-static {v0, v1}, Lcom/android/camera/ActivityBase;->access$202(Lcom/android/camera/ActivityBase;I)I

    .line 502
    iget-object v0, p0, Lcom/android/camera/ActivityBase$4;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast v0, Lcom/android/camera/module/BaseModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 503
    return-void
.end method
