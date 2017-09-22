.class public Lmiui/widget/ScreenView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/ScreenView$d;,
        Lmiui/widget/ScreenView$h;,
        Lmiui/widget/ScreenView$g;,
        Lmiui/widget/ScreenView$f;,
        Lmiui/widget/ScreenView$a;,
        Lmiui/widget/ScreenView$e;,
        Lmiui/widget/ScreenView$b;,
        Lmiui/widget/ScreenView$SavedState;,
        Lmiui/widget/ScreenView$c;,
        Lmiui/widget/ScreenView$SnapScreenOnceNotification;
    }
.end annotation


# static fields
.field public static final FLING_ALIGN:I = 0x4

.field public static final FLING_CANCEL:I = 0x3

.field public static final FLING_LEFT:I = 0x1

.field public static final FLING_RIGHT:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field public static final SCREEN_ALIGN_CENTER:I = 0x2

.field public static final SCREEN_ALIGN_CUSTOMIZED:I = 0x0

.field public static final SCREEN_ALIGN_LEFT:I = 0x1

.field public static final SCREEN_ALIGN_RIGHT:I = 0x3

.field public static final SCREEN_TRANSITION_TYPE_CLASSIC:I = 0x0

.field public static final SCREEN_TRANSITION_TYPE_CLASSIC_NO_OVER_SHOOT:I = 0x1

.field public static final SCREEN_TRANSITION_TYPE_CROSSFADE:I = 0x2

.field public static final SCREEN_TRANSITION_TYPE_CUBE:I = 0x4

.field public static final SCREEN_TRANSITION_TYPE_CUSTOM:I = 0x9

.field public static final SCREEN_TRANSITION_TYPE_FALLDOWN:I = 0x3

.field public static final SCREEN_TRANSITION_TYPE_LEFTPAGE:I = 0x5

.field public static final SCREEN_TRANSITION_TYPE_RIGHTPAGE:I = 0x6

.field public static final SCREEN_TRANSITION_TYPE_ROTATE:I = 0x8

.field public static final SCREEN_TRANSITION_TYPE_STACK:I = 0x7

.field private static final TAG:Ljava/lang/String; = "ScreenView"

.field protected static final TOUCH_STATE_PINCHING:I = 0x4

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field protected static final TOUCH_STATE_SLIDING:I = 0x3

.field private static final WD:I = -0x1

.field private static final WE:I = 0x30

.field private static final WG:Landroid/widget/LinearLayout$LayoutParams;

.field private static final WH:I = 0x3e8

.field private static final WI:I = 0x1f4

.field private static final WJ:I = 0x12c

.field private static final WK:F = 1.0E9f

.field private static final WL:F = 0.75f

.field private static final WM:F

.field private static final WN:I = 0x12c

.field private static final WO:F = 2500.0f

.field private static final WP:F = 0.4f

.field private static final WQ:F = 1.3f

.field private static final je:Lcom/miui/internal/variable/Android_View_View_class;


# instance fields
.field private LQ:Z

.field private final WR:F

.field private WT:I

.field private WU:I

.field private WV:I

.field private WW:I

.field private WX:I

.field private WY:I

.field private WZ:Lmiui/widget/ScreenView$a;

.field private XA:F

.field private XB:I

.field private XC:Lmiui/widget/ScreenView$e;

.field private XD:I

.field private XE:F

.field private XF:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

.field private XG:Lmiui/widget/ScreenView$b;

.field private Xa:Lmiui/widget/ScreenView$a;

.field private Xb:Lmiui/widget/ScreenView$f;

.field private Xc:Lmiui/widget/ScreenView$g;

.field private Xd:Z

.field private Xe:Ljava/lang/Runnable;

.field private Xf:I

.field private Xg:I

.field private Xh:I

.field private Xi:I

.field private Xj:I

.field private Xk:I

.field private Xl:I

.field private Xm:I

.field private Xn:I

.field private Xo:I

.field private Xp:F

.field private Xq:Z

.field private Xr:F

.field private Xs:I

.field private Xt:Landroid/view/ScaleGestureDetector;

.field private Xu:I

.field private Xv:Z

.field private Xw:Z

.field private Xx:Z

.field private Xy:F

.field private Xz:F

.field private fy:I

.field protected mChildScreenWidth:I

.field protected mCurrentScreen:I

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field protected mScreenOffset:I

.field protected mVisibleRange:I

.field private qo:I

.field private qt:I

.field private vB:Landroid/widget/Scroller;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 59
    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    sput-object v0, Lmiui/widget/ScreenView;->je:Lcom/miui/internal/variable/Android_View_View_class;

    .line 162
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lmiui/widget/ScreenView;->WG:Landroid/widget/LinearLayout$LayoutParams;

    .line 191
    const-wide v0, 0x3f90624dd2f1a9fcL    # 0.016

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lmiui/widget/ScreenView;->WM:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 332
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 202
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44a00000    # 1280.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->WR:F

    .line 208
    iput-boolean v3, p0, Lmiui/widget/ScreenView;->LQ:Z

    .line 212
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_left:I

    iput v0, p0, Lmiui/widget/ScreenView;->WU:I

    .line 214
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_left_gray:I

    iput v0, p0, Lmiui/widget/ScreenView;->WV:I

    .line 216
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_right:I

    iput v0, p0, Lmiui/widget/ScreenView;->WW:I

    .line 218
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_right_gray:I

    iput v0, p0, Lmiui/widget/ScreenView;->WX:I

    .line 220
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_seek_point_selector:I

    iput v0, p0, Lmiui/widget/ScreenView;->WY:I

    .line 238
    new-instance v0, Lmiui/widget/ScreenView$1;

    invoke-direct {v0, p0}, Lmiui/widget/ScreenView$1;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->Xe:Ljava/lang/Runnable;

    .line 256
    iput v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    .line 261
    iput v2, p0, Lmiui/widget/ScreenView;->Xj:I

    .line 270
    iput v5, p0, Lmiui/widget/ScreenView;->Xm:I

    .line 276
    const v0, 0x3eaaaaab

    iput v0, p0, Lmiui/widget/ScreenView;->Xp:F

    .line 282
    iput v4, p0, Lmiui/widget/ScreenView;->Xr:F

    .line 284
    iput v2, p0, Lmiui/widget/ScreenView;->Xs:I

    .line 293
    iput v2, p0, Lmiui/widget/ScreenView;->Xu:I

    .line 299
    iput-boolean v3, p0, Lmiui/widget/ScreenView;->Xx:Z

    .line 305
    iput v5, p0, Lmiui/widget/ScreenView;->qo:I

    .line 311
    iput v4, p0, Lmiui/widget/ScreenView;->XA:F

    .line 313
    const/16 v0, 0x12c

    iput v0, p0, Lmiui/widget/ScreenView;->XB:I

    .line 317
    iput v2, p0, Lmiui/widget/ScreenView;->XD:I

    .line 319
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lmiui/widget/ScreenView;->XE:F

    .line 323
    new-instance v0, Lmiui/widget/ScreenView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/widget/ScreenView$b;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->XG:Lmiui/widget/ScreenView$b;

    .line 333
    invoke-direct {p0}, Lmiui/widget/ScreenView;->eU()V

    .line 334
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 345
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 356
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44a00000    # 1280.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->WR:F

    .line 208
    iput-boolean v3, p0, Lmiui/widget/ScreenView;->LQ:Z

    .line 212
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_left:I

    iput v0, p0, Lmiui/widget/ScreenView;->WU:I

    .line 214
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_left_gray:I

    iput v0, p0, Lmiui/widget/ScreenView;->WV:I

    .line 216
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_right:I

    iput v0, p0, Lmiui/widget/ScreenView;->WW:I

    .line 218
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_right_gray:I

    iput v0, p0, Lmiui/widget/ScreenView;->WX:I

    .line 220
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_seek_point_selector:I

    iput v0, p0, Lmiui/widget/ScreenView;->WY:I

    .line 238
    new-instance v0, Lmiui/widget/ScreenView$1;

    invoke-direct {v0, p0}, Lmiui/widget/ScreenView$1;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->Xe:Ljava/lang/Runnable;

    .line 256
    iput v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    .line 261
    iput v2, p0, Lmiui/widget/ScreenView;->Xj:I

    .line 270
    iput v5, p0, Lmiui/widget/ScreenView;->Xm:I

    .line 276
    const v0, 0x3eaaaaab

    iput v0, p0, Lmiui/widget/ScreenView;->Xp:F

    .line 282
    iput v4, p0, Lmiui/widget/ScreenView;->Xr:F

    .line 284
    iput v2, p0, Lmiui/widget/ScreenView;->Xs:I

    .line 293
    iput v2, p0, Lmiui/widget/ScreenView;->Xu:I

    .line 299
    iput-boolean v3, p0, Lmiui/widget/ScreenView;->Xx:Z

    .line 305
    iput v5, p0, Lmiui/widget/ScreenView;->qo:I

    .line 311
    iput v4, p0, Lmiui/widget/ScreenView;->XA:F

    .line 313
    const/16 v0, 0x12c

    iput v0, p0, Lmiui/widget/ScreenView;->XB:I

    .line 317
    iput v2, p0, Lmiui/widget/ScreenView;->XD:I

    .line 319
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lmiui/widget/ScreenView;->XE:F

    .line 323
    new-instance v0, Lmiui/widget/ScreenView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/widget/ScreenView$b;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->XG:Lmiui/widget/ScreenView$b;

    .line 357
    invoke-direct {p0}, Lmiui/widget/ScreenView;->eU()V

    .line 358
    return-void
