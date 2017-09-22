.class Lcom/android/vendorsettings/widget/r;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field final synthetic ayV:Lcom/android/vendorsettings/widget/ScreenView;


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/widget/ScreenView;)V
    .locals 0

    .prologue
    .line 2270
    iput-object p1, p0, Lcom/android/vendorsettings/widget/r;->ayV:Lcom/android/vendorsettings/widget/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/widget/ScreenView;Lcom/android/vendorsettings/widget/l;)V
    .locals 0

    .prologue
    .line 2270
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/widget/r;-><init>(Lcom/android/vendorsettings/widget/ScreenView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 2290
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 2291
    iget-object v2, p0, Lcom/android/vendorsettings/widget/r;->ayV:Lcom/android/vendorsettings/widget/ScreenView;

    invoke-static {v2}, Lcom/android/vendorsettings/widget/ScreenView;->d(Lcom/android/vendorsettings/widget/ScreenView;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x43480000    # 200.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    const v2, 0x3f733333    # 0.95f

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_0

    const v2, 0x3f86bca2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 2295
    :cond_0
    iget-object v2, p0, Lcom/android/vendorsettings/widget/r;->ayV:Lcom/android/vendorsettings/widget/ScreenView;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lcom/android/vendorsettings/widget/ScreenView;->a(Lcom/android/vendorsettings/widget/ScreenView;Landroid/view/MotionEvent;I)V

    .line 2297
    :cond_1
    const v2, 0x3f4ccccd    # 0.8f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    .line 2298
    iget-object v1, p0, Lcom/android/vendorsettings/widget/r;->ayV:Lcom/android/vendorsettings/widget/ScreenView;

    invoke-virtual {v1, p1}, Lcom/android/vendorsettings/widget/ScreenView;->onPinchIn(Landroid/view/ScaleGestureDetector;)V

    .line 2305
    :goto_0
    return v0

    .line 2301
    :cond_2
    const v2, 0x3f99999a    # 1.2f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 2302
    iget-object v1, p0, Lcom/android/vendorsettings/widget/r;->ayV:Lcom/android/vendorsettings/widget/ScreenView;

    invoke-virtual {v1, p1}, Lcom/android/vendorsettings/widget/ScreenView;->onPinchOut(Landroid/view/ScaleGestureDetector;)V

    goto :goto_0

    .line 2305
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/android/vendorsettings/widget/r;->ayV:Lcom/android/vendorsettings/widget/ScreenView;

    invoke-static {v0}, Lcom/android/vendorsettings/widget/ScreenView;->d(Lcom/android/vendorsettings/widget/ScreenView;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/android/vendorsettings/widget/r;->ayV:Lcom/android/vendorsettings/widget/ScreenView;

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/ScreenView;->finishCurrentGesture()V

    .line 2287
    return-void
.end method
