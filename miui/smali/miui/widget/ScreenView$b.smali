.class Lmiui/widget/ScreenView$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# static fields
.field private static final XI:F = 3.0f


# instance fields
.field final synthetic XH:Lmiui/widget/ScreenView;

.field private XJ:I

.field private XK:F

.field private XL:F

.field private XM:F

.field private qC:Landroid/view/VelocityTracker;


# direct methods
.method private constructor <init>(Lmiui/widget/ScreenView;)V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 1992
    iput-object p1, p0, Lmiui/widget/ScreenView$b;->XH:Lmiui/widget/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1998
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView$b;->XJ:I

    .line 2000
    iput v1, p0, Lmiui/widget/ScreenView$b;->XK:F

    .line 2002
    iput v1, p0, Lmiui/widget/ScreenView$b;->XL:F

    .line 2004
    iput v1, p0, Lmiui/widget/ScreenView$b;->XM:F

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V
    .locals 0

    .prologue
    .line 1992
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView$b;-><init>(Lmiui/widget/ScreenView;)V

    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 2058
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView$b;->XJ:I

    int-to-float v0, v0

    iput v0, p0, Lmiui/widget/ScreenView$b;->XK:F

    iput v0, p0, Lmiui/widget/ScreenView$b;->XL:F

    iput v0, p0, Lmiui/widget/ScreenView$b;->XM:F

    .line 2059
    return-void
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2015
    iget-object v0, p0, Lmiui/widget/ScreenView$b;->qC:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2016
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ScreenView$b;->qC:Landroid/view/VelocityTracker;

    .line 2018
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView$b;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2019
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2020
    iget v1, p0, Lmiui/widget/ScreenView$b;->XJ:I

    if-eq v1, v3, :cond_1

    .line 2021
    iget v1, p0, Lmiui/widget/ScreenView$b;->XJ:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 2022
    if-eq v1, v3, :cond_2

    .line 2023
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 2028
    :cond_1
    :goto_0
    iget v1, p0, Lmiui/widget/ScreenView$b;->XK:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 2029
    iput v0, p0, Lmiui/widget/ScreenView$b;->XK:F

    .line 2055
    :goto_1
    return-void

    .line 2025
    :cond_2
    iput v3, p0, Lmiui/widget/ScreenView$b;->XJ:I

    goto :goto_0

    .line 2032
    :cond_3
    iget v1, p0, Lmiui/widget/ScreenView$b;->XM:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 2033
    iput v0, p0, Lmiui/widget/ScreenView$b;->XM:F

    goto :goto_1

    .line 2036
    :cond_4
    iget v1, p0, Lmiui/widget/ScreenView$b;->XL:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    .line 2037
    iget v1, p0, Lmiui/widget/ScreenView$b;->XM:F

    iget v2, p0, Lmiui/widget/ScreenView$b;->XK:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    iget v1, p0, Lmiui/widget/ScreenView$b;->XM:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_6

    :cond_5
    iget v1, p0, Lmiui/widget/ScreenView$b;->XM:F

    iget v2, p0, Lmiui/widget/ScreenView$b;->XK:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    iget v1, p0, Lmiui/widget/ScreenView$b;->XM:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_7

    .line 2039
    :cond_6
    iget v1, p0, Lmiui/widget/ScreenView$b;->XK:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_7

    .line 2040
    iget v1, p0, Lmiui/widget/ScreenView$b;->XM:F

    iput v1, p0, Lmiui/widget/ScreenView$b;->XL:F

    .line 2054
    :cond_7
    :goto_2
    iput v0, p0, Lmiui/widget/ScreenView$b;->XM:F

    goto :goto_1

    .line 2044
    :cond_8
    iget v1, p0, Lmiui/widget/ScreenView$b;->XL:F

    iget v2, p0, Lmiui/widget/ScreenView$b;->XM:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    .line 2045
    iget v1, p0, Lmiui/widget/ScreenView$b;->XM:F

    iget v2, p0, Lmiui/widget/ScreenView$b;->XL:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    iget v1, p0, Lmiui/widget/ScreenView$b;->XM:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_a

    :cond_9
    iget v1, p0, Lmiui/widget/ScreenView$b;->XM:F

    iget v2, p0, Lmiui/widget/ScreenView$b;->XL:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    iget v1, p0, Lmiui/widget/ScreenView$b;->XM:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_7

    .line 2047
    :cond_a
    iget v1, p0, Lmiui/widget/ScreenView$b;->XL:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_7

    .line 2048
    iget v1, p0, Lmiui/widget/ScreenView$b;->XL:F

    iput v1, p0, Lmiui/widget/ScreenView$b;->XK:F

    .line 2049
    iget v1, p0, Lmiui/widget/ScreenView$b;->XM:F

    iput v1, p0, Lmiui/widget/ScreenView$b;->XL:F

    goto :goto_2
