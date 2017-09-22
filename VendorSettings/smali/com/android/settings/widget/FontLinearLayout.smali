.class public Lcom/android/settings/widget/FontLinearLayout;
.super Landroid/widget/LinearLayout;
.source "FontLinearLayout.java"


# instance fields
.field private axY:F

.field private axZ:F

.field private aya:Z

.field private ayb:I

.field private ayc:Lcom/android/settings/widget/j;

.field private mScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/FontLinearLayout;->ayb:I

    .line 28
    return-void
.end method

.method private g(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 53
    iget v0, p0, Lcom/android/settings/widget/FontLinearLayout;->axZ:F

    iget v1, p0, Lcom/android/settings/widget/FontLinearLayout;->axY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/FontLinearLayout;->ayb:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/widget/FontLinearLayout;->getWidth()I

    move-result v0

    .line 55
    iget v1, p0, Lcom/android/settings/widget/FontLinearLayout;->mPaddingLeft:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/android/settings/widget/FontLinearLayout;->mPaddingRight:I

    sub-int/2addr v1, v2

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 58
    iget v3, p0, Lcom/android/settings/widget/FontLinearLayout;->mPaddingLeft:I

    if-ge v2, v3, :cond_1

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/FontLinearLayout;->mScale:F

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget v3, p0, Lcom/android/settings/widget/FontLinearLayout;->mPaddingRight:I

    sub-int/2addr v0, v3

    if-le v2, v0, :cond_2

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/widget/FontLinearLayout;->mScale:F

    goto :goto_0

    .line 63
    :cond_2
    iget v0, p0, Lcom/android/settings/widget/FontLinearLayout;->mPaddingLeft:I

    sub-int v0, v2, v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/FontLinearLayout;->mScale:F

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/settings/widget/j;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/widget/FontLinearLayout;->ayc:Lcom/android/settings/widget/j;

    .line 85
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/FontLinearLayout;->aya:Z

    .line 73
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/FontLinearLayout;->aya:Z

    .line 81
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 49
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 34
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/FontLinearLayout;->axY:F

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/widget/FontLinearLayout;->onStartTrackingTouch()V

    goto :goto_0

    .line 39
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/widget/FontLinearLayout;->aya:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/FontLinearLayout;->axZ:F

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/widget/FontLinearLayout;->g(Landroid/view/MotionEvent;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/widget/FontLinearLayout;->onStopTrackingTouch()V

    .line 43
    iget-object v0, p0, Lcom/android/settings/widget/FontLinearLayout;->ayc:Lcom/android/settings/widget/j;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/settings/widget/FontLinearLayout;->ayc:Lcom/android/settings/widget/j;

    iget v1, p0, Lcom/android/settings/widget/FontLinearLayout;->mScale:F

    invoke-interface {v0, p0, v1}, Lcom/android/settings/widget/j;->a(Lcom/android/settings/widget/FontLinearLayout;F)V

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
