.class public Lmiui/maml/animation/interpolater/CircEaseInOutInterpolater;
.super Ljava/lang/Object;
.source "CircEaseInOutInterpolater.java"

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
    const/high16 v1, 0x40000000    # 2.0f

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    mul-float/2addr p1, v1

    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    .line 9
    const/high16 v0, -0x41000000    # -0.5f

    mul-float v1, p1, p1

    sub-float v1, v2, v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sub-double/2addr v2, v4

    double-to-float v1, v2

    mul-float/2addr v0, v1

    .line 11
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v1

    mul-float v1, p1, p1

    sub-float v1, v2, v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v2, v4

    double-to-float v1, v2

    mul-float/2addr v0, v1

    goto :goto_0
.end method
