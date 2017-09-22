.class Lcom/android/camera/ActivityBase$1;
.super Landroid/os/Handler;
.source "ActivityBase.java"


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
    .line 80
    iput-object p1, p0, Lcom/android/camera/ActivityBase$1;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase$1;->this$0:Lcom/android/camera/ActivityBase;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/camera/ActivityBase$1;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v1, v0, Lcom/android/camera/ActivityBase;->mUIController:Lcom/android/camera/ui/UIController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/UIController;->showDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase$1;->this$0:Lcom/android/camera/ActivityBase;

    const/4 v1, 0x1

    # setter for: Lcom/android/camera/ActivityBase;->mIsFinishInKeygard:Z
    invoke-static {v0, v1}, Lcom/android/camera/ActivityBase;->access$002(Lcom/android/camera/ActivityBase;Z)Z

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
