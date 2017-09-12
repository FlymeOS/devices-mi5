.class final Lmiui/view/VolumeDialog$CustomDialog;
.super Landroid/app/Dialog;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustomDialog"
.end annotation


# instance fields
.field private mDownX:F

.field private mDownY:F

.field final synthetic this$0:Lmiui/view/VolumeDialog;


# direct methods
.method public constructor <init>(Lmiui/view/VolumeDialog;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 844
    iput-object p1, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    .line 845
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 846
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 850
    iget-object v0, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$3300(Lmiui/view/VolumeDialog;)V

    .line 851
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 856
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 858
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 859
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 860
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 861
    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 862
    const-string v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 863
    const-string v0, "miui.intent.TAKE_SCREENSHOT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$4800(Lmiui/view/VolumeDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lmiui/view/VolumeDialog;->access$4700(Lmiui/view/VolumeDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 865
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 869
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 870
    iget-object v0, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$4800(Lmiui/view/VolumeDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lmiui/view/VolumeDialog;->access$4700(Lmiui/view/VolumeDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 871
    iget-object v0, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$100(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->sendEmptyMessage(I)Z

    .line 872
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 877
    invoke-virtual {p0}, Lmiui/view/VolumeDialog$CustomDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 878
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 879
    iget-object v3, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->dismissH()V
    invoke-static {v3}, Lmiui/view/VolumeDialog;->access$3100(Lmiui/view/VolumeDialog;)V

    .line 895
    :goto_0
    return v2

    .line 883
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_2

    .line 884
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lmiui/view/VolumeDialog$CustomDialog;->mDownX:F

    .line 885
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lmiui/view/VolumeDialog$CustomDialog;->mDownY:F

    .line 895
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 886
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 887
    iget v3, p0, Lmiui/view/VolumeDialog$CustomDialog;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 888
    .local v0, "diffx":F
    iget v3, p0, Lmiui/view/VolumeDialog$CustomDialog;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float v1, v3, v4

    .line 889
    .local v1, "diffy":F
    cmpg-float v3, v0, v1

    if-gez v3, :cond_1

    iget-object v3, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lmiui/view/VolumeDialog;->access$4800(Lmiui/view/VolumeDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    .line 890
    iget-object v3, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->dismissH()V
    invoke-static {v3}, Lmiui/view/VolumeDialog;->access$3100(Lmiui/view/VolumeDialog;)V

    goto :goto_0
.end method
