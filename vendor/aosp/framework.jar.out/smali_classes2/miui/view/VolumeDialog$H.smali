.class final Lmiui/view/VolumeDialog$H;
.super Landroid/os/Handler;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final DISMISS:I = 0x2

.field private static final RECHECK:I = 0x3

.field private static final RECHECK_ALL:I = 0x4

.field private static final RESCHEDULE_TIMEOUT:I = 0x5

.field private static final RESET_SCREENSHOT:I = 0xb

.field private static final SHOW:I = 0x1

.field private static final SHOW_SAFE_WARNING:I = 0x9

.field private static final STATE_CHANGED:I = 0x6

.field private static final UPDATE_BOTTOM_MARGIN:I = 0x7

.field private static final UPDATE_LAYOUT_DIRECTION:I = 0x8

.field private static final VIBRATE:I = 0xa


# instance fields
.field final synthetic this$0:Lmiui/view/VolumeDialog;


# direct methods
.method public constructor <init>(Lmiui/view/VolumeDialog;)V
    .locals 1

    .prologue
    .line 654
    iput-object p1, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    .line 655
    # getter for: Lmiui/view/VolumeDialog;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {p1}, Lmiui/view/VolumeDialog;->access$2900(Lmiui/view/VolumeDialog;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 656
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 660
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 695
    :goto_0
    return-void

    .line 662
    :pswitch_0
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lmiui/view/VolumeDialog;->showH(I)V
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->access$3000(Lmiui/view/VolumeDialog;I)V

    goto :goto_0

    .line 665
    :pswitch_1
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->dismissH()V
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$3100(Lmiui/view/VolumeDialog;)V

    goto :goto_0

    .line 668
    :pswitch_2
    iget-object v1, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/view/VolumeDialog$VolumeRow;

    # invokes: Lmiui/view/VolumeDialog;->recheckH(Lmiui/view/VolumeDialog$VolumeRow;)V
    invoke-static {v1, v0}, Lmiui/view/VolumeDialog;->access$3200(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 671
    :pswitch_3
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    const/4 v1, 0x0

    # invokes: Lmiui/view/VolumeDialog;->recheckH(Lmiui/view/VolumeDialog$VolumeRow;)V
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->access$3200(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 674
    :pswitch_4
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$3300(Lmiui/view/VolumeDialog;)V

    goto :goto_0

    .line 677
    :pswitch_5
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->updateDialogBottomMarginH()V
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$3400(Lmiui/view/VolumeDialog;)V

    goto :goto_0

    .line 680
    :pswitch_6
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lmiui/view/VolumeDialog;->stateChangedH(II)V
    invoke-static {v0, v1, v2}, Lmiui/view/VolumeDialog;->access$3500(Lmiui/view/VolumeDialog;II)V

    goto :goto_0

    .line 683
    :pswitch_7
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lmiui/view/VolumeDialog;->updateLayoutDirectionH(I)V
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->access$3600(Lmiui/view/VolumeDialog;I)V

    goto :goto_0

    .line 686
    :pswitch_8
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lmiui/view/VolumeDialog;->showSafetyWarningH(I)V
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->access$3700(Lmiui/view/VolumeDialog;I)V

    goto :goto_0

    .line 689
    :pswitch_9
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->vibrateH()V
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$3800(Lmiui/view/VolumeDialog;)V

    goto :goto_0

    .line 692
    :pswitch_a
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    const/4 v1, 0x0

    # setter for: Lmiui/view/VolumeDialog;->mInScreenshot:Z
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->access$3902(Lmiui/view/VolumeDialog;Z)Z

    goto :goto_0

    .line 660
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
