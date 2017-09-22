.class Lcom/android/vendorsettings/widget/o;
.super Ljava/lang/Object;
.source "ScreenView.java"


# instance fields
.field final synthetic ayV:Lcom/android/vendorsettings/widget/ScreenView;

.field private ayW:Landroid/view/VelocityTracker;

.field private ayX:I

.field private ayY:F

.field private ayZ:F

.field private aza:F


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/widget/ScreenView;)V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 1990
    iput-object p1, p0, Lcom/android/vendorsettings/widget/o;->ayV:Lcom/android/vendorsettings/widget/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1996
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/widget/o;->ayX:I

    .line 1998
    iput v1, p0, Lcom/android/vendorsettings/widget/o;->ayY:F

    .line 2000
    iput v1, p0, Lcom/android/vendorsettings/widget/o;->ayZ:F

    .line 2002
    iput v1, p0, Lcom/android/vendorsettings/widget/o;->aza:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/widget/ScreenView;Lcom/android/vendorsettings/widget/l;)V
    .locals 0

    .prologue
    .line 1990
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/widget/o;-><init>(Lcom/android/vendorsettings/widget/ScreenView;)V

    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 2056
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/widget/o;->ayX:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/vendorsettings/widget/o;->ayY:F

    iput v0, p0, Lcom/android/vendorsettings/widget/o;->ayZ:F

    iput v0, p0, Lcom/android/vendorsettings/widget/o;->aza:F

    .line 2057
    return-void
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2013
    iget-object v0, p0, Lcom/android/vendorsettings/widget/o;->ayW:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2014
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/widget/o;->ayW:Landroid/view/VelocityTracker;

    .line 2016
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/widget/o;->ayW:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2017
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2018
    iget v1, p0, Lcom/android/vendorsettings/widget/o;->ayX:I

    if-eq v1, v3, :cond_1

    .line 2019
    iget v1, p0, Lcom/android/vendorsettings/widget/o;->ayX:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 2020
    if-eq v1, v3, :cond_2

    .line 2021
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 2026
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/vendorsettings/widget/o;->ayY:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 2027
    iput v0, p0, Lcom/android/vendorsettings/widget/o;->ayY:F

    .line 2053
    :goto_1
    return-void

    .line 2023
    :cond_2
    iput v3, p0, Lcom/android/vendorsettings/widget/o;->ayX:I

    goto :goto_0

    .line 2030
    :cond_3
    iget v1, p0, Lcom/android/vendorsettings/widget/o;->aza:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 2031
    iput v0, p0, Lcom/android/vendorsettings/widget/o;->aza:F

    goto :goto_1

    .line 2034
    :cond_4
    iget v1, p0, Lcom/android/vendorsettings/widget/o;->ayZ:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    .line 2035
    iget v1, p0, Lcom/android/vendorsettings/widget/o;->aza:F

    iget v2, p0, Lcom/android/vendorsettings/widget/o;->ayY:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    iget v1, p0, Lcom/android/vendorsettings/widget/o;->aza:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_6

    :cond_5
    iget v1, p0, Lcom/android/vendorsettings/widget/o;->aza:F

    iget v2, p0, Lcom/android/vendorsettings/widget/o;->ayY:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    iget v1, p0, Lcom/android/vendorsettings/widget/o;->aza:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_7

    .line 2037
    :cond_6
    iget v1, p0, Lcom/android/vendorsettings/widget/o;->ayY:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_7

    .line 2038
    iget v1, p0, Lcom/android/vendorsettings/widget/o;->aza:F

    iput v1, p0, Lcom/android/vendorsettings/widget/o;->ayZ:F

    .line 2052
    :cond_7
    :goto_2
    iput v0, p0, Lcom/android/vendorsettings/widget/o;->aza:F

    goto :goto_1

    .line 2042
    :cond_8
    iget v1, p0, Lcom/android/vendorsettings/widget/o;->ayZ:F

    iget v2, p0, Lcom/android/vendorsettings/widget/o;->aza:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    .line 2043
    iget v1, p0, Lcom/android/vendorsettings/widget/o;->aza:F

    iget v2, p0, Lcom/android/vendorsettings/widget/o;->ayZ:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    iget v1, p0, Lcom/android/vendorsettings/widget/o;->aza:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_a

    :cond_9
    iget v1, p0, Lcom/android/vendorsettings/widget/o;->aza:F

    iget v2, p0, Lcom/android/vendorsettings/widget/o;->ayZ:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    iget v1, p0, Lcom/android/vendorsettings/widget/o;->aza:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_7

    .line 2045
    :cond_a
    iget v1, p0, Lcom/android/vendorsettings/widget/o;->ayZ:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_7

    .line 2046
    iget v1, p0, Lcom/android/vendorsettings/widget/o;->ayZ:F

    iput v1, p0, Lcom/android/vendorsettings/widget/o;->ayY:F

    .line 2047
    iget v1, p0, Lcom/android/vendorsettings/widget/o;->aza:F

    iput v1, p0, Lcom/android/vendorsettings/widget/o;->ayZ:F

    goto :goto_2
