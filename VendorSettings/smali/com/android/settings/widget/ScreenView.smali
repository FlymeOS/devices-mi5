.class public Lcom/android/vendorsettings/widget/ScreenView;
.super Landroid/view/ViewGroup;
.source "ScreenView.java"


# static fields
.field private static final aye:Landroid/widget/LinearLayout$LayoutParams;

.field private static final ayf:F


# instance fields
.field private arJ:I

.field private ayA:I

.field private ayB:F

.field private ayC:Z

.field private ayD:F

.field private ayE:I

.field private ayF:Landroid/view/ScaleGestureDetector;

.field private ayG:I

.field private ayH:Z

.field private ayI:Z

.field private ayJ:Z

.field private ayK:I

.field private ayL:I

.field private ayM:F

.field private ayN:F

.field private ayO:F

.field private ayP:I

.field private ayQ:Lcom/android/vendorsettings/widget/s;

.field private ayR:I

.field private ayS:F

.field private ayT:Lcom/android/vendorsettings/widget/v;

.field private ayU:Lcom/android/vendorsettings/widget/o;

.field private final ayg:F

.field private ayh:Z

.field private ayi:I

.field private ayj:I

.field private ayk:I

.field private ayl:I

.field private aym:I

.field private ayn:I

.field private ayo:Lcom/android/vendorsettings/widget/n;

.field private ayp:Lcom/android/vendorsettings/widget/n;

.field private ayq:Lcom/android/vendorsettings/widget/t;

.field private ayr:Lcom/android/vendorsettings/widget/u;

.field private ays:Z

.field private ayt:Ljava/lang/Runnable;

.field private ayu:I

.field private ayv:I

.field private ayw:I

.field private ayx:I

.field private ayy:I

.field private ayz:I

.field protected mChildScreenWidth:I

.field protected mCurrentScreen:I

.field private mHeightMeasureSpec:I

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field protected mScreenOffset:I

.field private mScreenWidth:I

.field private mScroller:Landroid/widget/Scroller;

.field protected mVisibleRange:I

.field private mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 157
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/android/vendorsettings/widget/ScreenView;->aye:Landroid/widget/LinearLayout$LayoutParams;

    .line 186
    const-wide v0, 0x3f90624dd2f1a9fcL    # 0.016

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/android/vendorsettings/widget/ScreenView;->ayf:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 327
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 197
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44a00000    # 1280.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayg:F

    .line 203
    iput-boolean v3, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayh:Z

    .line 207
    const v0, 0x7f02029c

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayj:I

    .line 209
    const v0, 0x7f02029d

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayk:I

    .line 211
    const v0, 0x7f02029e

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayl:I

    .line 213
    const v0, 0x7f02029f

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->aym:I

    .line 215
    const v0, 0x7f020241

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayn:I

    .line 233
    new-instance v0, Lcom/android/vendorsettings/widget/l;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/widget/l;-><init>(Lcom/android/vendorsettings/widget/ScreenView;)V

    iput-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayt:Ljava/lang/Runnable;

    .line 251
    iput v3, p0, Lcom/android/vendorsettings/widget/ScreenView;->mVisibleRange:I

    .line 256
    iput v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScreenWidth:I

    .line 265
    iput v5, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayy:I

    .line 271
    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayB:F

    .line 277
    iput v4, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayD:F

    .line 279
    iput v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayE:I

    .line 288
    iput v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayG:I

    .line 294
    iput-boolean v3, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayJ:Z

    .line 300
    iput v5, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayL:I

    .line 306
    iput v4, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayO:F

    .line 308
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayP:I

    .line 312
    iput v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayR:I

    .line 314
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayS:F

    .line 318
    new-instance v0, Lcom/android/vendorsettings/widget/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/widget/o;-><init>(Lcom/android/vendorsettings/widget/ScreenView;Lcom/android/vendorsettings/widget/l;)V

    iput-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayU:Lcom/android/vendorsettings/widget/o;

    .line 328
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ScreenView;->wz()V

    .line 329
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vendorsettings/widget/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 340
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 351
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 197
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44a00000    # 1280.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayg:F

    .line 203
    iput-boolean v3, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayh:Z

    .line 207
    const v0, 0x7f02029c

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayj:I

    .line 209
    const v0, 0x7f02029d

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayk:I

    .line 211
    const v0, 0x7f02029e

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayl:I

    .line 213
    const v0, 0x7f02029f

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->aym:I

    .line 215
    const v0, 0x7f020241

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayn:I

    .line 233
    new-instance v0, Lcom/android/vendorsettings/widget/l;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/widget/l;-><init>(Lcom/android/vendorsettings/widget/ScreenView;)V

    iput-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayt:Ljava/lang/Runnable;

    .line 251
    iput v3, p0, Lcom/android/vendorsettings/widget/ScreenView;->mVisibleRange:I

    .line 256
    iput v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScreenWidth:I

    .line 265
    iput v5, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayy:I

    .line 271
    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayB:F

    .line 277
    iput v4, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayD:F

    .line 279
    iput v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayE:I

    .line 288
    iput v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayG:I

    .line 294
    iput-boolean v3, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayJ:Z

    .line 300
    iput v5, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayL:I

    .line 306
    iput v4, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayO:F

    .line 308
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayP:I

    .line 312
    iput v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayR:I

    .line 314
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayS:F

    .line 318
    new-instance v0, Lcom/android/vendorsettings/widget/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/widget/o;-><init>(Lcom/android/vendorsettings/widget/ScreenView;Lcom/android/vendorsettings/widget/l;)V

    iput-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayU:Lcom/android/vendorsettings/widget/o;

    .line 352
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ScreenView;->wz()V

    .line 353
    return-void