.end method

.method private a(Landroid/view/MotionEvent;I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1030
    iput p2, p0, Lmiui/widget/ScreenView;->Xu:I

    .line 1031
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget v0, p0, Lmiui/widget/ScreenView;->Xu:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1033
    iget v0, p0, Lmiui/widget/ScreenView;->Xu:I

    if-nez v0, :cond_2

    .line 1034
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView;->qo:I

    .line 1035
    iput-boolean v2, p0, Lmiui/widget/ScreenView;->Xx:Z

    .line 1036
    iget-object v0, p0, Lmiui/widget/ScreenView;->XG:Lmiui/widget/ScreenView$b;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$b;->recycle()V

    .line 1058
    :cond_0
    :goto_1
    invoke-direct {p0}, Lmiui/widget/ScreenView;->eV()V

    .line 1059
    return-void

    :cond_1
    move v0, v2

    .line 1031
    goto :goto_0

    .line 1038
    :cond_2
    if-eqz p1, :cond_3

    .line 1039
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->qo:I

    .line 1040
    iget v0, p0, Lmiui/widget/ScreenView;->qo:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1043
    :cond_3
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->Xx:Z

    if-eqz v0, :cond_4

    .line 1044
    iput-boolean v2, p0, Lmiui/widget/ScreenView;->Xx:Z

    .line 1048
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1049
    if-eqz v0, :cond_4

    .line 1050
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1053
    :cond_4
    iget v0, p0, Lmiui/widget/ScreenView;->Xu:I

    if-ne v0, v1, :cond_0

    .line 1054
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiui/widget/ScreenView;->Xz:F

    .line 1055
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->Xy:F

    goto :goto_1
.end method

.method private a(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 1930
    invoke-virtual {p1}, Landroid/view/View;->getCameraDistance()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 1934
    :goto_0
    return-void

    .line 1933
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setCameraDistance(F)V

    goto :goto_0
.end method

.method static synthetic a(Lmiui/widget/ScreenView;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lmiui/widget/ScreenView;->eW()V

    return-void
.end method

.method static synthetic a(Lmiui/widget/ScreenView;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->au(I)V

    return-void
.end method

.method static synthetic a(Lmiui/widget/ScreenView;II)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->l(II)V

    return-void
.end method

.method static synthetic a(Lmiui/widget/ScreenView;Landroid/view/MotionEvent;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method private ar(I)V
    .locals 4

    .prologue
    .line 755
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 756
    iget-object v1, p0, Lmiui/widget/ScreenView;->Xc:Lmiui/widget/ScreenView$g;

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 757
    iget-object v1, p0, Lmiui/widget/ScreenView;->Xc:Lmiui/widget/ScreenView$g;

    invoke-virtual {v1}, Lmiui/widget/ScreenView$g;->fc()I

    move-result v1

    .line 758
    div-int v2, v1, v0

    iget v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    mul-int/2addr v2, v3

    const/16 v3, 0x30

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 761
    iget v3, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, v3

    .line 762
    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 767
    :goto_0
    iget-object v1, p0, Lmiui/widget/ScreenView;->Xc:Lmiui/widget/ScreenView$g;

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, v2}, Lmiui/widget/ScreenView$g;->n(II)V

    .line 768
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xc:Lmiui/widget/ScreenView$g;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$g;->invalidate()V

    .line 772
    :cond_0
    return-void

    .line 762
    :cond_1
    sub-int v3, v1, v2

    mul-int/2addr v3, p1

    sub-int/2addr v0, v1

    div-int v0, v3, v0

    goto :goto_0
.end method

.method private as(I)V
    .locals 3

    .prologue
    .line 775
    iget-object v0, p0, Lmiui/widget/ScreenView;->WZ:Lmiui/widget/ScreenView$a;

    if-eqz v0, :cond_0

    .line 776
    iget-object v1, p0, Lmiui/widget/ScreenView;->WZ:Lmiui/widget/ScreenView$a;

    if-gtz p1, :cond_1

    iget v0, p0, Lmiui/widget/ScreenView;->WV:I

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/widget/ScreenView$a;->setImageResource(I)V

    .line 780
    iget-object v1, p0, Lmiui/widget/ScreenView;->Xa:Lmiui/widget/ScreenView$a;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, v2

    iget v2, p0, Lmiui/widget/ScreenView;->Xj:I

    sub-int/2addr v0, v2

    iget v2, p0, Lmiui/widget/ScreenView;->Xi:I

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_2

    iget v0, p0, Lmiui/widget/ScreenView;->WX:I

    :goto_1
    invoke-virtual {v1, v0}, Lmiui/widget/ScreenView$a;->setImageResource(I)V

    .line 786
    :cond_0
    return-void

    .line 776
    :cond_1
    iget v0, p0, Lmiui/widget/ScreenView;->WU:I

    goto :goto_0

    .line 780
    :cond_2
    iget v0, p0, Lmiui/widget/ScreenView;->WW:I

    goto :goto_1
.end method

.method private at(I)V
    .locals 3

    .prologue
    .line 1182
    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1190
    :cond_0
    :goto_0
    return-void

    .line 1185
    :cond_1
    iget-object v0, p0, Lmiui/widget/ScreenView;->XG:Lmiui/widget/ScreenView$b;

    const/16 v1, 0x3e8

    iget v2, p0, Lmiui/widget/ScreenView;->qt:I

    invoke-virtual {v0, v1, v2, p1}, Lmiui/widget/ScreenView$b;->k(III)F

    move-result v0

    float-to-int v0, v0

    .line 1187
    iget-object v1, p0, Lmiui/widget/ScreenView;->XG:Lmiui/widget/ScreenView$b;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lmiui/widget/ScreenView$b;->f(F)I

    move-result v1

    .line 1189
    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScreenView;->snapByVelocity(II)V

    goto :goto_0
.end method

.method private au(I)V
    .locals 1

    .prologue
    .line 1353
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, v0, p1}, Lmiui/widget/ScreenView;->l(II)V

    .line 1354
    iput p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    .line 1355
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView;->Xm:I

    .line 1356
    return-void
.end method

.method static synthetic b(Lmiui/widget/ScreenView;)Lmiui/widget/ScreenView$g;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xc:Lmiui/widget/ScreenView$g;

    return-object v0
.end method

.method static synthetic c(Lmiui/widget/ScreenView;)F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lmiui/widget/ScreenView;->XE:F

    return v0
.end method

.method static synthetic d(Lmiui/widget/ScreenView;)Landroid/widget/Scroller;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmiui/widget/ScreenView;->vB:Landroid/widget/Scroller;

    return-object v0
.end method

.method private d(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1108
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v2, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1109
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lmiui/widget/ScreenView;->mLastMotionY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1110
    iget v3, p0, Lmiui/widget/ScreenView;->XA:F

    mul-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    iget v2, p0, Lmiui/widget/ScreenView;->fy:I

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

.method static synthetic e(Lmiui/widget/ScreenView;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lmiui/widget/ScreenView;->Xm:I

    return v0
.end method

.method private e(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 1115
    iget-object v0, p0, Lmiui/widget/ScreenView;->XG:Lmiui/widget/ScreenView$b;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$b;->addMovement(Landroid/view/MotionEvent;)V

    .line 1116
    iget v0, p0, Lmiui/widget/ScreenView;->Xu:I

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lmiui/widget/ScreenView;->Xu:I

    if-ne v0, v1, :cond_1

    .line 1118
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xt:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1120
    :cond_1
    return-void
.end method

.method private eU()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 425
    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 426
    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setClipToPadding(Z)V

    .line 427
    new-instance v0, Lmiui/widget/ScreenView$e;

    invoke-direct {v0, p0}, Lmiui/widget/ScreenView$e;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->XC:Lmiui/widget/ScreenView$e;

    .line 428
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/ScreenView;->XC:Lmiui/widget/ScreenView$e;

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->vB:Landroid/widget/Scroller;

    .line 429
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->au(I)V

    .line 430
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lmiui/widget/ScreenView;->fy:I

    .line 432
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setMaximumSnapVelocity(I)V

    .line 433
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lmiui/widget/ScreenView$d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lmiui/widget/ScreenView$d;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->Xt:Landroid/view/ScaleGestureDetector;

    .line 435
    return-void
.end method

.method private eV()V
    .locals 4

    .prologue
    .line 564
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xc:Lmiui/widget/ScreenView$g;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/widget/ScreenView;->Xd:Z

    if-nez v0, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xe:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 568
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xc:Lmiui/widget/ScreenView$g;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$g;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 569
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xc:Lmiui/widget/ScreenView$g;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$g;->setAlpha(F)V

    .line 570
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xc:Lmiui/widget/ScreenView$g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$g;->setVisibility(I)V

    .line 571
    iget v0, p0, Lmiui/widget/ScreenView;->Xu:I

    if-nez v0, :cond_0

    .line 572
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xe:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lmiui/widget/ScreenView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private eW()V
    .locals 3

    .prologue
    .line 577
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->Xd:Z

    if-nez v0, :cond_0

    .line 588
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xc:Lmiui/widget/ScreenView$g;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$g;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1f4

    :goto_1
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/widget/ScreenView$2;

    invoke-direct {v1, p0}, Lmiui/widget/ScreenView$2;-><init>(Lmiui/widget/ScreenView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private eX()V
    .locals 2

    .prologue
    .line 676
    iget v0, p0, Lmiui/widget/ScreenView;->Xh:I

    packed-switch v0, :pswitch_data_0

    .line 690
    :goto_0
    iget v0, p0, Lmiui/widget/ScreenView;->Xi:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->Xi:I

    .line 691
    return-void

    .line 678
    :pswitch_0
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenOffset:I

    iput v0, p0, Lmiui/widget/ScreenView;->Xi:I

    goto :goto_0

    .line 681
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->Xi:I

    goto :goto_0

    .line 684
    :pswitch_2
    iget v0, p0, Lmiui/widget/ScreenView;->Xj:I

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmiui/widget/ScreenView;->Xi:I

    goto :goto_0

    .line 687
    :pswitch_3
    iget v0, p0, Lmiui/widget/ScreenView;->Xj:I

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->Xi:I

    goto :goto_0

    .line 676
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private eY()V
    .locals 3

    .prologue
    .line 811
    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->Xp:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->Xi:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->Xo:I

    .line 813
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->Xq:Z

    if-nez v0, :cond_0

    .line 814
    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/ScreenView;->Xp:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->Xj:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->Xi:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->Xn:I

    .line 822
    :goto_0
    return-void

    .line 818
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    div-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->Xj:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/ScreenView;->Xp:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/ScreenView;->Xn:I

    goto :goto_0
.end method

.method private eZ()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 1606
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1607
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1608
    iget v1, p0, Lmiui/widget/ScreenView;->WY:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1609
    return-object v0
.end method

.method static synthetic f(Lmiui/widget/ScreenView;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lmiui/widget/ScreenView;->Xu:I

    return v0
.end method

.method static synthetic fa()Lcom/miui/internal/variable/Android_View_View_class;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lmiui/widget/ScreenView;->je:Lcom/miui/internal/variable/Android_View_View_class;

    return-object v0
.end method

.method private i(IZ)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 694
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 695
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v4

    .line 696
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getWidth()I

    move-result v5

    .line 697
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getHeight()I

    move-result v6

    move v1, v2

    .line 698
    :goto_0
    iget v0, p0, Lmiui/widget/ScreenView;->WT:I

    if-ge v1, v0, :cond_1

    .line 699
    add-int v0, v1, v4

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 700
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 703
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 704
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 707
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 708
    const/4 v10, -0x1

    if-eq v3, v10, :cond_2

    .line 709
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getLayoutDirection()I

    move-result v10

    invoke-static {v3, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v10

    and-int/lit8 v10, v10, 0x7

    .line 711
    and-int/lit8 v11, v3, 0x70

    .line 713
    packed-switch v10, :pswitch_data_0

    .line 726
    :pswitch_0
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 728
    :goto_1
    sparse-switch v11, :sswitch_data_0

    .line 741
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 744
    :goto_2
    if-nez p2, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v10

    if-lez v10, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v10

    if-lez v10, :cond_0

    .line 745
    int-to-float v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 698
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 715
    :pswitch_1
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 718
    :pswitch_2
    sub-int v3, v5, v8

    div-int/lit8 v3, v3, 0x2

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v10

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v10

    .line 720
    goto :goto_1

    .line 722
    :pswitch_3
    sub-int v3, v5, v8

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v10

    .line 724
    goto :goto_1

    .line 730
    :sswitch_0
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 733
    :sswitch_1
    sub-int v10, v6, v9

    div-int/lit8 v10, v10, 0x2

    iget v11, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v10, v0

    .line 735
    goto :goto_2

    .line 737
    :sswitch_2
    sub-int v10, v6, v9

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v10, v0

    .line 739
    goto :goto_2

    .line 747
    :cond_0
    add-int/2addr v8, v3

    add-int/2addr v9, v0

    invoke-virtual {v7, v3, v0, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 751
    :cond_1
    return-void

    :cond_2
    move v0, v2

    move v3, v2

    goto :goto_2

    .line 713
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 728
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private l(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1613
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xb:Lmiui/widget/ScreenView$f;

    if-eqz v0, :cond_1

    .line 1614
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    move v0, v1

    .line 1615
    :goto_0
    iget v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-ge v0, v3, :cond_0

    add-int v3, p1, v0

    if-ge v3, v2, :cond_0

    .line 1616
    iget-object v3, p0, Lmiui/widget/ScreenView;->Xb:Lmiui/widget/ScreenView$f;

    add-int v4, p1, v0

    invoke-virtual {v3, v4}, Lmiui/widget/ScreenView$f;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1615
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1620
    :cond_0
    :goto_1
    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-ge v1, v0, :cond_1

    add-int v0, p2, v1

    if-ge v0, v2, :cond_1

    .line 1621
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xb:Lmiui/widget/ScreenView$f;

    add-int v3, p2, v1

    invoke-virtual {v0, v3}, Lmiui/widget/ScreenView$f;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1620
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1624
    :cond_1
    return-void
.end method

.method private p(Landroid/view/View;)V
    .locals 10

    .prologue
    const v9, 0x459c4000    # 5000.0f

    const/high16 v5, 0x40000000    # 2.0f

    const v8, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1742
    instance-of v0, p1, Lmiui/widget/ScreenView$c;

    if-eqz v0, :cond_0

    .line 1871
    :goto_0
    :pswitch_0
    return-void

    .line 1745
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1746
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1747
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    .line 1748
    div-float v4, v0, v5

    .line 1749
    div-float v5, v2, v5

    .line 1750
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    sub-float/2addr v3, v4

    div-float/2addr v3, v0

    .line 1753
    iget v6, p0, Lmiui/widget/ScreenView;->XD:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 1755
    :pswitch_1
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1758
    :pswitch_2
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1761
    :pswitch_3
    cmpl-float v0, v3, v1

    if-eqz v0, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_2

    .line 1762
    :cond_1
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1765
    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v7, v0

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v0, v2

    add-float/2addr v0, v8

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1766
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1767
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1768
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 1769
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1770
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1771
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1772
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 1773
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 1774
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 1775
    iget v0, p0, Lmiui/widget/ScreenView;->WR:F

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->a(Landroid/view/View;F)V

    goto :goto_0

    .line 1778
    :pswitch_4
    cmpl-float v0, v3, v1

    if-eqz v0, :cond_3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_4

    .line 1779
    :cond_3
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1782
    :cond_4
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 1783
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1784
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1785
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 1786
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1787
    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    .line 1788
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 1789
    neg-float v0, v3

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 1790
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 1791
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 1792
    iget v0, p0, Lmiui/widget/ScreenView;->WR:F

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->a(Landroid/view/View;F)V

    goto/16 :goto_0

    .line 1795
    :pswitch_5
    cmpl-float v2, v3, v1

    if-eqz v2, :cond_5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_6

    .line 1796
    :cond_5
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1799
    :cond_6
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 1800
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1801
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1802
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 1803
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1804
    cmpg-float v2, v3, v1

    if-gez v2, :cond_7

    move v0, v1

    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1805
    invoke-virtual {p1, v5}, Landroid/view/View;->setPivotY(F)V

    .line 1806
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 1807
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 1808
    const/high16 v0, -0x3d4c0000    # -90.0f

    mul-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1809
    invoke-direct {p0, p1, v9}, Lmiui/widget/ScreenView;->a(Landroid/view/View;F)V

    goto/16 :goto_0

    .line 1812
    :pswitch_6
    cmpl-float v2, v3, v1

    if-eqz v2, :cond_8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_9

    .line 1813
    :cond_8
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1816
    :cond_9
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v7, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1817
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1818
    mul-float v2, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v8

    sub-float v0, v2, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1820
    mul-float v0, v8, v3

    add-float/2addr v0, v7

    .line 1821
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1822
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1823
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1824
    invoke-virtual {p1, v5}, Landroid/view/View;->setPivotY(F)V

    .line 1825
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 1826
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 1827
    const/high16 v0, 0x42340000    # 45.0f

    neg-float v1, v3

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1828
    invoke-direct {p0, p1, v9}, Lmiui/widget/ScreenView;->a(Landroid/view/View;F)V

    goto/16 :goto_0

    .line 1833
    :pswitch_7
    cmpg-float v4, v3, v1

    if-gtz v4, :cond_a

    .line 1834
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1837
    :cond_a
    sub-float v4, v7, v3

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1838
    const v4, 0x3f19999a    # 0.6f

    const v5, 0x3ecccccd    # 0.4f

    sub-float v3, v7, v3

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    .line 1839
    sub-float v4, v7, v3

    mul-float/2addr v0, v4

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1840
    sub-float v0, v7, v3

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1841
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1842
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1843
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1844
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1845
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 1846
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 1847
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 1848
    iget v0, p0, Lmiui/widget/ScreenView;->WR:F

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->a(Landroid/view/View;F)V

    goto/16 :goto_0

    .line 1851
    :pswitch_8
    cmpl-float v2, v3, v1

    if-eqz v2, :cond_b

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_c

    .line 1852
    :cond_b
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1855
    :cond_c
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v7, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1856
    mul-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1857
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1858
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 1859
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1860
    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    .line 1861
    invoke-virtual {p1, v5}, Landroid/view/View;->setPivotY(F)V

    .line 1862
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 1863
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 1864
    const/high16 v0, 0x42b40000    # 90.0f

    neg-float v1, v3

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1865
    invoke-direct {p0, p1, v9}, Lmiui/widget/ScreenView;->a(Landroid/view/View;F)V

    goto/16 :goto_0

    .line 1868
    :pswitch_9
    invoke-virtual {p0, p1, v3}, Lmiui/widget/ScreenView;->updateChildStaticTransformationByScreen(Landroid/view/View;F)V

    goto/16 :goto_0

    .line 1753
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


# virtual methods
.method protected addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    .prologue
    .line 1471
    iget v0, p0, Lmiui/widget/ScreenView;->WT:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/widget/ScreenView;->WT:I

    .line 1472
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1473
    return-void
.end method

.method protected addIndicatorAt(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;I)V
    .locals 2

    .prologue
    .line 1485
    const/4 v0, -0x1

    iget v1, p0, Lmiui/widget/ScreenView;->WT:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1486
    if-ltz v0, :cond_0

    .line 1487
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 1489
    :cond_0
    iget v1, p0, Lmiui/widget/ScreenView;->WT:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/widget/ScreenView;->WT:I

    .line 1490
    invoke-super {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1491
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 1392
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 1393
    if-gez p2, :cond_1

    .line 1398
    :goto_0
    iget-object v1, p0, Lmiui/widget/ScreenView;->Xb:Lmiui/widget/ScreenView$f;

    if-eqz v1, :cond_0

    .line 1399
    iget-object v1, p0, Lmiui/widget/ScreenView;->Xb:Lmiui/widget/ScreenView$f;

    invoke-direct {p0}, Lmiui/widget/ScreenView;->eZ()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lmiui/widget/ScreenView;->WG:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, v0, v3}, Lmiui/widget/ScreenView$f;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1402
    :cond_0
    iget v1, p0, Lmiui/widget/ScreenView;->Xs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/widget/ScreenView;->Xs:I

    .line 1403
    invoke-direct {p0}, Lmiui/widget/ScreenView;->eY()V

    .line 1404
    invoke-super {p0, p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1405
    return-void

    .line 1396
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 1569
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->Xx:Z

    return v0
.end method

.method public computeScroll()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    const v2, 0x4e6e6b28    # 1.0E9f

    .line 847
    iget-object v0, p0, Lmiui/widget/ScreenView;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lmiui/widget/ScreenView;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiui/widget/ScreenView;->Xz:F

    .line 849
    sget-object v0, Lmiui/widget/ScreenView;->je:Lcom/miui/internal/variable/Android_View_View_class;

    iget v1, p0, Lmiui/widget/ScreenView;->Xz:F

    float-to-int v1, v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/internal/variable/Android_View_View_class;->setScrollXDirectly(Landroid/view/View;I)V

    .line 850
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lmiui/widget/ScreenView;->Xy:F

    .line 851
    sget-object v0, Lmiui/widget/ScreenView;->je:Lcom/miui/internal/variable/Android_View_View_class;

    iget-object v1, p0, Lmiui/widget/ScreenView;->vB:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/internal/variable/Android_View_View_class;->setScrollYDirectly(Landroid/view/View;I)V

    .line 852
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->postInvalidateOnAnimation()V

    .line 873
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0, v5}, Lmiui/widget/ScreenView;->i(IZ)V

    .line 874
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->ar(I)V

    .line 875
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->as(I)V

    .line 876
    return-void

    .line 853
    :cond_1
    iget v0, p0, Lmiui/widget/ScreenView;->Xm:I

    if-eq v0, v3, :cond_2

    .line 854
    iget v0, p0, Lmiui/widget/ScreenView;->Xm:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->au(I)V

    .line 856
    iput v3, p0, Lmiui/widget/ScreenView;->Xm:I

    .line 857
    iget-object v0, p0, Lmiui/widget/ScreenView;->XF:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lmiui/widget/ScreenView;->XF:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    invoke-interface {v0, p0}, Lmiui/widget/ScreenView$SnapScreenOnceNotification;->onSnapEnd(Lmiui/widget/ScreenView;)V

    .line 859
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/ScreenView;->XF:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    goto :goto_0

    .line 861
    :cond_2
    iget v0, p0, Lmiui/widget/ScreenView;->Xu:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 862
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr v0, v2

    .line 863
    iget v1, p0, Lmiui/widget/ScreenView;->Xy:F

    sub-float v1, v0, v1

    sget v2, Lmiui/widget/ScreenView;->WM:F

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 865
    iget v2, p0, Lmiui/widget/ScreenView;->Xz:F

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 866
    sget-object v3, Lmiui/widget/ScreenView;->je:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v3, p0, v1}, Lcom/miui/internal/variable/Android_View_View_class;->setScrollXDirectly(Landroid/view/View;I)V

    .line 867
    iput v0, p0, Lmiui/widget/ScreenView;->Xy:F

    .line 869
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v2, v0

    if-gtz v0, :cond_3

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, v2, v0

    if-gez v0, :cond_0

    .line 870
    :cond_3
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->postInvalidate()V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1010
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 1011
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-lez v1, :cond_1

    .line 1012
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    .line 1021
    :goto_0
    return v0

    .line 1015
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1016
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1017
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    goto :goto_0

    .line 1021
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .prologue
    .line 990
    invoke-direct {p0, p2}, Lmiui/widget/ScreenView;->p(Landroid/view/View;)V

    .line 991
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected finishCurrentGesture()V
    .locals 2

    .prologue
    .line 1905
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ScreenView;->Xw:Z

    .line 1906
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    .line 1907
    return-void
.end method

.method public getCurrentScreen()Landroid/view/View;
    .locals 1

    .prologue
    .line 1327
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreenIndex()I
    .locals 2

    .prologue
    .line 1315
    iget v0, p0, Lmiui/widget/ScreenView;->Xm:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1316
    iget v0, p0, Lmiui/widget/ScreenView;->Xm:I

    .line 1318
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    goto :goto_0
.end method

.method public getScreen(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 1366
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1367
    :cond_0
    const/4 v0, 0x0

    .line 1369
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final getScreenCount()I
    .locals 1

    .prologue
    .line 1306
    iget v0, p0, Lmiui/widget/ScreenView;->Xs:I

    return v0
.end method

.method public getScreenTransitionType()I
    .locals 1

    .prologue
    .line 1653
    iget v0, p0, Lmiui/widget/ScreenView;->XD:I

    return v0
.end method

.method public getSeekPointView(I)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1602
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xb:Lmiui/widget/ScreenView$f;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$f;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getTouchState()I
    .locals 1

    .prologue
    .line 1026
    iget v0, p0, Lmiui/widget/ScreenView;->Xu:I

    return v0
.end method

.method public getVisibleRange()I
    .locals 1

    .prologue
    .line 1381
    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 880
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 881
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->computeScroll()V

    .line 882
    invoke-direct {p0}, Lmiui/widget/ScreenView;->eV()V

    .line 883
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1063
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 1098
    :cond_0
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-eq v2, v3, :cond_1

    .line 1100
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->e(Landroid/view/MotionEvent;)V

    .line 1102
    :cond_1
    iget-boolean v2, p0, Lmiui/widget/ScreenView;->Xw:Z

    if-nez v2, :cond_2

    iget v2, p0, Lmiui/widget/ScreenView;->Xu:I

    if-eqz v2, :cond_3

    iget v2, p0, Lmiui/widget/ScreenView;->Xu:I

    if-eq v2, v4, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0

    .line 1065
    :pswitch_0
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->e(Landroid/view/MotionEvent;)V

    .line 1066
    iget v2, p0, Lmiui/widget/ScreenView;->Xu:I

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->d(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1067
    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1072
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1073
    iget-object v2, p0, Lmiui/widget/ScreenView;->Xt:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1074
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1075
    iput-boolean v0, p0, Lmiui/widget/ScreenView;->Xw:Z

    .line 1076
    iput-boolean v0, p0, Lmiui/widget/ScreenView;->Xv:Z

    .line 1078
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1079
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lmiui/widget/ScreenView;->mLastMotionY:F

    .line 1080
    iget-object v2, p0, Lmiui/widget/ScreenView;->vB:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1081
    iput-boolean v1, p0, Lmiui/widget/ScreenView;->Xx:Z

    goto :goto_0

    .line 1088
    :cond_4
    iget-object v2, p0, Lmiui/widget/ScreenView;->vB:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1089
    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1095
    :pswitch_2
    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1063
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

    .line 967
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lmiui/widget/ScreenView;->i(IZ)V

    .line 969
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    move v1, v0

    .line 971
    :goto_0
    if-ge v1, v2, :cond_1

    .line 972
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 973
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 974
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lmiui/widget/ScreenView;->Xf:I

    add-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingTop()I

    move-result v6

    iget v7, p0, Lmiui/widget/ScreenView;->Xf:I

    add-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 980
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v0, v3

    .line 971
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 983
    :cond_1
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->Xq:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 984
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 986
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 895
    iput p1, p0, Lmiui/widget/ScreenView;->Xk:I

    .line 896
    iput p2, p0, Lmiui/widget/ScreenView;->Xl:I

    .line 899
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v6

    move v0, v1

    move v2, v1

    move v3, v1

    .line 901
    :goto_0
    iget v4, p0, Lmiui/widget/ScreenView;->WT:I

    if-ge v0, v4, :cond_0

    .line 902
    add-int v4, v0, v6

    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 903
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 904
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v7, v8}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v7

    .line 907
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingTop()I

    move-result v8

    iget v9, p0, Lmiui/widget/ScreenView;->Xf:I

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lmiui/widget/ScreenView;->Xg:I

    add-int/2addr v8, v9

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v8, v5}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v5

    .line 912
    invoke-virtual {v4, v7, v5}, Landroid/view/View;->measure(II)V

    .line 913
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 914
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    move v4, v1

    move v5, v1

    .line 919
    :goto_1
    if-ge v0, v6, :cond_1

    .line 920
    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 921
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 922
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v9, v10}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v9

    .line 925
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingTop()I

    move-result v10

    iget v11, p0, Lmiui/widget/ScreenView;->Xf:I

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lmiui/widget/ScreenView;->Xg:I

    add-int/2addr v10, v11

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v10, v8}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v8

    .line 930
    invoke-virtual {v7, v9, v8}, Landroid/view/View;->measure(II)V

    .line 931
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 932
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 919
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 935
    :cond_1
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 936
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 938
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    .line 939
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingTop()I

    move-result v3

    iget v5, p0, Lmiui/widget/ScreenView;->Xf:I

    add-int/2addr v3, v5

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    iget v5, p0, Lmiui/widget/ScreenView;->Xg:I

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    .line 941
    invoke-static {v0, p1}, Lmiui/widget/ScreenView;->resolveSize(II)I

    move-result v0

    invoke-static {v2, p2}, Lmiui/widget/ScreenView;->resolveSize(II)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lmiui/widget/ScreenView;->setMeasuredDimension(II)V

    .line 944
    if-lez v6, :cond_3

    .line 945
    iput v4, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    .line 946
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lmiui/widget/ScreenView;->Xj:I

    .line 948
    invoke-direct {p0}, Lmiui/widget/ScreenView;->eX()V

    .line 949
    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    if-lez v0, :cond_2

    .line 950
    iget v0, p0, Lmiui/widget/ScreenView;->Xj:I

    iget v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/widget/ScreenView;->Xr:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    iget v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr v0, v2

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    .line 954
    :cond_2
    iget v0, p0, Lmiui/widget/ScreenView;->Xp:F

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setOverScrollRatio(F)V

    .line 956
    :cond_3
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->LQ:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-lez v0, :cond_4

    .line 957
    iput-boolean v1, p0, Lmiui/widget/ScreenView;->LQ:Z

    .line 958
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 959
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 960
    invoke-virtual {p0, v12}, Lmiui/widget/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 962
    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1638
    iget-object v0, p0, Lmiui/widget/ScreenView;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1639
    iget-object v0, p0, Lmiui/widget/ScreenView;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 1642
    iget-object v0, p0, Lmiui/widget/ScreenView;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1644
    :cond_0
    return-void
.end method

.method protected onPinchIn(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .prologue
    .line 1890
    return-void
.end method

.method protected onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .prologue
    .line 1899
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1917
    check-cast p1, Lmiui/widget/ScreenView$SavedState;

    .line 1918
    invoke-virtual {p1}, Lmiui/widget/ScreenView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1919
    iget v0, p1, Lmiui/widget/ScreenView$SavedState;->XN:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1920
    iget v0, p1, Lmiui/widget/ScreenView$SavedState;->XN:I

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 1922
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 1631
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1910
    new-instance v0, Lmiui/widget/ScreenView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/widget/ScreenView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1911
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iput v1, v0, Lmiui/widget/ScreenView$SavedState;->XN:I

    .line 1912
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1124
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->Xw:Z

    if-eqz v0, :cond_0

    .line 1178
    :goto_0
    return v1

    .line 1127
    :cond_0
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->Xv:Z

    if-eqz v0, :cond_1

    .line 1128
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->e(Landroid/view/MotionEvent;)V

    .line 1130
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 1177
    :cond_2
    :goto_1
    :pswitch_0
    iput-boolean v1, p0, Lmiui/widget/ScreenView;->Xv:Z

    goto :goto_0

    .line 1134
    :pswitch_1
    iget v0, p0, Lmiui/widget/ScreenView;->Xu:I

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1135
    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    .line 1137
    :cond_3
    iget v0, p0, Lmiui/widget/ScreenView;->Xu:I

    if-ne v0, v1, :cond_2

    .line 1139
    iget v0, p0, Lmiui/widget/ScreenView;->qo:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1140
    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 1141
    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    .line 1142
    iget v0, p0, Lmiui/widget/ScreenView;->qo:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1144
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1145
    iget v3, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    sub-float/2addr v3, v0

    .line 1146
    iput v0, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1147
    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_5

    .line 1148
    iget v0, p0, Lmiui/widget/ScreenView;->Xz:F

    add-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lmiui/widget/ScreenView;->scrollTo(II)V

    goto :goto_1

    .line 1150
    :cond_5
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->awakenScrollBars()Z

    goto :goto_1

    .line 1156
    :pswitch_2
    iget v0, p0, Lmiui/widget/ScreenView;->Xu:I

    if-ne v0, v1, :cond_6

    .line 1157
    iget v0, p0, Lmiui/widget/ScreenView;->qo:I

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->at(I)V

    .line 1159
    :cond_6
    invoke-direct {p0, p1, v2}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 1162
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    .line 1165
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 1166
    iget v4, p0, Lmiui/widget/ScreenView;->qo:I

    if-ne v3, v4, :cond_2

    .line 1170
    if-nez v0, :cond_7

    move v0, v1

    .line 1171
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1172
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->qo:I

    .line 1173
    iget-object v0, p0, Lmiui/widget/ScreenView;->XG:Lmiui/widget/ScreenView$b;

    iget v2, p0, Lmiui/widget/ScreenView;->qo:I

    invoke-virtual {v0, v2}, Lmiui/widget/ScreenView$b;->init(I)V

    goto :goto_1

    :cond_7
    move v0, v2

    .line 1170
    goto :goto_2

    .line 1130
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

.method public removeAllScreens()V
    .locals 2

    .prologue
    .line 1541
    const/4 v0, 0x0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScreenView;->removeScreensInLayout(II)V

    .line 1542
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->requestLayout()V

    .line 1543
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->invalidate()V

    .line 1544
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 1459
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->WT:I

    iput v0, p0, Lmiui/widget/ScreenView;->Xs:I

    .line 1460
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1461
    return-void
.end method

.method protected removeIndicator(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1500
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1501
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1502
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The view passed through the parameter must be indicator."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1505
    :cond_0
    iget v1, p0, Lmiui/widget/ScreenView;->WT:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmiui/widget/ScreenView;->WT:I

    .line 1506
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1507
    return-void
.end method

.method public removeScreen(I)V
    .locals 2

    .prologue
    .line 1516
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1517
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The view specified by the index must be a screen."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1520
    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-ne p1, v0, :cond_1

    .line 1521
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->Xq:Z

    if-nez v0, :cond_3

    .line 1522
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 1530
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xb:Lmiui/widget/ScreenView$f;

    if-eqz v0, :cond_2

    .line 1531
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xb:Lmiui/widget/ScreenView$f;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$f;->removeViewAt(I)V

    .line 1533
    :cond_2
    iget v0, p0, Lmiui/widget/ScreenView;->Xs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView;->Xs:I

    .line 1534
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1535
    return-void

    .line 1524
    :cond_3
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1526
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    goto :goto_0
.end method

.method public removeScreensInLayout(II)V
    .locals 2

    .prologue
    .line 1554
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1563
    :cond_0
    :goto_0
    return-void

    .line 1557
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1558
    iget-object v1, p0, Lmiui/widget/ScreenView;->Xb:Lmiui/widget/ScreenView$f;

    if-eqz v1, :cond_2

    .line 1559
    iget-object v1, p0, Lmiui/widget/ScreenView;->Xb:Lmiui/widget/ScreenView$f;

    invoke-virtual {v1, p1, v0}, Lmiui/widget/ScreenView$f;->removeViewsInLayout(II)V

    .line 1561
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lmiui/widget/ScreenView;->Xs:I

    .line 1562
    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1413
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2

    .prologue
    .line 1443
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1423
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViews(II)V
    .locals 2

    .prologue
    .line 1453
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewsInLayout(II)V
    .locals 2

    .prologue
    .line 1433
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .prologue
    .line 997
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 998
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 999
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lmiui/widget/ScreenView;->vB:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1000
    :cond_0
    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    .line 1001
    const/4 v0, 0x1

    .line 1005
    :goto_0
    return v0

    .line 1003
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1005
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

    .line 1723
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1724
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1725
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1726
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1727
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 1728
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 1729
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 1730
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1731
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1732
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1733
    iget v0, p0, Lmiui/widget/ScreenView;->WR:F

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->a(Landroid/view/View;F)V

    .line 1734
    return-void
.end method

.method public scrollTo(II)V
    .locals 2

    .prologue
    .line 839
    iget v0, p0, Lmiui/widget/ScreenView;->Xo:I

    iget v1, p0, Lmiui/widget/ScreenView;->Xn:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 840
    int-to-float v0, v0

    iput v0, p0, Lmiui/widget/ScreenView;->Xz:F

    .line 841
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->Xy:F

    .line 842
    iget v0, p0, Lmiui/widget/ScreenView;->Xz:F

    float-to-int v0, v0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 843
    return-void
.end method

.method public scrollToScreen(I)V
    .locals 2

    .prologue
    .line 830
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->Xq:Z

    if-eqz v0, :cond_0

    .line 831
    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    .line 833
    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->Xk:I

    iget v1, p0, Lmiui/widget/ScreenView;->Xl:I

    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScreenView;->measure(II)V

    .line 834
    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, p1

    iget v1, p0, Lmiui/widget/ScreenView;->Xi:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScreenView;->scrollTo(II)V

    .line 835
    return-void
.end method

.method public setAllowLongPress(Z)V
    .locals 0

    .prologue
    .line 1577
    iput-boolean p1, p0, Lmiui/widget/ScreenView;->Xx:Z

    .line 1578
    return-void
.end method

.method public setArrowIndicatorMarginRect(Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v3, -0x2

    .line 445
    if-eqz p1, :cond_2

    .line 448
    iget-object v0, p0, Lmiui/widget/ScreenView;->WZ:Lmiui/widget/ScreenView$a;

    if-nez v0, :cond_1

    .line 449
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x13

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 453
    new-instance v1, Lmiui/widget/ScreenView$a;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lmiui/widget/ScreenView$a;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->WZ:Lmiui/widget/ScreenView$a;

    .line 454
    iget-object v1, p0, Lmiui/widget/ScreenView;->WZ:Lmiui/widget/ScreenView$a;

    iget v2, p0, Lmiui/widget/ScreenView;->WU:I

    invoke-virtual {v1, v2}, Lmiui/widget/ScreenView$a;->setImageResource(I)V

    .line 455
    iget-object v1, p0, Lmiui/widget/ScreenView;->WZ:Lmiui/widget/ScreenView$a;

    invoke-virtual {p0, v1, v0}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 456
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x15

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 460
    new-instance v2, Lmiui/widget/ScreenView$a;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lmiui/widget/ScreenView$a;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/ScreenView;->Xa:Lmiui/widget/ScreenView$a;

    .line 461
    iget-object v2, p0, Lmiui/widget/ScreenView;->Xa:Lmiui/widget/ScreenView$a;

    iget v3, p0, Lmiui/widget/ScreenView;->WW:I

    invoke-virtual {v2, v3}, Lmiui/widget/ScreenView$a;->setImageResource(I)V

    .line 462
    iget-object v2, p0, Lmiui/widget/ScreenView;->Xa:Lmiui/widget/ScreenView$a;

    invoke-virtual {p0, v2, v1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 469
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 471
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v5, v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 479
    :cond_0
    :goto_1
    return-void

    .line 464
    :cond_1
    iget-object v0, p0, Lmiui/widget/ScreenView;->WZ:Lmiui/widget/ScreenView$a;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 466
    iget-object v1, p0, Lmiui/widget/ScreenView;->Xa:Lmiui/widget/ScreenView$a;

    invoke-virtual {v1}, Lmiui/widget/ScreenView$a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_0

    .line 473
    :cond_2
    iget-object v0, p0, Lmiui/widget/ScreenView;->WZ:Lmiui/widget/ScreenView$a;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lmiui/widget/ScreenView;->WZ:Lmiui/widget/ScreenView$a;

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 475
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xa:Lmiui/widget/ScreenView$a;

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 476
    iput-object v1, p0, Lmiui/widget/ScreenView;->WZ:Lmiui/widget/ScreenView$a;

    .line 477
    iput-object v1, p0, Lmiui/widget/ScreenView;->Xa:Lmiui/widget/ScreenView$a;

    goto :goto_1
.end method

.method public setArrowIndicatorResource(IIII)V
    .locals 0

    .prologue
    .line 488
    iput p1, p0, Lmiui/widget/ScreenView;->WU:I

    .line 489
    iput p2, p0, Lmiui/widget/ScreenView;->WV:I

    .line 490
    iput p3, p0, Lmiui/widget/ScreenView;->WW:I

    .line 491
    iput p4, p0, Lmiui/widget/ScreenView;->WX:I

    .line 492
    return-void
.end method

.method public setConfirmHorizontalScrollRatio(F)V
    .locals 0

    .prologue
    .line 389
    iput p1, p0, Lmiui/widget/ScreenView;->XA:F

    .line 390
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1334
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->Xq:Z

    if-eqz v0, :cond_2

    .line 1335
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1337
    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int v1, v0, v1

    sub-int/2addr v0, v1

    .line 1342
    :goto_0
    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->au(I)V

    .line 1343
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->LQ:Z

    if-nez v0, :cond_1

    .line 1344
    iget-object v0, p0, Lmiui/widget/ScreenView;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1345
    iget-object v0, p0, Lmiui/widget/ScreenView;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1347
    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->scrollToScreen(I)V

    .line 1348
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->invalidate()V

    .line 1350
    :cond_1
    return-void

    .line 1339
    :cond_2
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public setIndicatorBarVisibility(I)V
    .locals 0

    .prologue
    .line 599
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setSeekBarVisibility(I)V

    .line 600
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setSlideBarVisibility(I)V

    .line 601
    return-void
.end method

.method public setMaximumSnapVelocity(I)V
    .locals 0

    .prologue
    .line 408
    iput p1, p0, Lmiui/widget/ScreenView;->qt:I

    .line 409
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .prologue
    .line 1588
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    .line 1589
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1590
    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1589
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1592
    :cond_0
    return-void
.end method

.method public setOverScrollRatio(F)V
    .locals 0

    .prologue
    .line 796
    iput p1, p0, Lmiui/widget/ScreenView;->Xp:F

    .line 797
    invoke-direct {p0}, Lmiui/widget/ScreenView;->eY()V

    .line 798
    return-void
.end method

.method public setOvershootTension(F)V
    .locals 1

    .prologue
    .line 366
    iput p1, p0, Lmiui/widget/ScreenView;->XE:F

    .line 367
    iget-object v0, p0, Lmiui/widget/ScreenView;->XC:Lmiui/widget/ScreenView$e;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lmiui/widget/ScreenView;->XC:Lmiui/widget/ScreenView$e;

    invoke-static {v0, p1}, Lmiui/widget/ScreenView$e;->a(Lmiui/widget/ScreenView$e;F)F

    .line 370
    :cond_0
    return-void
.end method

.method public setScreenAlignment(I)V
    .locals 0

    .prologue
    .line 658
    iput p1, p0, Lmiui/widget/ScreenView;->Xh:I

    .line 659
    return-void
.end method

.method public setScreenOffset(I)V
    .locals 1

    .prologue
    .line 670
    iput p1, p0, Lmiui/widget/ScreenView;->mScreenOffset:I

    .line 671
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->Xh:I

    .line 672
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->requestLayout()V

    .line 673
    return-void
.end method

.method public setScreenPadding(Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 639
    if-nez p1, :cond_0

    .line 640
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The padding parameter can not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lmiui/widget/ScreenView;->Xf:I

    .line 644
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lmiui/widget/ScreenView;->Xg:I

    .line 645
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0, v2, v1, v2}, Lmiui/widget/ScreenView;->setPadding(IIII)V

    .line 646
    return-void
.end method

.method public setScreenSnapDuration(I)V
    .locals 0

    .prologue
    .line 398
    iput p1, p0, Lmiui/widget/ScreenView;->XB:I

    .line 399
    return-void
.end method

.method public setScreenTransitionType(I)V
    .locals 6

    .prologue
    const/16 v5, 0x12c

    const/16 v4, 0x10e

    const/16 v3, 0x14a

    const v2, 0x3fa66666    # 1.3f

    const/4 v1, 0x0

    .line 1672
    iget v0, p0, Lmiui/widget/ScreenView;->XD:I

    if-eq p1, v0, :cond_0

    .line 1673
    iput p1, p0, Lmiui/widget/ScreenView;->XD:I

    .line 1674
    iget v0, p0, Lmiui/widget/ScreenView;->XD:I

    packed-switch v0, :pswitch_data_0

    .line 1715
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1676
    :pswitch_1
    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1677
    invoke-virtual {p0, v5}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1681
    :pswitch_2
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1682
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1686
    :pswitch_3
    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1687
    invoke-virtual {p0, v5}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1690
    :pswitch_4
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1691
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1695
    :pswitch_5
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1696
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1702
    :pswitch_6
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1703
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1707
    :pswitch_7
    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1708
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1674
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setScrollWholeScreen(Z)V
    .locals 0

    .prologue
    .line 418
    iput-boolean p1, p0, Lmiui/widget/ScreenView;->Xq:Z

    .line 419
    return-void
.end method

.method public setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 509
    if-eqz p1, :cond_3

    .line 510
    iget-object v1, p0, Lmiui/widget/ScreenView;->Xb:Lmiui/widget/ScreenView$f;

    if-nez v1, :cond_2

    .line 511
    new-instance v1, Lmiui/widget/ScreenView$f;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lmiui/widget/ScreenView$f;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->Xb:Lmiui/widget/ScreenView$f;

    .line 512
    iget-object v1, p0, Lmiui/widget/ScreenView;->Xb:Lmiui/widget/ScreenView$f;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lmiui/widget/ScreenView$f;->setGravity(I)V

    .line 513
    iget-object v1, p0, Lmiui/widget/ScreenView;->Xb:Lmiui/widget/ScreenView$f;

    invoke-virtual {v1, v0}, Lmiui/widget/ScreenView$f;->setAnimationCacheEnabled(Z)V

    .line 514
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 515
    iget-object v1, p0, Lmiui/widget/ScreenView;->Xb:Lmiui/widget/ScreenView$f;

    invoke-direct {p0}, Lmiui/widget/ScreenView;->eZ()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lmiui/widget/ScreenView;->WG:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Lmiui/widget/ScreenView$f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xb:Lmiui/widget/ScreenView$f;

    invoke-virtual {p0, v0, p1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 525
    :cond_1
    :goto_1
    return-void

    .line 519
    :cond_2
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xb:Lmiui/widget/ScreenView$f;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 521
    :cond_3
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xb:Lmiui/widget/ScreenView$f;

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xb:Lmiui/widget/ScreenView$f;

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/ScreenView;->Xb:Lmiui/widget/ScreenView$f;

    goto :goto_1
.end method

.method public setSeekBarVisibility(I)V
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xb:Lmiui/widget/ScreenView$f;

    if-nez v0, :cond_0

    .line 616
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xb:Lmiui/widget/ScreenView$f;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$f;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSeekPointResource(I)V
    .locals 0

    .prologue
    .line 499
    iput p1, p0, Lmiui/widget/ScreenView;->WY:I

    .line 500
    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3

    .prologue
    .line 534
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_slide_bar:I

    sget v1, Lcom/miui/internal/R$drawable;->screen_view_slide_bar_bg:I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmiui/widget/ScreenView;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V

    .line 536
    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 546
    iput-boolean p4, p0, Lmiui/widget/ScreenView;->Xd:Z

    .line 547
    if-eqz p1, :cond_2

    .line 548
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xc:Lmiui/widget/ScreenView$g;

    if-nez v0, :cond_1

    .line 549
    new-instance v0, Lmiui/widget/ScreenView$g;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p3}, Lmiui/widget/ScreenView$g;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;II)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->Xc:Lmiui/widget/ScreenView$g;

    .line 551
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xc:Lmiui/widget/ScreenView$g;

    new-instance v1, Lmiui/widget/ScreenView$h;

    invoke-direct {v1, p0, v2}, Lmiui/widget/ScreenView$h;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$g;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 552
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xc:Lmiui/widget/ScreenView$g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$g;->setAnimationCacheEnabled(Z)V

    .line 553
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xc:Lmiui/widget/ScreenView$g;

    invoke-virtual {p0, v0, p1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xc:Lmiui/widget/ScreenView$g;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 557
    :cond_2
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xc:Lmiui/widget/ScreenView$g;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xc:Lmiui/widget/ScreenView$g;

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 559
    iput-object v2, p0, Lmiui/widget/ScreenView;->Xc:Lmiui/widget/ScreenView$g;

    goto :goto_0
.end method

.method public setSlideBarVisibility(I)V
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xc:Lmiui/widget/ScreenView$g;

    if-nez v0, :cond_0

    .line 631
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->Xc:Lmiui/widget/ScreenView$g;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$g;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTouchSlop(I)V
    .locals 0

    .prologue
    .line 379
    iput p1, p0, Lmiui/widget/ScreenView;->fy:I

    .line 380
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .prologue
    .line 887
    if-nez p1, :cond_0

    .line 888
    invoke-direct {p0}, Lmiui/widget/ScreenView;->eV()V

    .line 890
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 891
    return-void
.end method

.method public setVisibleExtentionRatio(F)V
    .locals 0

    .prologue
    .line 807
    iput p1, p0, Lmiui/widget/ScreenView;->Xr:F

    .line 808
    return-void
.end method

.method protected snapByVelocity(II)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1199
    if-ne p2, v1, :cond_0

    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-lez v0, :cond_0

    .line 1200
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0, p1, v1}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    .line 1213
    :goto_0
    return-void

    .line 1201
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 1203
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, p1, v1}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .line 1204
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 1205
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0, p1, v1}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .line 1207
    :cond_2
    iget v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    iget-boolean v0, p0, Lmiui/widget/ScreenView;->Xq:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    :goto_1
    mul-int/2addr v0, v2

    .line 1209
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v2

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    iget v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr v0, v2

    .line 1211
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1207
    goto :goto_1
.end method

.method public snapToScreen(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1221
    invoke-virtual {p0, p1, v0, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    .line 1222
    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 1

    .prologue
    .line 1297
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V

    .line 1298
    return-void
.end method

.method protected snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1245
    iget v0, p0, Lmiui/widget/ScreenView;->Xj:I

    if-gtz v0, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1248
    :cond_1
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->Xq:Z

    if-eqz v0, :cond_6

    .line 1249
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->Xm:I

    .line 1251
    iget v0, p0, Lmiui/widget/ScreenView;->Xm:I

    iget v1, p0, Lmiui/widget/ScreenView;->Xm:I

    iget v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int/2addr v1, v3

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->Xm:I

    .line 1256
    :goto_1
    iget v0, p0, Lmiui/widget/ScreenView;->Xm:I

    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1258
    iget-object v0, p0, Lmiui/widget/ScreenView;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1259
    iget-object v0, p0, Lmiui/widget/ScreenView;->XF:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    if-eqz v0, :cond_2

    .line 1260
    iget-object v0, p0, Lmiui/widget/ScreenView;->XF:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    invoke-interface {v0, p0}, Lmiui/widget/ScreenView$SnapScreenOnceNotification;->onSnapCancelled(Lmiui/widget/ScreenView;)V

    .line 1262
    :cond_2
    iget-object v0, p0, Lmiui/widget/ScreenView;->vB:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1264
    :cond_3
    iput-object p4, p0, Lmiui/widget/ScreenView;->XF:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    .line 1265
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 1266
    if-eqz p3, :cond_7

    .line 1267
    iget-object v0, p0, Lmiui/widget/ScreenView;->XC:Lmiui/widget/ScreenView$e;

    invoke-virtual {v0, v1, v4}, Lmiui/widget/ScreenView$e;->m(II)V

    .line 1271
    :goto_2
    iget v0, p0, Lmiui/widget/ScreenView;->Xm:I

    iget v3, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, v3

    iget v3, p0, Lmiui/widget/ScreenView;->Xi:I

    sub-int/2addr v0, v3

    .line 1272
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v3

    sub-int v3, v0, v3

    .line 1273
    if-eqz v3, :cond_0

    .line 1276
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v5, p0, Lmiui/widget/ScreenView;->XB:I

    mul-int/2addr v0, v5

    iget v5, p0, Lmiui/widget/ScreenView;->Xj:I

    div-int/2addr v0, v5

    .line 1277
    if-lez v4, :cond_4

    .line 1278
    int-to-float v5, v0

    int-to-float v4, v4

    const v6, 0x451c4000    # 2500.0f

    div-float/2addr v4, v6

    div-float v4, v5, v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v0, v4

    .line 1281
    :cond_4
    iget v4, p0, Lmiui/widget/ScreenView;->XB:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1282
    if-gt v1, v7, :cond_5

    .line 1283
    iget v0, p0, Lmiui/widget/ScreenView;->XB:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1285
    :cond_5
    iget-object v0, p0, Lmiui/widget/ScreenView;->vB:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1286
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->invalidate()V

    goto/16 :goto_0

    .line 1253
    :cond_6
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->Xm:I

    goto/16 :goto_1

    .line 1269
    :cond_7
    iget-object v0, p0, Lmiui/widget/ScreenView;->XC:Lmiui/widget/ScreenView$e;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$e;->fb()V

    goto :goto_2
.end method

.method public snapToScreen(ILmiui/widget/ScreenView$SnapScreenOnceNotification;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1232
    invoke-virtual {p0, p1, v0, v0, p2}, Lmiui/widget/ScreenView;->snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V

    .line 1233
    return-void
.end method

.method protected updateChildStaticTransformationByScreen(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1881
    return-void
.end method
