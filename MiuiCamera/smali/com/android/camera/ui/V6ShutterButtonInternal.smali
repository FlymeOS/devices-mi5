.class public Lcom/android/camera/ui/V6ShutterButtonInternal;
.super Lcom/android/camera/ui/V6BottomAnimationImageView;
.source "V6ShutterButtonInternal.java"


# static fields
.field private static LONG_PRESSED_TRIGGER_TIME:I

.field private static final OUTER_CIRCLE_WIDTH:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private FLING_DISTANCE_THRESHOLD:I

.field private FLING_VELOCITY_THRESHOLD:I

.field private mActionDown:Z

.field private mAnimationType:I

.field private mBigRadius:F

.field private mCameraOpened:Z

.field private mCenterMaxRadius:F

.field private mCenterMinRadius:F

.field private mCenterPaint:Landroid/graphics/Paint;

.field private mCenterPath:Landroid/graphics/Path;

.field private mCenterRadius:F

.field private mCenterThresholdRadius:F

.field private mCenterX:I

.field private mCenterY:I

.field private mDuration:J

.field private mHandler:Landroid/os/Handler;

.field private mInShutterButton:Z

.field private mIncreaseFlag:Z

.field private mIsVideo:Z

.field private mLongClickable:Z

.field private mOutTime:J

.field private mOuterPaint:Landroid/graphics/Paint;

.field private mShutterRect:Landroid/graphics/Rect;

.field private mStartTime:J

