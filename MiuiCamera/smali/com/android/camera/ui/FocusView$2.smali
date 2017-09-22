.class Lcom/android/camera/ui/FocusView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FocusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FocusView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    .prologue
    .line 753
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 757
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mIsDraw:Z
    invoke-static {v1}, Lcom/android/camera/ui/FocusView;->access$3200(Lcom/android/camera/ui/FocusView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 758
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mCurrentViewState:I
    invoke-static {v1}, Lcom/android/camera/ui/FocusView;->access$200(Lcom/android/camera/ui/FocusView;)I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mRelativeLocation:[I
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$3600(Lcom/android/camera/ui/FocusView;)[I

    move-result-object v3

    aget v0, v3, v0

    int-to-float v0, v0

    sub-float v0, v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mRelativeLocation:[I
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$3600(Lcom/android/camera/ui/FocusView;)[I

    move-result-object v3

    aget v3, v3, v6

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mBigRadius:I
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1500(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    int-to-float v3, v3

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v5

    # invokes: Lcom/android/camera/ui/FocusView;->isInCircle(FFF)Z
    invoke-static {v1, v0, v2, v3}, Lcom/android/camera/ui/FocusView;->access$3700(Lcom/android/camera/ui/FocusView;FFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 761
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;
    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$3800(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/MessageDispacher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;
    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$000(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;
    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$3800(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/MessageDispacher;

    move-result-object v0

    const/4 v1, 0x2

    const v2, 0x7f09007c

    const/4 v3, 0x3

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 768
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "capture_times_focus_view"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # setter for: Lcom/android/camera/ui/FocusView;->mCaptured:Z
    invoke-static {v0, v6}, Lcom/android/camera/ui/FocusView;->access$3902(Lcom/android/camera/ui/FocusView;Z)Z

    :goto_0
    move v0, v6

    .line 777
    :cond_1
    return v0

    .line 771
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # setter for: Lcom/android/camera/ui/FocusView;->mIsDown:Z
    invoke-static {v0, v6}, Lcom/android/camera/ui/FocusView;->access$3302(Lcom/android/camera/ui/FocusView;Z)Z

    .line 772
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # invokes: Lcom/android/camera/ui/FocusView;->removeMessages()V
    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$4000(Lcom/android/camera/ui/FocusView;)V

    .line 773
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # invokes: Lcom/android/camera/ui/FocusView;->setTouchDown()V
    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$4100(Lcom/android/camera/ui/FocusView;)V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 783
    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mIsDown:Z
    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->access$3300(Lcom/android/camera/ui/FocusView;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 826
    :cond_0
    :goto_0
    return v2

    .line 784
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;
    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->access$4200(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/Camera;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6GestureRecognizer;->getGestureOrientation()I

    move-result v0

    .line 785
    .local v0, "getstureOri":I
    const/16 v4, 0xc8

    if-ne v0, v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mRotation:I
    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->access$4300(Lcom/android/camera/ui/FocusView;)I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mRotation:I
    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->access$4300(Lcom/android/camera/ui/FocusView;)I

    move-result v4

    const/16 v5, 0xb4

    if-eq v4, v5, :cond_3

    :cond_2
    const/16 v4, 0x64

    if-ne v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mRotation:I
    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->access$4300(Lcom/android/camera/ui/FocusView;)I

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mRotation:I
    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->access$4300(Lcom/android/camera/ui/FocusView;)I

    move-result v4

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_0

    .line 790
    :cond_3
    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mRotation:I
    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->access$4300(Lcom/android/camera/ui/FocusView;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 804
    :goto_1
    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # invokes: Lcom/android/camera/ui/FocusView;->getItemByCoordinate()I
    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->access$4400(Lcom/android/camera/ui/FocusView;)I

    move-result v1

    .line 806
    .local v1, "targetItem":I
    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mCurrentItem:I
    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->access$4500(Lcom/android/camera/ui/FocusView;)I

    move-result v4

    if-eq v1, v4, :cond_5

    .line 807
    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mCurrentViewState:I
    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->access$200(Lcom/android/camera/ui/FocusView;)I

    move-result v4

    if-eq v4, v6, :cond_8

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mCurrentItem:I
    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->access$4500(Lcom/android/camera/ui/FocusView;)I

    move-result v4

    if-ge v1, v4, :cond_8

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mCurrentItem:I
    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->access$4500(Lcom/android/camera/ui/FocusView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;
    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->access$000(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v5

    if-lt v4, v5, :cond_8

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;
    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->access$000(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 809
    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # invokes: Lcom/android/camera/ui/FocusView;->startAnimation()V
    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->access$4600(Lcom/android/camera/ui/FocusView;)V

    .line 810
    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mCurrentItem:I
    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->access$4500(Lcom/android/camera/ui/FocusView;)I

    move-result v5

    # setter for: Lcom/android/camera/ui/FocusView;->mLastItem:I
    invoke-static {v4, v5}, Lcom/android/camera/ui/FocusView;->access$4702(Lcom/android/camera/ui/FocusView;I)I

    .line 811
    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # setter for: Lcom/android/camera/ui/FocusView;->mCurrentViewState:I
    invoke-static {v4, v6}, Lcom/android/camera/ui/FocusView;->access$202(Lcom/android/camera/ui/FocusView;I)I

    .line 818
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # invokes: Lcom/android/camera/ui/FocusView;->setCurrentItem(IZ)V
    invoke-static {v4, v1, v2}, Lcom/android/camera/ui/FocusView;->access$4800(Lcom/android/camera/ui/FocusView;IZ)V

    .line 820
    :cond_5
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mCurrentViewState:I
    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->access$200(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mCurrentViewState:I
    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->access$200(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 821
    :cond_6
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # setter for: Lcom/android/camera/ui/FocusView;->mCurrentViewState:I
    invoke-static {v2, v3}, Lcom/android/camera/ui/FocusView;->access$202(Lcom/android/camera/ui/FocusView;I)I

    .line 822
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # invokes: Lcom/android/camera/ui/FocusView;->calculateAttribute()V
    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->access$500(Lcom/android/camera/ui/FocusView;)V

    .line 823
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 824
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->access$1900(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_7
    move v2, v3

    .line 826
    goto/16 :goto_0

    .line 792
    .end local v1    # "targetItem":I
    :sswitch_0
    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # -= operator for: Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I
    invoke-static {v4, p4}, Lcom/android/camera/ui/FocusView;->access$824(Lcom/android/camera/ui/FocusView;F)I

    goto/16 :goto_1

    .line 795
    :sswitch_1
    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # -= operator for: Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I
    invoke-static {v4, p3}, Lcom/android/camera/ui/FocusView;->access$824(Lcom/android/camera/ui/FocusView;F)I

    goto/16 :goto_1

    .line 798
    :sswitch_2
    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # += operator for: Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I
    invoke-static {v4, p4}, Lcom/android/camera/ui/FocusView;->access$816(Lcom/android/camera/ui/FocusView;F)I

    goto/16 :goto_1

    .line 801
    :sswitch_3
    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # += operator for: Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I
    invoke-static {v4, p3}, Lcom/android/camera/ui/FocusView;->access$816(Lcom/android/camera/ui/FocusView;F)I

    goto/16 :goto_1

    .line 812
    .restart local v1    # "targetItem":I
    :cond_8
    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mCurrentViewState:I
    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->access$200(Lcom/android/camera/ui/FocusView;)I

    move-result v4

    if-eq v4, v7, :cond_4

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mCurrentItem:I
    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->access$4500(Lcom/android/camera/ui/FocusView;)I

    move-result v4

    if-le v1, v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mCurrentItem:I
    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->access$4500(Lcom/android/camera/ui/FocusView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;
    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->access$000(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;
    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->access$000(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v4

    if-lt v1, v4, :cond_4

    .line 814
    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # invokes: Lcom/android/camera/ui/FocusView;->startAnimation()V
    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->access$4600(Lcom/android/camera/ui/FocusView;)V

    .line 815
    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mCurrentItem:I
    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->access$4500(Lcom/android/camera/ui/FocusView;)I

    move-result v5

    # setter for: Lcom/android/camera/ui/FocusView;->mLastItem:I
    invoke-static {v4, v5}, Lcom/android/camera/ui/FocusView;->access$4702(Lcom/android/camera/ui/FocusView;I)I

    .line 816
    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    # setter for: Lcom/android/camera/ui/FocusView;->mCurrentViewState:I
    invoke-static {v4, v7}, Lcom/android/camera/ui/FocusView;->access$202(Lcom/android/camera/ui/FocusView;I)I

    goto/16 :goto_2

    .line 790
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