.end method

.method private a(Landroid/view/MotionEvent;I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1029
    iput p2, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayG:I

    .line 1030
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayG:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1032
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayG:I

    if-nez v0, :cond_2

    .line 1033
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayL:I

    .line 1034
    iput-boolean v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayJ:Z

    .line 1035
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayU:Lcom/android/vendorsettings/widget/o;

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/o;->recycle()V

    .line 1057
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ScreenView;->wA()V

    .line 1058
    return-void

    :cond_1
    move v0, v2

    .line 1030
    goto :goto_0

    .line 1037
    :cond_2
    if-eqz p1, :cond_3

    .line 1038
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayL:I

    .line 1039
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayL:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mLastMotionX:F

    .line 1042
    :cond_3
    iget-boolean v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayJ:Z

    if-eqz v0, :cond_4

    .line 1043
    iput-boolean v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayJ:Z

    .line 1047
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1048
    if-eqz v0, :cond_4

    .line 1049
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1052
    :cond_4
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayG:I

    if-ne v0, v1, :cond_0

    .line 1053
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayN:F

    .line 1054
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayM:F

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/vendorsettings/widget/ScreenView;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ScreenView;->wB()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/widget/ScreenView;Landroid/view/MotionEvent;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/widget/ScreenView;)Lcom/android/vendorsettings/widget/u;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayr:Lcom/android/vendorsettings/widget/u;

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/widget/ScreenView;)F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayS:F

    return v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/widget/ScreenView;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayG:I

    return v0
.end method

.method private dq(I)V
    .locals 4

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 755
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayr:Lcom/android/vendorsettings/widget/u;

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 756
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayr:Lcom/android/vendorsettings/widget/u;

    invoke-virtual {v1}, Lcom/android/vendorsettings/widget/u;->getSlideWidth()I

    move-result v1

    .line 757
    div-int v2, v1, v0

    iget v3, p0, Lcom/android/vendorsettings/widget/ScreenView;->mVisibleRange:I

    mul-int/2addr v2, v3

    const/16 v3, 0x30

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 760
    iget v3, p0, Lcom/android/vendorsettings/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, v3

    .line 761
    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 766
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayr:Lcom/android/vendorsettings/widget/u;

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/android/vendorsettings/widget/u;->setPosition(II)V

    .line 767
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayr:Lcom/android/vendorsettings/widget/u;

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/u;->invalidate()V

    .line 771
    :cond_0
    return-void

    .line 761
    :cond_1
    sub-int v3, v1, v2

    mul-int/2addr v3, p1

    sub-int/2addr v0, v1

    div-int v0, v3, v0

    goto :goto_0
.end method

.method private dr(I)V
    .locals 3

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayo:Lcom/android/vendorsettings/widget/n;

    if-eqz v0, :cond_0

    .line 775
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayo:Lcom/android/vendorsettings/widget/n;

    if-gtz p1, :cond_1

    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayk:I

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/widget/n;->setImageResource(I)V

    .line 779
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayp:Lcom/android/vendorsettings/widget/n;

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScreenWidth:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayx:I

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->aym:I

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/widget/n;->setImageResource(I)V

    .line 785
    :cond_0
    return-void

    .line 775
    :cond_1
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayj:I

    goto :goto_0

    .line 779
    :cond_2
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayl:I

    goto :goto_1
.end method

.method private ds(I)V
    .locals 3

    .prologue
    .line 1181
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mChildScreenWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1189
    :cond_0
    :goto_0
    return-void

    .line 1184
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayU:Lcom/android/vendorsettings/widget/o;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayK:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/vendorsettings/widget/o;->getXVelocity(III)F

    move-result v0

    float-to-int v0, v0

    .line 1186
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayU:Lcom/android/vendorsettings/widget/o;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/widget/o;->getFlingDirection(F)I

    move-result v1

    .line 1188
    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/widget/ScreenView;->snapByVelocity(II)V

    goto :goto_0
.end method

.method private dt(I)V
    .locals 1

    .prologue
    .line 1352
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, v0, p1}, Lcom/android/vendorsettings/widget/ScreenView;->w(II)V

    .line 1353
    iput p1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    .line 1354
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayy:I

    .line 1355
    return-void
.end method

