.class public Lmiui/maml/animation/interpolater/ExpoEaseInOutInterpolater;
.super Ljava/lang/Object;
.source "ExpoEaseInOutInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .param p1, "t"    # F

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    cmpl-float v2, p1, v0

    if-nez v2, :cond_0

    .line 14
    :goto_0
    return v0

    .line 10
    :cond_0
    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    .line 13
    const/high16 v0, 0x41200000    # 10.0f

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v3

    goto :goto_0

    .line 14
    :cond_2
    const/high16 v0, -0x3ee00000    # -10.0f

    sub-float/2addr p1, v1

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    add-double/2addr v0, v4

    double-to-float v0, v0

    mul-float/2addr v0, v3

    goto :goto_0
.end method
