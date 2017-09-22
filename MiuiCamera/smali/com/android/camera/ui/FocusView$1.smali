.class Lcom/android/camera/ui/FocusView$1;
.super Landroid/os/Handler;
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
    .line 168
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v13, -0x40800000    # -1.0f

    const/4 v12, 0x6

    const-wide/16 v10, 0x14

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 170
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$000(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 214
    :pswitch_0
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mStartTime:J
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1100(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 216
    .local v0, "duration":J
    const-wide/16 v4, 0xdc

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    .line 219
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    long-to-float v4, v0

    const/high16 v5, 0x43480000    # 200.0f

    div-float/2addr v4, v5

    # invokes: Lcom/android/camera/ui/FocusView;->getInterpolation(F)F
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$700(Lcom/android/camera/ui/FocusView;F)F

    move-result v2

    .line 220
    .local v2, "t":F
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # invokes: Lcom/android/camera/ui/FocusView;->isStableStart()Z
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1200(Lcom/android/camera/ui/FocusView;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 221
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->SMALL_MAX_RADIUS:I
    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$1400()I

    move-result v4

    # setter for: Lcom/android/camera/ui/FocusView;->mSmallRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$1302(Lcom/android/camera/ui/FocusView;I)I

    .line 222
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sget v4, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    # setter for: Lcom/android/camera/ui/FocusView;->mBigRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$1502(Lcom/android/camera/ui/FocusView;I)I

    .line 223
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/16 v4, 0x96

    # setter for: Lcom/android/camera/ui/FocusView;->mBigAlpha:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$1602(Lcom/android/camera/ui/FocusView;I)I

    .line 224
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    iput v9, v3, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    .line 230
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # setter for: Lcom/android/camera/ui/FocusView;->mCenterFlag:I
    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->access$1702(Lcom/android/camera/ui/FocusView;I)I

    .line 231
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # setter for: Lcom/android/camera/ui/FocusView;->mEvTriangleDis:I
    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->access$1802(Lcom/android/camera/ui/FocusView;I)I

    .line 232
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1900(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 233
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # invokes: Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(F)V
    invoke-static {v3, v2}, Lcom/android/camera/ui/FocusView;->access$2000(Lcom/android/camera/ui/FocusView;F)V

    goto :goto_0

    .line 173
    .end local v0    # "duration":J
    .end local v2    # "t":F
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mEVAnimationStartTime:J
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$100(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 174
    .restart local v0    # "duration":J
    const-wide/16 v4, 0x208

    cmp-long v3, v0, v4

    if-ltz v3, :cond_2

    .line 175
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 v4, 0x1

    # setter for: Lcom/android/camera/ui/FocusView;->mCurrentViewState:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$202(Lcom/android/camera/ui/FocusView;I)I

    .line 176
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # setter for: Lcom/android/camera/ui/FocusView;->mCursorState:I
    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->access$302(Lcom/android/camera/ui/FocusView;I)I

    .line 177
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FocusView$1;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    invoke-virtual {p0, v12}, Lcom/android/camera/ui/FocusView$1;->removeMessages(I)V

    .line 179
    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v12, v4, v5}, Lcom/android/camera/ui/FocusView$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 183
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    long-to-float v4, v0

    const/high16 v5, 0x43fa0000    # 500.0f

    div-float/2addr v4, v5

    # setter for: Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$402(Lcom/android/camera/ui/FocusView;F)F

    .line 184
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # invokes: Lcom/android/camera/ui/FocusView;->calculateAttribute()V
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$500(Lcom/android/camera/ui/FocusView;)V

    .line 185
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 186
    const/4 v3, 0x7

    invoke-virtual {p0, v3, v10, v11}, Lcom/android/camera/ui/FocusView$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 190
    .end local v0    # "duration":J
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mSlideStartTime:J
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$600(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 191
    .restart local v0    # "duration":J
    const-wide/16 v4, 0x140

    cmp-long v3, v0, v4

    if-ltz v3, :cond_3

    .line 192
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # setter for: Lcom/android/camera/ui/FocusView;->mCursorState:I
    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->access$302(Lcom/android/camera/ui/FocusView;I)I

    .line 193
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FocusView$1;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 194
    invoke-virtual {p0, v12}, Lcom/android/camera/ui/FocusView$1;->removeMessages(I)V

    .line 195
    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v12, v4, v5}, Lcom/android/camera/ui/FocusView$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 199
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    long-to-float v4, v0

    const/high16 v5, 0x43960000    # 300.0f

    div-float/2addr v4, v5

    # invokes: Lcom/android/camera/ui/FocusView;->getInterpolation(F)F
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$700(Lcom/android/camera/ui/FocusView;F)F

    move-result v2

    .line 200
    .restart local v2    # "t":F
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mSlideDistance:I
    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->access$900(Lcom/android/camera/ui/FocusView;)I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v9, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    # setter for: Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$802(Lcom/android/camera/ui/FocusView;I)I

    .line 201
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 202
    const/16 v3, 0x8

    invoke-virtual {p0, v3, v10, v11}, Lcom/android/camera/ui/FocusView$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 206
    .end local v0    # "duration":J
    .end local v2    # "t":F
    :pswitch_3
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # setter for: Lcom/android/camera/ui/FocusView;->mCurrentViewState:I
    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->access$202(Lcom/android/camera/ui/FocusView;I)I

    .line 207
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J
    invoke-static {v3, v4, v5}, Lcom/android/camera/ui/FocusView;->access$1002(Lcom/android/camera/ui/FocusView;J)J

    .line 208
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # invokes: Lcom/android/camera/ui/FocusView;->calculateAttribute()V
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$500(Lcom/android/camera/ui/FocusView;)V

    .line 209
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    goto/16 :goto_0

    .line 226
    .restart local v0    # "duration":J
    .restart local v2    # "t":F
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sget v4, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    int-to-float v4, v4

    sub-float v5, v9, v2

    sget v6, Lcom/android/camera/ui/FocusView;->BIG_INIT_RADIUS:I

    sget v7, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    # setter for: Lcom/android/camera/ui/FocusView;->mBigRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$1502(Lcom/android/camera/ui/FocusView;I)I

    .line 227
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/high16 v4, 0x43160000    # 150.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    # setter for: Lcom/android/camera/ui/FocusView;->mBigAlpha:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$1602(Lcom/android/camera/ui/FocusView;I)I

    .line 228
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    iput v13, v3, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    goto/16 :goto_1

    .line 238
    .end local v0    # "duration":J
    .end local v2    # "t":F
    :pswitch_4
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 239
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mState:I
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$2100(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mSuccessTime:J
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$2200(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 241
    .restart local v0    # "duration":J
    const-wide/16 v4, 0x96

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 244
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    long-to-float v4, v0

    const/high16 v5, 0x43020000    # 130.0f

    div-float/2addr v4, v5

    # invokes: Lcom/android/camera/ui/FocusView;->getInterpolation(F)F
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$700(Lcom/android/camera/ui/FocusView;F)F

    move-result v2

    .line 245
    .restart local v2    # "t":F
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$2300(Lcom/android/camera/ui/FocusView;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$2400(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v3

    if-nez v3, :cond_6

    .line 246
    :cond_5
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # setter for: Lcom/android/camera/ui/FocusView;->mCenterFlag:I
    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->access$1702(Lcom/android/camera/ui/FocusView;I)I

    .line 247
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I
    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$2500()I

    move-result v4

    int-to-float v4, v4

    # getter for: Lcom/android/camera/ui/FocusView;->SMALL_MAX_RADIUS:I
    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$1400()I

    move-result v5

    # getter for: Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I
    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$2500()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    # setter for: Lcom/android/camera/ui/FocusView;->mSmallRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$1302(Lcom/android/camera/ui/FocusView;I)I

    .line 261
    :goto_2
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sget v4, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    # setter for: Lcom/android/camera/ui/FocusView;->mBigRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$1502(Lcom/android/camera/ui/FocusView;I)I

    .line 262
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/16 v4, 0x96

    # setter for: Lcom/android/camera/ui/FocusView;->mBigAlpha:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$1602(Lcom/android/camera/ui/FocusView;I)I

    .line 263
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # setter for: Lcom/android/camera/ui/FocusView;->mEvTriangleDis:I
    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->access$1802(Lcom/android/camera/ui/FocusView;I)I

    .line 264
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1900(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 265
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 v4, 0x0

    # invokes: Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(F)V
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$2000(Lcom/android/camera/ui/FocusView;F)V

    goto/16 :goto_0

    .line 249
    :cond_6
    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_7

    .line 250
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    .line 251
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I
    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$2500()I

    move-result v4

    int-to-float v4, v4

    # getter for: Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I
    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$2500()I

    move-result v5

    # getter for: Lcom/android/camera/ui/FocusView;->SMALL_MIN_RADIUS:I
    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$2600()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    float-to-int v4, v4

    # setter for: Lcom/android/camera/ui/FocusView;->mSmallRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$1302(Lcom/android/camera/ui/FocusView;I)I

    .line 252
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    iput v13, v3, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    .line 253
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # setter for: Lcom/android/camera/ui/FocusView;->mCenterFlag:I
    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->access$1702(Lcom/android/camera/ui/FocusView;I)I

    goto :goto_2

    .line 255
    :cond_7
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # setter for: Lcom/android/camera/ui/FocusView;->mSmallRadius:I
    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->access$1302(Lcom/android/camera/ui/FocusView;I)I

    .line 256
    const/high16 v3, 0x3f000000    # 0.5f

    sub-float v3, v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v2, v3, v4

    .line 257
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 v4, 0x1

    # setter for: Lcom/android/camera/ui/FocusView;->mCenterFlag:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$1702(Lcom/android/camera/ui/FocusView;I)I

    .line 258
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    goto :goto_2

    .line 270
    .end local v0    # "duration":J
    .end local v2    # "t":F
    :pswitch_5
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 271
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mState:I
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$2100(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mFailTime:J
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$2700(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 273
    .restart local v0    # "duration":J
    const-wide/16 v4, 0x140

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 276
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    long-to-float v4, v0

    const/high16 v5, 0x43960000    # 300.0f

    div-float/2addr v4, v5

    # invokes: Lcom/android/camera/ui/FocusView;->getInterpolation(F)F
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$700(Lcom/android/camera/ui/FocusView;F)F

    move-result v2

    .line 277
    .restart local v2    # "t":F
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/high16 v4, 0x43340000    # 180.0f

    sub-float v5, v9, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    # setter for: Lcom/android/camera/ui/FocusView;->mSmallAlpha:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$2802(Lcom/android/camera/ui/FocusView;I)I

    .line 278
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I
    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$3000()I

    move-result v4

    int-to-float v4, v4

    # getter for: Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I
    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$3000()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    # setter for: Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$2902(Lcom/android/camera/ui/FocusView;I)I

    .line 279
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sget v4, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    int-to-float v4, v4

    # getter for: Lcom/android/camera/ui/FocusView;->BIG_MAX_RADIUS:I
    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$3100()I

    move-result v5

    sget v6, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    # setter for: Lcom/android/camera/ui/FocusView;->mBigRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$1502(Lcom/android/camera/ui/FocusView;I)I

    .line 280
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/high16 v4, 0x43160000    # 150.0f

    sub-float v5, v9, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    # setter for: Lcom/android/camera/ui/FocusView;->mBigAlpha:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$1602(Lcom/android/camera/ui/FocusView;I)I

    .line 281
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # setter for: Lcom/android/camera/ui/FocusView;->mEvTriangleDis:I
    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->access$1802(Lcom/android/camera/ui/FocusView;I)I

    .line 282
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    iput v13, v3, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    .line 283
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # setter for: Lcom/android/camera/ui/FocusView;->mCenterFlag:I
    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->access$1702(Lcom/android/camera/ui/FocusView;I)I

    .line 284
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1900(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 285
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 v4, 0x0

    # invokes: Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(F)V
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$2000(Lcom/android/camera/ui/FocusView;F)V

    goto/16 :goto_0

    .line 291
    .end local v0    # "duration":J
    .end local v2    # "t":F
    :pswitch_6
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mIsDraw:Z
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$3200(Lcom/android/camera/ui/FocusView;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mIsDown:Z
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$3300(Lcom/android/camera/ui/FocusView;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 292
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # invokes: Lcom/android/camera/ui/FocusView;->clearMessages()V
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$3400(Lcom/android/camera/ui/FocusView;)V

    .line 293
    const/4 v3, 0x5

    const-wide/16 v4, 0x32

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/camera/ui/FocusView$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 295
    :cond_8
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    # invokes: Lcom/android/camera/ui/FocusView;->reset()V
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$3500(Lcom/android/camera/ui/FocusView;)V

    goto/16 :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
