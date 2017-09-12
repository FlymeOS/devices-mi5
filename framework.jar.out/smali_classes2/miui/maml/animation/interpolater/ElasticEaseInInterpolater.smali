.class public Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;
.super Ljava/lang/Object;
.source "ElasticEaseInInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mAmplitude:F

.field private mPriod:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;->mAmplitude:F

    .line 13
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "priod"    # F
    .param p2, "amplitude"    # F

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    .line 17
    iput p2, p0, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;->mAmplitude:F

    .line 18
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 10
    .param p1, "t"    # F

    .prologue
    const/4 v2, 0x0

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    const/high16 v3, 0x3f800000    # 1.0f

    .line 21
    iget v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;->mAmplitude:F

    .line 24
    .local v0, "a":F
    cmpl-float v4, p1, v2

    if-nez v4, :cond_0

    .line 35
    :goto_0
    return v2

    .line 26
    :cond_0
    cmpl-float v2, p1, v3

    if-nez v2, :cond_1

    move v2, v3

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    cmpg-float v2, v0, v3

    if-gez v2, :cond_2

    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    iget v2, p0, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    const/high16 v4, 0x40800000    # 4.0f

    div-float v1, v2, v4

    .line 35
    .local v1, "s":F
    :goto_1
    float-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/high16 v2, 0x41200000    # 10.0f

    sub-float/2addr p1, v3

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v4

    sub-float v4, p1, v1

    float-to-double v4, v4

    mul-double/2addr v4, v8

    iget v6, p0, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    neg-float v2, v2

    goto :goto_0

    .line 33
    .end local v1    # "s":F
    :cond_2
    iget v2, p0, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    float-to-double v4, v2

    div-double/2addr v4, v8

    div-float v2, v3, v0

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v1, v4

    .restart local v1    # "s":F
    goto :goto_1
.end method