.end method

.method public f(F)I
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x3

    .line 2077
    const/high16 v3, 0x43960000    # 300.0f

    cmpl-float v3, p1, v3

    if-lez v3, :cond_6

    .line 2078
    iget v3, p0, Lmiui/widget/ScreenView$b;->XL:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 2079
    iget v2, p0, Lmiui/widget/ScreenView$b;->XM:F

    iget v3, p0, Lmiui/widget/ScreenView$b;->XK:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 2095
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2079
    goto :goto_0

    .line 2081
    :cond_2
    iget v3, p0, Lmiui/widget/ScreenView$b;->XM:F

    iget v4, p0, Lmiui/widget/ScreenView$b;->XL:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 2082
    iget-object v0, p0, Lmiui/widget/ScreenView$b;->XH:Lmiui/widget/ScreenView;

    invoke-virtual {v0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v0

    iget-object v3, p0, Lmiui/widget/ScreenView$b;->XH:Lmiui/widget/ScreenView;

    invoke-virtual {v3}, Lmiui/widget/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v0, v3, :cond_3

    move v0, v2

    .line 2083
    goto :goto_0

    :cond_3
    move v0, v1

    .line 2085
    goto :goto_0

    .line 2087
    :cond_4
    iget v1, p0, Lmiui/widget/ScreenView$b;->XM:F

    iget v3, p0, Lmiui/widget/ScreenView$b;->XL:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    .line 2088
    iget-object v1, p0, Lmiui/widget/ScreenView$b;->XH:Lmiui/widget/ScreenView;

    invoke-virtual {v1}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v1

    iget-object v3, p0, Lmiui/widget/ScreenView$b;->XH:Lmiui/widget/ScreenView;

    invoke-virtual {v3}, Lmiui/widget/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-le v1, v3, :cond_0

    move v0, v2

    .line 2089
    goto :goto_0

    :cond_5
    move v0, v2

    .line 2093
    goto :goto_0

    .line 2095
    :cond_6
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public init(I)V
    .locals 1

    .prologue
    .line 2062
    iget-object v0, p0, Lmiui/widget/ScreenView$b;->qC:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2063
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ScreenView$b;->qC:Landroid/view/VelocityTracker;

    .line 2067
    :goto_0
    invoke-direct {p0}, Lmiui/widget/ScreenView$b;->reset()V

    .line 2068
    iput p1, p0, Lmiui/widget/ScreenView$b;->XJ:I

    .line 2069
    return-void

    .line 2065
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView$b;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method public k(III)F
    .locals 2

    .prologue
    .line 2072
    iget-object v0, p0, Lmiui/widget/ScreenView$b;->qC:Landroid/view/VelocityTracker;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2073
    iget-object v0, p0, Lmiui/widget/ScreenView$b;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 2007
    iget-object v0, p0, Lmiui/widget/ScreenView$b;->qC:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2008
    iget-object v0, p0, Lmiui/widget/ScreenView$b;->qC:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2009
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/ScreenView$b;->qC:Landroid/view/VelocityTracker;

    .line 2011
    :cond_0
    invoke-direct {p0}, Lmiui/widget/ScreenView$b;->reset()V

    .line 2012
    return-void
.end method