.method private h(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1107
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->mLastMotionX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1108
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lcom/android/vendorsettings/widget/ScreenView;->mLastMotionY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1109
    iget v3, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayO:F

    mul-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->arJ:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private i(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayU:Lcom/android/vendorsettings/widget/o;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/widget/o;->addMovement(Landroid/view/MotionEvent;)V

    .line 1115
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayG:I

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayG:I

    if-ne v0, v1, :cond_1

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayF:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1119
    :cond_1
    return-void
.end method

.method private n(Landroid/view/View;)V
    .locals 10

    .prologue
    const v9, 0x459c4000    # 5000.0f

    const/high16 v5, 0x40000000    # 2.0f

    const v8, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1752
    instance-of v0, p1, Lcom/android/vendorsettings/widget/p;

    if-eqz v0, :cond_0

    .line 1881
    :goto_0
    :pswitch_0
    return-void

    .line 1755
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1756
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1757
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    .line 1758
    div-float v4, v0, v5

    .line 1759
    div-float v5, v2, v5

    .line 1760
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    sub-float/2addr v3, v4

    div-float/2addr v3, v0

    .line 1763
    iget v6, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayR:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 1765
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1768
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1771
    :pswitch_3
    cmpl-float v0, v3, v1

    if-eqz v0, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_2

    .line 1772
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1775
    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v7, v0

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v0, v2

    add-float/2addr v0, v8

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1776
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1777
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1778
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 1779
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1780
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1781
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1782
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 1783
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 1784
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 1785
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayg:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setCameraDistance(F)V

    goto :goto_0

    .line 1788
    :pswitch_4
    cmpl-float v0, v3, v1

    if-eqz v0, :cond_3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_4

    .line 1789
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1792
    :cond_4
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 1793
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1794
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1795
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 1796
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1797
    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    .line 1798
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 1799
    neg-float v0, v3

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 1800
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 1801
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 1802
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayg:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1805
    :pswitch_5
    cmpl-float v2, v3, v1

    if-eqz v2, :cond_5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_6

    .line 1806
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1809
    :cond_6
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 1810
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1811
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1812
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 1813
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1814
    cmpg-float v2, v3, v1

    if-gez v2, :cond_7

    move v0, v1

    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1815
    invoke-virtual {p1, v5}, Landroid/view/View;->setPivotY(F)V

    .line 1816
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 1817
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 1818
    const/high16 v0, -0x3d4c0000    # -90.0f

    mul-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1819
    invoke-virtual {p1, v9}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1822
    :pswitch_6
    cmpl-float v2, v3, v1

    if-eqz v2, :cond_8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_9

    .line 1823
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1826
    :cond_9
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v7, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1827
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1828
    mul-float v2, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v8

    sub-float v0, v2, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1830
    mul-float v0, v8, v3

    add-float/2addr v0, v7

    .line 1831
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1832
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1833
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1834
    invoke-virtual {p1, v5}, Landroid/view/View;->setPivotY(F)V

    .line 1835
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 1836
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 1837
    const/high16 v0, 0x42340000    # 45.0f

    neg-float v1, v3

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1838
    invoke-virtual {p1, v9}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1843
    :pswitch_7
    cmpg-float v4, v3, v1

    if-gtz v4, :cond_a

    .line 1844
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1847
    :cond_a
    sub-float v4, v7, v3

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1848
    const v4, 0x3f19999a    # 0.6f

    const v5, 0x3ecccccd    # 0.4f

    sub-float v3, v7, v3

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    .line 1849
    sub-float v4, v7, v3

    mul-float/2addr v0, v4

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1850
    sub-float v0, v7, v3

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1851
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1852
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1853
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1854
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1855
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 1856
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 1857
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 1858
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayg:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1861
    :pswitch_8
    cmpl-float v2, v3, v1

    if-eqz v2, :cond_b

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_c

    .line 1862
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1865
    :cond_c
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v7, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1866
    mul-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1867
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1868
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 1869
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1870
    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    .line 1871
    invoke-virtual {p1, v5}, Landroid/view/View;->setPivotY(F)V

    .line 1872
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 1873
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 1874
    const/high16 v0, 0x42b40000    # 90.0f

    neg-float v1, v3

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1875
    invoke-virtual {p1, v9}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1878
    :pswitch_9
    invoke-virtual {p0, p1, v3}, Lcom/android/vendorsettings/widget/ScreenView;->updateChildStaticTransformationByScreen(Landroid/view/View;F)V

    goto/16 :goto_0

    .line 1763
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private o(IZ)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 693
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 694
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScreenCount()I

    move-result v4

    .line 695
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getWidth()I

    move-result v5

    .line 696
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getHeight()I

    move-result v6

    move v1, v2

    .line 697
    :goto_0
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayi:I

    if-ge v1, v0, :cond_1

    .line 698
    add-int v0, v1, v4

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 699
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 702
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 703
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 706
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 707
    const/4 v10, -0x1

    if-eq v3, v10, :cond_2

    .line 708
    and-int/lit8 v10, v3, 0x7

    .line 710
    and-int/lit8 v11, v3, 0x70

    .line 712
    packed-switch v10, :pswitch_data_0

    .line 725
    :pswitch_0
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 727
    :goto_1
    sparse-switch v11, :sswitch_data_0

    .line 740
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 743
    :goto_2
    if-nez p2, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v10

    if-lez v10, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v10

    if-lez v10, :cond_0

    .line 744
    int-to-float v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 697
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 714
    :pswitch_1
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 717
    :pswitch_2
    sub-int v3, v5, v8

    div-int/lit8 v3, v3, 0x2

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v10

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v10

    .line 719
    goto :goto_1

    .line 721
    :pswitch_3
    sub-int v3, v5, v8

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v10

    .line 723
    goto :goto_1

    .line 729
    :sswitch_0
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 732
    :sswitch_1
    sub-int v10, v6, v9

    div-int/lit8 v10, v10, 0x2

    iget v11, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v10, v0

    .line 734
    goto :goto_2

    .line 736
    :sswitch_2
    sub-int v10, v6, v9

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v10, v0

    .line 738
    goto :goto_2

    .line 746
    :cond_0
    add-int/2addr v8, v3

    add-int/2addr v9, v0

    invoke-virtual {v7, v3, v0, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 750
    :cond_1
    return-void

    :cond_2
    move v0, v2

    move v3, v2

    goto :goto_2

    .line 712
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 727
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private w(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1623
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayq:Lcom/android/vendorsettings/widget/t;

    if-eqz v0, :cond_1

    .line 1624
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScreenCount()I

    move-result v2

    move v0, v1

    .line 1625
    :goto_0
    iget v3, p0, Lcom/android/vendorsettings/widget/ScreenView;->mVisibleRange:I

    if-ge v0, v3, :cond_0

    add-int v3, p1, v0

    if-ge v3, v2, :cond_0

    .line 1626
    iget-object v3, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayq:Lcom/android/vendorsettings/widget/t;

    add-int v4, p1, v0

    invoke-virtual {v3, v4}, Lcom/android/vendorsettings/widget/t;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1625
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1630
    :cond_0
    :goto_1
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mVisibleRange:I

    if-ge v1, v0, :cond_1

    add-int v0, p2, v1

    if-ge v0, v2, :cond_1

    .line 1631
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayq:Lcom/android/vendorsettings/widget/t;

    add-int v3, p2, v1

    invoke-virtual {v0, v3}, Lcom/android/vendorsettings/widget/t;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1630
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1634
    :cond_1
    return-void
.end method

.method private wA()V
    .locals 4

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayr:Lcom/android/vendorsettings/widget/u;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ays:Z

    if-nez v0, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayt:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 567
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayr:Lcom/android/vendorsettings/widget/u;

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/u;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 568
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayr:Lcom/android/vendorsettings/widget/u;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/widget/u;->setAlpha(F)V

    .line 569
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayr:Lcom/android/vendorsettings/widget/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/widget/u;->setVisibility(I)V

    .line 570
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayG:I

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayt:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/vendorsettings/widget/ScreenView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private wB()V
    .locals 4

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ays:Z

    if-nez v0, :cond_0

    .line 587
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayr:Lcom/android/vendorsettings/widget/u;

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/u;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/vendorsettings/widget/m;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/widget/m;-><init>(Lcom/android/vendorsettings/widget/ScreenView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private wC()V
    .locals 2

    .prologue
    .line 675
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayw:I

    packed-switch v0, :pswitch_data_0

    .line 689
    :goto_0
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayx:I

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayx:I

    .line 690
    return-void

    .line 677
    :pswitch_0
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScreenOffset:I

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayx:I

    goto :goto_0

    .line 680
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayx:I

    goto :goto_0

    .line 683
    :pswitch_2
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScreenWidth:I

    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayx:I

    goto :goto_0

    .line 686
    :pswitch_3
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScreenWidth:I

    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayx:I

    goto :goto_0

    .line 675
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private wD()V
    .locals 3

    .prologue
    .line 810
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mChildScreenWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayB:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayx:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayA:I

    .line 812
    iget-boolean v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayC:Z

    if-nez v0, :cond_0

    .line 813
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScreenCount()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayB:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScreenWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayz:I

    .line 821
    :goto_0
    return-void

    .line 817
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mVisibleRange:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScreenWidth:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayB:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayz:I

    goto :goto_0
.end method

.method private wE()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 1609
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1610
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1611
    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1612
    return-object v0
.end method

.method private wF()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 1616
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1617
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1618
    const v1, 0x7f020240

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1619
    return-object v0
.end method

.method private wz()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 420
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 421
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->setClipToPadding(Z)V

    .line 422
    new-instance v0, Lcom/android/vendorsettings/widget/s;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/widget/s;-><init>(Lcom/android/vendorsettings/widget/ScreenView;)V

    iput-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayQ:Lcom/android/vendorsettings/widget/s;

    .line 423
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayQ:Lcom/android/vendorsettings/widget/s;

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    .line 424
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->dt(I)V

    .line 425
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->arJ:I

    .line 427
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->setMaximumSnapVelocity(I)V

    .line 428
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/vendorsettings/widget/r;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/vendorsettings/widget/r;-><init>(Lcom/android/vendorsettings/widget/ScreenView;Lcom/android/vendorsettings/widget/l;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayF:Landroid/view/ScaleGestureDetector;

    .line 430
    return-void
.end method


# virtual methods
.method protected a(IIZLcom/android/vendorsettings/widget/v;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1244
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScreenWidth:I

    if-gtz v0, :cond_1

    .line 1286
    :cond_0
    :goto_0
    return-void

    .line 1247
    :cond_1
    iget-boolean v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayC:Z

    if-eqz v0, :cond_6

    .line 1248
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayy:I

    .line 1250
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayy:I

    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayy:I

    iget v3, p0, Lcom/android/vendorsettings/widget/ScreenView;->mVisibleRange:I

    rem-int/2addr v1, v3

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayy:I

    .line 1255
    :goto_1
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayy:I

    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1257
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1258
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayT:Lcom/android/vendorsettings/widget/v;

    if-eqz v0, :cond_2

    .line 1259
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayT:Lcom/android/vendorsettings/widget/v;

    invoke-interface {v0, p0}, Lcom/android/vendorsettings/widget/v;->e(Lcom/android/vendorsettings/widget/ScreenView;)V

    .line 1261
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1263
    :cond_3
    iput-object p4, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayT:Lcom/android/vendorsettings/widget/v;

    .line 1264
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 1265
    if-eqz p3, :cond_7

    .line 1266
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayQ:Lcom/android/vendorsettings/widget/s;

    invoke-virtual {v0, v1, v4}, Lcom/android/vendorsettings/widget/s;->setDistance(II)V

    .line 1270
    :goto_2
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayy:I

    iget v3, p0, Lcom/android/vendorsettings/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, v3

    iget v3, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayx:I

    sub-int/2addr v0, v3

    .line 1271
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScrollX()I

    move-result v3

    sub-int v3, v0, v3

    .line 1272
    if-eqz v3, :cond_0

    .line 1275
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v5, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayP:I

    mul-int/2addr v0, v5

    iget v5, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScreenWidth:I

    div-int/2addr v0, v5

    .line 1276
    if-lez v4, :cond_4

    .line 1277
    int-to-float v5, v0

    int-to-float v4, v4

    const v6, 0x451c4000    # 2500.0f

    div-float/2addr v4, v6

    div-float v4, v5, v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v0, v4

    .line 1280
    :cond_4
    iget v4, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayP:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1281
    if-gt v1, v7, :cond_5

    .line 1282
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayP:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1284
    :cond_5
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScrollX()I

    move-result v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1285
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->invalidate()V

    goto/16 :goto_0

    .line 1252
    :cond_6
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayy:I

    goto/16 :goto_1

    .line 1268
    :cond_7
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayQ:Lcom/android/vendorsettings/widget/s;

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/s;->disableSettle()V

    goto :goto_2
.end method

.method protected addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    .prologue
    .line 1474
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayi:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayi:I

    .line 1475
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1476
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 1392
    if-gez p2, :cond_1

    .line 1397
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayq:Lcom/android/vendorsettings/widget/t;

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 1398
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayq:Lcom/android/vendorsettings/widget/t;

    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ScreenView;->wE()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lcom/android/vendorsettings/widget/ScreenView;->aye:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/vendorsettings/widget/t;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1405
    :cond_0
    :goto_1
    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayE:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayE:I

    .line 1406
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ScreenView;->wD()V

    .line 1407
    invoke-super {p0, p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1408
    return-void

    .line 1395
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 1401
    :cond_2
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayq:Lcom/android/vendorsettings/widget/t;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1402
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayq:Lcom/android/vendorsettings/widget/t;

    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ScreenView;->wF()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lcom/android/vendorsettings/widget/ScreenView;->aye:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/vendorsettings/widget/t;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const v2, 0x4e6e6b28    # 1.0E9f

    .line 846
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayN:F

    .line 848
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayN:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->setScrollX(I)V

    .line 849
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayM:F

    .line 850
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->setScrollY(I)V

    .line 851
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->postInvalidateOnAnimation()V

    .line 872
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/android/vendorsettings/widget/ScreenView;->o(IZ)V

    .line 873
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->dq(I)V

    .line 874
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->dr(I)V

    .line 875
    return-void

    .line 852
    :cond_1
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayy:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayy:I

    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    if-eq v0, v1, :cond_2

    .line 853
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayy:I

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->dt(I)V

    .line 855
    iput v3, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayy:I

    .line 856
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayT:Lcom/android/vendorsettings/widget/v;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayT:Lcom/android/vendorsettings/widget/v;

    invoke-interface {v0, p0}, Lcom/android/vendorsettings/widget/v;->f(Lcom/android/vendorsettings/widget/ScreenView;)V

    .line 858
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayT:Lcom/android/vendorsettings/widget/v;

    goto :goto_0

    .line 860
    :cond_2
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayG:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 861
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr v0, v2

    .line 862
    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayM:F

    sub-float v1, v0, v1

    sget v2, Lcom/android/vendorsettings/widget/ScreenView;->ayf:F

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 864
    iget v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayN:F

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 865
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/widget/ScreenView;->setScrollX(I)V

    .line 866
    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayM:F

    .line 868
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v2, v0

    if-gtz v0, :cond_3

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, v2, v0

    if-gez v0, :cond_0

    .line 869
    :cond_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->postInvalidate()V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1009
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 1010
    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    if-lez v1, :cond_1

    .line 1011
    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/widget/ScreenView;->snapToScreen(I)V

    .line 1020
    :goto_0
    return v0

    .line 1014
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1015
    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1016
    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/widget/ScreenView;->snapToScreen(I)V

    goto :goto_0

    .line 1020
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .prologue
    .line 989
    invoke-direct {p0, p2}, Lcom/android/vendorsettings/widget/ScreenView;->n(Landroid/view/View;)V

    .line 990
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected finishCurrentGesture()V
    .locals 2

    .prologue
    .line 1915
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayI:Z

    .line 1916
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    .line 1917
    return-void
.end method

.method public getCurrentScreen()Landroid/view/View;
    .locals 1

    .prologue
    .line 1326
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getScreen(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 1365
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1366
    :cond_0
    const/4 v0, 0x0

    .line 1368
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final getScreenCount()I
    .locals 1

    .prologue
    .line 1305
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayE:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 879
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 880
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->computeScroll()V

    .line 881
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ScreenView;->wA()V

    .line 882
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1062
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 1097
    :cond_0
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-eq v2, v3, :cond_1

    .line 1099
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/widget/ScreenView;->i(Landroid/view/MotionEvent;)V

    .line 1101
    :cond_1
    iget-boolean v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayI:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayG:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayG:I

    if-eq v2, v4, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0

    .line 1064
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/widget/ScreenView;->i(Landroid/view/MotionEvent;)V

    .line 1065
    iget v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayG:I

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/vendorsettings/widget/ScreenView;->h(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1066
    invoke-direct {p0, p1, v1}, Lcom/android/vendorsettings/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1071
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1072
    iget-object v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayF:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1073
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1074
    iput-boolean v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayI:Z

    .line 1075
    iput-boolean v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayH:Z

    .line 1077
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->mLastMotionX:F

    .line 1078
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->mLastMotionY:F

    .line 1079
    iget-object v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1080
    iput-boolean v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayJ:Z

    goto :goto_0

    .line 1087
    :cond_4
    iget-object v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1088
    invoke-direct {p0, p1, v1}, Lcom/android/vendorsettings/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1094
    :pswitch_2
    invoke-direct {p0, p1, v0}, Lcom/android/vendorsettings/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1062
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 966
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScrollX()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/vendorsettings/widget/ScreenView;->o(IZ)V

    .line 968
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScreenCount()I

    move-result v2

    move v1, v0

    .line 970
    :goto_0
    if-ge v1, v2, :cond_1

    .line 971
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 972
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 973
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayu:I

    add-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getPaddingTop()I

    move-result v6

    iget v7, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayu:I

    add-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 979
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v0, v3

    .line 970
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 982
    :cond_1
    iget-boolean v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayC:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mVisibleRange:I

    rem-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 983
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    iget v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->mVisibleRange:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->setCurrentScreen(I)V

    .line 985
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 894
    iput p1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mWidthMeasureSpec:I

    .line 895
    iput p2, p0, Lcom/android/vendorsettings/widget/ScreenView;->mHeightMeasureSpec:I

    .line 898
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScreenCount()I

    move-result v6

    move v0, v1

    move v2, v1

    move v3, v1

    .line 900
    :goto_0
    iget v4, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayi:I

    if-ge v0, v4, :cond_0

    .line 901
    add-int v4, v0, v6

    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 902
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 903
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v7, v8}, Lcom/android/vendorsettings/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v7

    .line 906
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getPaddingTop()I

    move-result v8

    iget v9, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayu:I

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayv:I

    add-int/2addr v8, v9

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v8, v5}, Lcom/android/vendorsettings/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v5

    .line 911
    invoke-virtual {v4, v7, v5}, Landroid/view/View;->measure(II)V

    .line 912
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 913
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 900
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    move v4, v1

    move v5, v1

    .line 918
    :goto_1
    if-ge v0, v6, :cond_1

    .line 919
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 920
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 921
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v9, v10}, Lcom/android/vendorsettings/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v9

    .line 924
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getPaddingTop()I

    move-result v10

    iget v11, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayu:I

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayv:I

    add-int/2addr v10, v11

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v10, v8}, Lcom/android/vendorsettings/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v8

    .line 929
    invoke-virtual {v7, v9, v8}, Landroid/view/View;->measure(II)V

    .line 930
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 931
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 918
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 934
    :cond_1
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 935
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 937
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    .line 938
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getPaddingTop()I

    move-result v3

    iget v5, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayu:I

    add-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    iget v5, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayv:I

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    .line 940
    invoke-static {v0, p1}, Lcom/android/vendorsettings/widget/ScreenView;->resolveSize(II)I

    move-result v0

    invoke-static {v2, p2}, Lcom/android/vendorsettings/widget/ScreenView;->resolveSize(II)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/vendorsettings/widget/ScreenView;->setMeasuredDimension(II)V

    .line 943
    if-lez v6, :cond_3

    .line 944
    iput v4, p0, Lcom/android/vendorsettings/widget/ScreenView;->mChildScreenWidth:I

    .line 945
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScreenWidth:I

    .line 947
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ScreenView;->wC()V

    .line 948
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mChildScreenWidth:I

    if-lez v0, :cond_2

    .line 949
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScreenWidth:I

    iget v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayD:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr v0, v2

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mVisibleRange:I

    .line 953
    :cond_2
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayB:F

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->setOverScrollRatio(F)V

    .line 955
    :cond_3
    iget-boolean v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayh:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mVisibleRange:I

    if-lez v0, :cond_4

    .line 956
    iput-boolean v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayh:Z

    .line 957
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/widget/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 958
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->setCurrentScreen(I)V

    .line 959
    invoke-virtual {p0, v12}, Lcom/android/vendorsettings/widget/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 961
    :cond_4
    return-void
.end method

.method protected onPinchIn(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .prologue
    .line 1900
    return-void
.end method

.method protected onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .prologue
    .line 1909
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1927
    check-cast p1, Lcom/android/vendorsettings/widget/ScreenView$SavedState;

    .line 1928
    invoke-virtual {p1}, Lcom/android/vendorsettings/widget/ScreenView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1929
    iget v0, p1, Lcom/android/vendorsettings/widget/ScreenView$SavedState;->currentScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1930
    iget v0, p1, Lcom/android/vendorsettings/widget/ScreenView$SavedState;->currentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->setCurrentScreen(I)V

    .line 1932
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1920
    new-instance v0, Lcom/android/vendorsettings/widget/ScreenView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/widget/ScreenView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1921
    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    iput v1, v0, Lcom/android/vendorsettings/widget/ScreenView$SavedState;->currentScreen:I

    .line 1922
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 1123
    iget-boolean v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayI:Z

    if-eqz v0, :cond_0

    .line 1177
    :goto_0
    return v1

    .line 1126
    :cond_0
    iget-boolean v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayH:Z

    if-eqz v0, :cond_1

    .line 1127
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/widget/ScreenView;->i(Landroid/view/MotionEvent;)V

    .line 1129
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 1176
    :cond_2
    :goto_1
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayH:Z

    goto :goto_0

    .line 1133
    :pswitch_1
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayG:I

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/vendorsettings/widget/ScreenView;->h(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1134
    invoke-direct {p0, p1, v1}, Lcom/android/vendorsettings/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    .line 1136
    :cond_3
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayG:I

    if-ne v0, v1, :cond_2

    .line 1138
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayL:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1139
    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 1140
    invoke-direct {p0, p1, v1}, Lcom/android/vendorsettings/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    .line 1141
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayL:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1143
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1144
    iget v3, p0, Lcom/android/vendorsettings/widget/ScreenView;->mLastMotionX:F

    sub-float/2addr v3, v0

    .line 1145
    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mLastMotionX:F

    .line 1146
    cmpl-float v0, v3, v4

    if-eqz v0, :cond_7

    cmpg-float v0, v3, v4

    if-gez v0, :cond_5

    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    if-eqz v0, :cond_7

    :cond_5
    cmpl-float v0, v3, v4

    if-lez v0, :cond_6

    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScreenCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v0, v4, :cond_7

    .line 1147
    :cond_6
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayN:F

    add-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/vendorsettings/widget/ScreenView;->scrollTo(II)V

    goto :goto_1

    .line 1149
    :cond_7
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->awakenScrollBars()Z

    goto :goto_1

    .line 1155
    :pswitch_2
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayG:I

    if-ne v0, v1, :cond_8

    .line 1156
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayL:I

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->ds(I)V

    .line 1158
    :cond_8
    invoke-direct {p0, p1, v2}, Lcom/android/vendorsettings/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 1161
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    .line 1164
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 1165
    iget v4, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayL:I

    if-ne v3, v4, :cond_2

    .line 1169
    if-nez v0, :cond_9

    move v0, v1

    .line 1170
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->mLastMotionX:F

    .line 1171
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayL:I

    .line 1172
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayU:Lcom/android/vendorsettings/widget/o;

    iget v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayL:I

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/widget/o;->init(I)V

    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 1169
    goto :goto_2

    .line 1129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 1462
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayi:I

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayE:I

    .line 1463
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1464
    return-void
.end method

.method protected removeIndicator(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1503
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1504
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1505
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The view passed through the parameter must be indicator."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1508
    :cond_0
    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayi:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayi:I

    .line 1509
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1510
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1416
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2

    .prologue
    .line 1446
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1426
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViews(II)V
    .locals 2

    .prologue
    .line 1456
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewsInLayout(II)V
    .locals 2

    .prologue
    .line 1436
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .prologue
    .line 996
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 997
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 998
    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 999
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->snapToScreen(I)V

    .line 1000
    const/4 v0, 0x1

    .line 1004
    :goto_0
    return v0

    .line 1002
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1004
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected resetTransformation(Landroid/view/View;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1733
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1734
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1735
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1736
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1737
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 1738
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 1739
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 1740
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1741
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayg:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setCameraDistance(F)V

    .line 1742
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1743
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1744
    return-void
.end method

.method public scrollTo(II)V
    .locals 2

    .prologue
    .line 838
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayA:I

    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayz:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 839
    int-to-float v0, v0

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayN:F

    .line 840
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayM:F

    .line 841
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayN:F

    float-to-int v0, v0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 842
    return-void
.end method

.method public scrollToScreen(I)V
    .locals 2

    .prologue
    .line 829
    iget-boolean v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayC:Z

    if-eqz v0, :cond_0

    .line 830
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    .line 832
    :cond_0
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mWidthMeasureSpec:I

    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/widget/ScreenView;->measure(II)V

    .line 833
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayx:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/widget/ScreenView;->scrollTo(II)V

    .line 834
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1333
    iget-boolean v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayC:Z

    if-eqz v0, :cond_2

    .line 1334
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1336
    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mVisibleRange:I

    rem-int v1, v0, v1

    sub-int/2addr v0, v1

    .line 1341
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->dt(I)V

    .line 1342
    iget-boolean v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayh:Z

    if-nez v0, :cond_1

    .line 1343
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1346
    :cond_0
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->scrollToScreen(I)V

    .line 1347
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->invalidate()V

    .line 1349
    :cond_1
    return-void

    .line 1338
    :cond_2
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public setMaximumSnapVelocity(I)V
    .locals 0

    .prologue
    .line 403
    iput p1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayK:I

    .line 404
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .prologue
    .line 1591
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScreenCount()I

    move-result v1

    .line 1592
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1593
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1592
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1595
    :cond_0
    return-void
.end method

.method public setOverScrollRatio(F)V
    .locals 0

    .prologue
    .line 795
    iput p1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayB:F

    .line 796
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ScreenView;->wD()V

    .line 797
    return-void
.end method

.method public setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 504
    if-eqz p1, :cond_5

    .line 505
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayq:Lcom/android/vendorsettings/widget/t;

    if-nez v1, :cond_4

    .line 506
    new-instance v1, Lcom/android/vendorsettings/widget/t;

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/vendorsettings/widget/t;-><init>(Lcom/android/vendorsettings/widget/ScreenView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayq:Lcom/android/vendorsettings/widget/t;

    .line 507
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayq:Lcom/android/vendorsettings/widget/t;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/widget/t;->setGravity(I)V

    .line 508
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayq:Lcom/android/vendorsettings/widget/t;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/widget/t;->setAnimationCacheEnabled(Z)V

    .line 509
    :goto_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 510
    if-nez v0, :cond_1

    .line 511
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayq:Lcom/android/vendorsettings/widget/t;

    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ScreenView;->wE()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lcom/android/vendorsettings/widget/ScreenView;->aye:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Lcom/android/vendorsettings/widget/t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayq:Lcom/android/vendorsettings/widget/t;

    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ScreenView;->wF()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lcom/android/vendorsettings/widget/ScreenView;->aye:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Lcom/android/vendorsettings/widget/t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayq:Lcom/android/vendorsettings/widget/t;

    invoke-virtual {p0, v0, p1}, Lcom/android/vendorsettings/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 524
    :cond_3
    :goto_2
    return-void

    .line 518
    :cond_4
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayq:Lcom/android/vendorsettings/widget/t;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/widget/t;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 520
    :cond_5
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayq:Lcom/android/vendorsettings/widget/t;

    if-eqz v0, :cond_3

    .line 521
    iget-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayq:Lcom/android/vendorsettings/widget/t;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 522
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayq:Lcom/android/vendorsettings/widget/t;

    goto :goto_2
.end method

.method public setVisibility(I)V
    .locals 0

    .prologue
    .line 886
    if-nez p1, :cond_0

    .line 887
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/ScreenView;->wA()V

    .line 889
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 890
    return-void
.end method

.method protected snapByVelocity(II)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1198
    if-ne p2, v1, :cond_0

    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    if-lez v0, :cond_0

    .line 1199
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    iget v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/vendorsettings/widget/ScreenView;->snapToScreen(IIZ)V

    .line 1212
    :goto_0
    return-void

    .line 1200
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 1202
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    iget v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->mVisibleRange:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/vendorsettings/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .line 1203
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 1204
    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/vendorsettings/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .line 1206
    :cond_2
    iget v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->mChildScreenWidth:I

    iget-boolean v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->ayC:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/vendorsettings/widget/ScreenView;->mVisibleRange:I

    :goto_1
    mul-int/2addr v0, v2

    .line 1208
    invoke-virtual {p0}, Lcom/android/vendorsettings/widget/ScreenView;->getScrollX()I

    move-result v2

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/vendorsettings/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr v0, v2

    .line 1210
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/vendorsettings/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1206
    goto :goto_1
.end method

.method public snapToScreen(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1220
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/vendorsettings/widget/ScreenView;->snapToScreen(IIZ)V

    .line 1221
    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 1

    .prologue
    .line 1296
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/vendorsettings/widget/ScreenView;->a(IIZLcom/android/vendorsettings/widget/v;)V

    .line 1297
    return-void
.end method

.method protected updateChildStaticTransformationByScreen(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1891
    return-void
.end method
