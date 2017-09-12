.class public Lmiui/util/LongScreenshotUtils$ContentPort$H;
.super Landroid/os/Handler;
.source "LongScreenshotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LongScreenshotUtils$ContentPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "H"
.end annotation


# static fields
.field public static final MSG_BROADCAST_CALLBACK:I = 0x3

.field public static final MSG_FINISH:I = 0x4

.field public static final MSG_SCROLL:I = 0x2

.field public static final MSG_START:I = 0x1


# instance fields
.field final synthetic this$0:Lmiui/util/LongScreenshotUtils$ContentPort;


# direct methods
.method public constructor <init>(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .locals 1

    .prologue
    .line 191
    iput-object p1, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    .line 192
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 193
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 197
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 199
    :pswitch_0
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    # invokes: Lmiui/util/LongScreenshotUtils$ContentPort;->start()V
    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->access$000(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    goto :goto_0

    .line 202
    :pswitch_1
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    # getter for: Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;
    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->access$100(Lmiui/util/LongScreenshotUtils$ContentPort;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    # invokes: Lmiui/util/LongScreenshotUtils$ContentPort;->scrollView()V
    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->access$200(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    .line 204
    const/4 v0, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 208
    :pswitch_2
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    # getter for: Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;
    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->access$100(Lmiui/util/LongScreenshotUtils$ContentPort;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    # invokes: Lmiui/util/LongScreenshotUtils$ContentPort;->broadcastCallback()V
    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->access$300(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    goto :goto_0

    .line 213
    :pswitch_3
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    # invokes: Lmiui/util/LongScreenshotUtils$ContentPort;->finish()V
    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->access$400(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
