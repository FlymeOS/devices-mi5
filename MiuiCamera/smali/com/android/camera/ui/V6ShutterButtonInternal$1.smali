.class Lcom/android/camera/ui/V6ShutterButtonInternal$1;
.super Landroid/os/Handler;
.source "V6ShutterButtonInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6ShutterButtonInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6ShutterButtonInternal;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 75
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 77
    :sswitch_0
    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    # invokes: Lcom/android/camera/ui/V6ShutterButtonInternal;->onLongPress()V
    invoke-static {v3}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$000(Lcom/android/camera/ui/V6ShutterButtonInternal;)V

    goto :goto_0

    .line 81
    :sswitch_1
    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6ShutterButtonInternal;->invalidate()V

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    # getter for: Lcom/android/camera/ui/V6ShutterButtonInternal;->mStartTime:J
    invoke-static {v3}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$100(Lcom/android/camera/ui/V6ShutterButtonInternal;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 83
    .local v0, "duration":J
    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    # getter for: Lcom/android/camera/ui/V6ShutterButtonInternal;->mDuration:J
    invoke-static {v3}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$200(Lcom/android/camera/ui/V6ShutterButtonInternal;)J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    # invokes: Lcom/android/camera/ui/V6ShutterButtonInternal;->animationDone()V
    invoke-static {v3}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$300(Lcom/android/camera/ui/V6ShutterButtonInternal;)V

    goto :goto_0

    .line 87
    :cond_0
    long-to-float v3, v0

    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    # getter for: Lcom/android/camera/ui/V6ShutterButtonInternal;->mDuration:J
    invoke-static {v4}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$200(Lcom/android/camera/ui/V6ShutterButtonInternal;)J

    move-result-wide v4

    long-to-float v4, v4

    div-float v2, v3, v4

    .line 88
    .local v2, "t":F
    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    # getter for: Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F
    invoke-static {v4}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$500(Lcom/android/camera/ui/V6ShutterButtonInternal;)F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    # getter for: Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMaxRadius:F
    invoke-static {v5}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$600(Lcom/android/camera/ui/V6ShutterButtonInternal;)F

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    # getter for: Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F
    invoke-static {v6}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$500(Lcom/android/camera/ui/V6ShutterButtonInternal;)F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    # getter for: Lcom/android/camera/ui/V6ShutterButtonInternal;->mIncreaseFlag:Z
    invoke-static {v6}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$700(Lcom/android/camera/ui/V6ShutterButtonInternal;)Z

    move-result v6

    if-eqz v6, :cond_1

    .end local v2    # "t":F
    :goto_1
    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    # setter for: Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterRadius:F
    invoke-static {v3, v4}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$402(Lcom/android/camera/ui/V6ShutterButtonInternal;F)F

    .line 90
    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    # getter for: Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$800(Lcom/android/camera/ui/V6ShutterButtonInternal;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    const-wide/16 v6, 0x14

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 88
    .restart local v2    # "t":F
    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v2, v6, v2

    goto :goto_1

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method