.end method

.method public getFlingDirection(F)I
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x3

    .line 2075
    const/high16 v3, 0x43960000    # 300.0f

    cmpl-float v3, p1, v3

    if-lez v3, :cond_6

    .line 2076
    iget v3, p0, Lcom/android/vendorsettings/widget/o;->ayZ:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 2077
    iget v2, p0, Lcom/android/vendorsettings/widget/o;->aza:F

    iget v3, p0, Lcom/android/vendorsettings/widget/o;->ayY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 2093
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2077
    goto :goto_0

    .line 2079
    :cond_2
    iget v3, p0, Lcom/android/vendorsettings/widget/o;->aza:F

    iget v4, p0, Lcom/android/vendorsettings/widget/o;->ayZ:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 2080
    iget-object v0, p0, Lcom/android/vendorsettings/widget/o;->ayV:Lcom/android/vendorsettings/widget/ScreenView;

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/ScreenView;->getScrollX()I

    move-result v0

    iget-object v3, p0, Lcom/android/vendorsettings/widget/o;->ayV:Lcom/android/vendorsettings/widget/ScreenView;

    invoke-virtual {v3}, Lcom/android/vendorsettings/widget/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v0, v3, :cond_3

    move v0, v2

    .line 2081
    goto :goto_0

    :cond_3
    move v0, v1

    .line 2083
    goto :goto_0

    .line 2085
    :cond_4
    iget v1, p0, Lcom/android/vendorsettings/widget/o;->aza:F

    iget v3, p0, Lcom/android/vendorsettings/widget/o;->ayZ:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    .line 2086
    iget-object v1, p0, Lcom/android/vendorsettings/widget/o;->ayV:Lcom/android/vendorsettings/widget/ScreenView;

    invoke-virtual {v1}, Lcom/android/vendorsettings/widget/ScreenView;->getScrollX()I

    move-result v1

    iget-object v3, p0, Lcom/android/vendorsettings/widget/o;->ayV:Lcom/android/vendorsettings/widget/ScreenView;

    invoke-virtual {v3}, Lcom/android/vendorsettings/widget/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-le v1, v3, :cond_0

    move v0, v2

    .line 2087
    goto :goto_0

    :cond_5
    move v0, v2

    .line 2091
    goto :goto_0

    .line 2093
    :cond_6
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getXVelocity(III)F
    .locals 2

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/android/vendorsettings/widget/o;->ayW:Landroid/view/VelocityTracker;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2071
    iget-object v0, p0, Lcom/android/vendorsettings/widget/o;->ayW:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    return v0
.end method

.method public init(I)V
    .locals 1

    .prologue
    .line 2060
    iget-object v0, p0, Lcom/android/vendorsettings/widget/o;->ayW:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2061
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/widget/o;->ayW:Landroid/view/VelocityTracker;

    .line 2065
    :goto_0
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/o;->reset()V

    .line 2066
    iput p1, p0, Lcom/android/vendorsettings/widget/o;->ayX:I

    .line 2067
    return-void

    .line 2063
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/widget/o;->ayW:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/vendorsettings/widget/o;->ayW:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2006
    iget-object v0, p0, Lcom/android/vendorsettings/widget/o;->ayW:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2007
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/widget/o;->ayW:Landroid/view/VelocityTracker;

    .line 2009
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/widget/o;->reset()V

    .line 2010
    return-void
.end method
