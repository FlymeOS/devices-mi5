.class public Lmiui/view/animation/ElasticEaseInOutInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final Mn:F

.field private final Mo:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0, v0}, Lmiui/view/animation/ElasticEaseInOutInterpolator;-><init>(FF)V

    .line 22
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lmiui/view/animation/ElasticEaseInOutInterpolator;->Mn:F

    .line 30
    iput p2, p0, Lmiui/view/animation/ElasticEaseInOutInterpolator;->Mo:F

    .line 31
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 35
    iget v3, p0, Lmiui/view/animation/ElasticEaseInOutInterpolator;->Mo:F

    .line 36
    iget v2, p0, Lmiui/view/animation/ElasticEaseInOutInterpolator;->Mn:F

    .line 39
    cmpl-float v4, p1, v0

    if-nez v4, :cond_0

    .line 63
    :goto_0
    return v0

    .line 43
    :cond_0
    const/high16 v4, 0x3f000000    # 0.5f

    div-float v4, p1, v4

    .line 44
    const/high16 v5, 0x40000000    # 2.0f

    cmpl-float v5, v4, v5

    if-nez v5, :cond_1

    move v0, v1

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    cmpl-float v5, v3, v0

    if-nez v5, :cond_2

    .line 48
    const v3, 0x3ee66667    # 0.45000002f

    .line 50
    :cond_2
    cmpl-float v0, v2, v0

    if-eqz v0, :cond_3

    cmpg-float v0, v2, v1

    if-gez v0, :cond_4

    .line 52
    :cond_3
    const/high16 v0, 0x40800000    # 4.0f

    div-float v0, v3, v0

    move v2, v1

    .line 56
    :goto_1
    cmpg-float v5, v4, v1

    if-gez v5, :cond_5

    .line 57
    sub-float v1, v4, v1

    .line 58
    const/high16 v4, -0x41000000    # -0.5f

    float-to-double v6, v2

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v1

    float-to-double v8, v2

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-float v0, v1, v0

    float-to-double v0, v0

    mul-double/2addr v0, v10

    float-to-double v2, v3

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    mul-float/2addr v0, v4

    goto :goto_0

    .line 54
    :cond_4
    float-to-double v6, v3

    div-double/2addr v6, v10

    div-float v0, v1, v2

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v0, v6

    goto :goto_1

    .line 62
    :cond_5
    sub-float v1, v4, v1

    .line 63
    float-to-double v4, v2

    const/high16 v2, -0x3ee00000    # -10.0f

    mul-float/2addr v2, v1

    float-to-double v6, v2

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-float v0, v1, v0

    float-to-double v0, v0

    mul-double/2addr v0, v10

    float-to-double v2, v3

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method