.field private mTargetImage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/V6ShutterButtonInternal;->TAG:Ljava/lang/String;

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6ShutterButtonInternal;->OUTER_CIRCLE_WIDTH:I

    .line 38
    const/16 v0, 0x1f4

    sput v0, Lcom/android/camera/ui/V6ShutterButtonInternal;->LONG_PRESSED_TRIGGER_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v3, 0x43c80000    # 400.0f

    const/high16 v1, 0x41a80000    # 21.0f

    const/4 v2, 0x0

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mLongClickable:Z

    .line 48
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->FLING_VELOCITY_THRESHOLD:I

    .line 49
    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->FLING_DISTANCE_THRESHOLD:I

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    .line 66
    iput v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    .line 67
    iput-boolean v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIsVideo:Z

    .line 71
    new-instance v0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6ShutterButtonInternal$1;-><init>(Lcom/android/camera/ui/V6ShutterButtonInternal;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    .line 146
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6ShutterButtonInternal;->enablePressFilter(Z)V

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6ShutterButtonInternal;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6ShutterButtonInternal;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onLongPress()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/V6ShutterButtonInternal;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ui/V6ShutterButtonInternal;

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/V6ShutterButtonInternal;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ui/V6ShutterButtonInternal;

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/V6ShutterButtonInternal;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6ShutterButtonInternal;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->animationDone()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/camera/ui/V6ShutterButtonInternal;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6ShutterButtonInternal;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iput p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterRadius:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/ui/V6ShutterButtonInternal;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6ShutterButtonInternal;

    .prologue
    .line 22
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/V6ShutterButtonInternal;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6ShutterButtonInternal;

    .prologue
    .line 22
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMaxRadius:F

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/V6ShutterButtonInternal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6ShutterButtonInternal;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIncreaseFlag:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/V6ShutterButtonInternal;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6ShutterButtonInternal;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private animationDone()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 347
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    packed-switch v0, :pswitch_data_0

    .line 358
    :goto_0
    iput v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    .line 359
    return-void

    .line 349
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6ShutterButtonInternal;->setPressed(Z)V

    goto :goto_0

    .line 352
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->setPressed(Z)V

    goto :goto_0

    .line 355
    :pswitch_2
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mTargetImage:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->setImageResource(I)V

    goto :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkGesture(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 277
    iget-wide v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 278
    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    if-nez v4, :cond_0

    .line 279
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    .line 280
    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6ShutterButtonInternal;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 282
    :cond_0
    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int v2, p1, v4

    .line 283
    .local v2, "dx":I
    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int v3, p2, v4

    .line 284
    .local v3, "dy":I
    mul-int v4, v2, v2

    mul-int v5, v3, v3

    add-int v0, v4, v5

    .line 285
    .local v0, "d2":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 286
    .local v1, "duration":I
    sget-object v4, Lcom/android/camera/ui/V6ShutterButtonInternal;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gesture d2(d*d)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " duration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    if-lez v1, :cond_1

    iget v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->FLING_VELOCITY_THRESHOLD:I

    div-int v5, v0, v1

    if-le v4, v5, :cond_2

    :cond_1
    iget v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->FLING_DISTANCE_THRESHOLD:I

    if-ge v4, v0, :cond_3

    .line 291
    :cond_2
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v4, v5}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onFling(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 295
    .end local v0    # "d2":I
    .end local v1    # "duration":I
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    :cond_3
    return-void
.end method

.method private doAnimate(IJ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "duration"    # J

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    const v2, 0x3f67c1be    # 0.9053f

    .line 317
    iget-object v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 344
    :goto_0
    return-void

    .line 320
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    if-eqz v1, :cond_1

    .line 321
    invoke-direct {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->animationDone()V

    .line 323
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    .line 324
    iget v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    packed-switch v1, :pswitch_data_0

    .line 338
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mStartTime:J

    .line 339
    iput-wide p2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mDuration:J

    .line 340
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIncreaseFlag:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F

    :goto_2
    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterRadius:F

    .line 341
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 342
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 327
    :pswitch_0
    iget v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mBigRadius:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMaxRadius:F

    .line 328
    const v1, 0x3f5094c4

    iget v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mBigRadius:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F

    .line 329
    iget v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    if-ne v1, v0, :cond_2

    :goto_3
    iput-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIncreaseFlag:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 332
    :pswitch_1
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mBigRadius:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMaxRadius:F

    .line 333
    const v0, 0x3ef14e3c    # 0.4713f

    iget v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mBigRadius:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F

    .line 334
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F

    iget v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMaxRadius:F

    iget v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F

    sub-float/2addr v1, v2

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterThresholdRadius:F

    goto :goto_1

    .line 340
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMaxRadius:F

    goto :goto_2

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onClick()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 109
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f090012

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    :cond_0
    return-void
.end method

.method private onFling(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 6
    .param p1, "start"    # Landroid/graphics/Point;
    .param p2, "center"    # Landroid/graphics/Point;

    .prologue
    const/4 v1, 0x2

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f090012

    move v3, v1

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    :cond_0
    return-void
.end method

.method private onFocused(Z)V
    .locals 6
    .param p1, "focus"    # Z

    .prologue
    .line 120
    sget-object v0, Lcom/android/camera/ui/V6ShutterButtonInternal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocused  mMessageDispacher+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x3

    const v2, 0x7f090012

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    :cond_0
    return-void
.end method

.method private onLongPress()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x1

    const v2, 0x7f090012

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    :cond_0
    return-void
.end method

.method private prepareAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 178
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    .line 181
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPaint:Landroid/graphics/Paint;

    .line 182
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOuterPaint:Landroid/graphics/Paint;

    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 187
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOuterPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOuterPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/camera/ui/V6ShutterButtonInternal;->OUTER_CIRCLE_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIsVideo:Z

    if-eqz v0, :cond_2

    const v0, -0xfc0ff

    :goto_0
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOuterPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIsVideo:Z

    if-eqz v2, :cond_1

    const v1, -0x6f000001

    :cond_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    invoke-virtual {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mBigRadius:F

    .line 193
    return-void

    :cond_2
    move v0, v1

    .line 190
    goto :goto_0
.end method


# virtual methods
.method public changeImageWithAnimation(IJ)V
    .locals 4
    .param p1, "resId"    # I
    .param p2, "duration"    # J

    .prologue
    const v2, 0x7f02012d

    const v1, 0x7f020035

    .line 298
    const v0, 0x7f02012e

    if-eq p1, v0, :cond_0

    if-eq p1, v2, :cond_0

    const v0, 0x7f0200ff

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_3

    .line 302
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mTargetImage:I

    .line 303
    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_2

    .line 305
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIncreaseFlag:Z

    .line 309
    :goto_0
    const/4 v0, 0x3

    invoke-direct {p0, v0, p2, p3}, Lcom/android/camera/ui/V6ShutterButtonInternal;->doAnimate(IJ)V

    .line 313
    :goto_1
    return-void

    .line 307
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIncreaseFlag:Z

    goto :goto_0

    .line 311
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6ShutterButtonInternal;->setImageResource(I)V

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v10, 0xc8

    const-wide/16 v8, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 208
    iget-boolean v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCameraOpened:Z

    if-nez v6, :cond_0

    .line 209
    sget-object v5, Lcom/android/camera/ui/V6ShutterButtonInternal;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchTouchEvent: drop event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_0
    return v4

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 214
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 215
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 218
    .local v3, "y":F
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v4, v5

    .line 269
    goto :goto_0

    .line 222
    :pswitch_1
    iget-boolean v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mActionDown:Z

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    if-nez v6, :cond_1

    .line 223
    iget-boolean v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mLongClickable:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_2
    move v1, v5

    .line 224
    .local v1, "needClick":Z
    :goto_2
    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    invoke-static {v2, v3, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mInShutterButton:Z

    .line 226
    if-eqz v1, :cond_6

    iget-boolean v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mInShutterButton:Z

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPressDownCapture()Z

    move-result v6

    if-nez v6, :cond_6

    .line 227
    invoke-direct {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onClick()V

    .line 232
    :cond_3
    :goto_3
    iget-boolean v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIsVideo:Z

    if-nez v6, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAudioCaptureOpen()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 234
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6ShutterButtonInternal;->setPressed(Z)V

    .line 238
    :goto_4
    invoke-direct {p0, v4}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onFocused(Z)V

    .line 239
    iput-wide v8, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    .line 240
    iput-boolean v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mActionDown:Z

    goto :goto_1

    .end local v1    # "needClick":Z
    :cond_5
    move v1, v4

    .line 223
    goto :goto_2

    .line 228
    .restart local v1    # "needClick":Z
    :cond_6
    if-eqz v1, :cond_3

    iget-boolean v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mInShutterButton:Z

    if-nez v6, :cond_3

    .line 229
    float-to-int v6, v2

    float-to-int v7, v3

    invoke-direct {p0, v6, v7}, Lcom/android/camera/ui/V6ShutterButtonInternal;->checkGesture(II)V

    goto :goto_3

    .line 236
    :cond_7
    invoke-direct {p0, v5, v10, v11}, Lcom/android/camera/ui/V6ShutterButtonInternal;->doAnimate(IJ)V

    goto :goto_4

    .line 245
    .end local v1    # "needClick":Z
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIsVideo:Z

    if-nez v6, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAudioCaptureOpen()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 247
    :cond_8
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/V6ShutterButtonInternal;->setPressed(Z)V

    .line 251
    :goto_5
    iput-boolean v5, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mActionDown:Z

    .line 252
    invoke-direct {p0, v5}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onFocused(Z)V

    .line 253
    invoke-virtual {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPressDownCapture()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 254
    invoke-direct {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onClick()V

    .line 256
    :cond_9
    iget-boolean v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mLongClickable:Z

    if-eqz v6, :cond_1

    .line 257
    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    sget v7, Lcom/android/camera/ui/V6ShutterButtonInternal;->LONG_PRESSED_TRIGGER_TIME:I

    int-to-long v8, v7

    invoke-virtual {v6, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 249
    :cond_a
    const/4 v6, 0x2

    invoke-direct {p0, v6, v10, v11}, Lcom/android/camera/ui/V6ShutterButtonInternal;->doAnimate(IJ)V

    goto :goto_5

    .line 262
    :pswitch_3
    invoke-static {v2, v3, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 263
    iput-wide v8, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    goto/16 :goto_1

    .line 264
    :cond_b
    iget-wide v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    cmp-long v4, v6, v8

    if-nez v4, :cond_1

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    goto/16 :goto_1

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6ShutterButtonInternal;->setEnabled(Z)V

    .line 198
    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mInShutterButton:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onCameraOpen()V

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCameraOpened:Z

    .line 175
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onCreate()V

    .line 152
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIsVideo:Z

    .line 153
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIsVideo:Z

    if-eqz v0, :cond_0

    const v0, 0x7f02012d

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->setImageResource(I)V

    .line 156
    return-void

    .line 153
    :cond_0
    const v0, 0x7f020035

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 362
    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    if-nez v6, :cond_0

    .line 363
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 395
    :goto_0
    return-void

    .line 365
    :cond_0
    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    if-nez v6, :cond_1

    .line 366
    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mRight:I

    iget v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mLeft:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    .line 367
    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mBottom:I

    iget v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mTop:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    .line 370
    :cond_1
    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mBigRadius:F

    const/high16 v9, 0x40000000    # 2.0f

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 373
    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterRadius:F

    iget v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterThresholdRadius:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 374
    :cond_2
    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterRadius:F

    iget-object v9, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 376
    :cond_3
    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterRadius:F

    const v7, 0x3f35c28f    # 0.71f

    mul-float v3, v6, v7

    .line 377
    .local v3, "length":F
    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v6, v6

    sub-float v2, v6, v3

    .line 378
    .local v2, "left":F
    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v6, v6

    add-float v4, v6, v3

    .line 379
    .local v4, "right":F
    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v6, v6

    sub-float v5, v6, v3

    .line 380
    .local v5, "top":F
    iget v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v6, v6

    add-float v0, v6, v3

    .line 382
    .local v0, "bottom":F
    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f4ccccd    # 0.8f

    iget v8, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterRadius:F

    iget v9, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterThresholdRadius:F

    iget v9, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F

    sub-float/2addr v8, v9

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float v1, v3, v6

    .line 385
    .local v1, "distance":F
    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 386
    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    invoke-virtual {v6, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 387
    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    iget v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v8, v8

    sub-float/2addr v8, v1

    invoke-virtual {v6, v7, v8, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 388
    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    iget v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v7, v7

    add-float/2addr v7, v1

    iget v8, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8, v4, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 389
    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    iget v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v8, v8

    add-float/2addr v8, v1

    invoke-virtual {v6, v7, v8, v2, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 390
    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    iget v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v7, v7

    sub-float/2addr v7, v1

    iget v8, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8, v2, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 391
    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 392
    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onPause()V

    .line 167
    iput-boolean v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCameraOpened:Z

    .line 168
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onResume()V

    .line 161
    invoke-direct {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->prepareAnimation()V

    .line 162
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 0
    .param p1, "longClickable"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mLongClickable:Z

    .line 203
    return-void
.end method
