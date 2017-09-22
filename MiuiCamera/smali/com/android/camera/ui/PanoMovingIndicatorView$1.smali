.class Lcom/android/camera/ui/PanoMovingIndicatorView$1;
.super Landroid/os/Handler;
.source "PanoMovingIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PanoMovingIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PanoMovingIndicatorView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PanoMovingIndicatorView;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$1;->this$0:Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$1;->this$0:Lcom/android/camera/ui/PanoMovingIndicatorView;

    iget-object v1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$1;->this$0:Lcom/android/camera/ui/PanoMovingIndicatorView;

    # getter for: Lcom/android/camera/ui/PanoMovingIndicatorView;->mLastestSpeed:I
    invoke-static {v1}, Lcom/android/camera/ui/PanoMovingIndicatorView;->access$000(Lcom/android/camera/ui/PanoMovingIndicatorView;)I

    move-result v1

    # invokes: Lcom/android/camera/ui/PanoMovingIndicatorView;->getPointGap(I)I
    invoke-static {v0, v1}, Lcom/android/camera/ui/PanoMovingIndicatorView;->access$100(Lcom/android/camera/ui/PanoMovingIndicatorView;I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$1;->this$0:Lcom/android/camera/ui/PanoMovingIndicatorView;

    # getter for: Lcom/android/camera/ui/PanoMovingIndicatorView;->mPointGap:F
    invoke-static {v1}, Lcom/android/camera/ui/PanoMovingIndicatorView;->access$200(Lcom/android/camera/ui/PanoMovingIndicatorView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$1;->this$0:Lcom/android/camera/ui/PanoMovingIndicatorView;

    iget-object v1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$1;->this$0:Lcom/android/camera/ui/PanoMovingIndicatorView;

    # getter for: Lcom/android/camera/ui/PanoMovingIndicatorView;->mLastestSpeed:I
    invoke-static {v1}, Lcom/android/camera/ui/PanoMovingIndicatorView;->access$000(Lcom/android/camera/ui/PanoMovingIndicatorView;)I

    move-result v1

    # invokes: Lcom/android/camera/ui/PanoMovingIndicatorView;->filterSpeed(I)V
    invoke-static {v0, v1}, Lcom/android/camera/ui/PanoMovingIndicatorView;->access$300(Lcom/android/camera/ui/PanoMovingIndicatorView;I)V

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/PanoMovingIndicatorView$1;->this$0:Lcom/android/camera/ui/PanoMovingIndicatorView;

    # invokes: Lcom/android/camera/ui/PanoMovingIndicatorView;->applyNewGap()V
    invoke-static {v0}, Lcom/android/camera/ui/PanoMovingIndicatorView;->access$400(Lcom/android/camera/ui/PanoMovingIndicatorView;)V

    .line 70
    const/4 v0, 0x1

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/camera/ui/PanoMovingIndicatorView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
