.class public Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;
.super Ljava/lang/Object;
.source "BackEaseInOutInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const v0, 0x3fd9cd60

    iput v0, p0, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;->mFactor:F

    .line 11
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;->mFactor:F

    .line 15
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 9
    .param p1, "t"    # F

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const-wide v6, 0x3ff8666666666666L    # 1.525

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 18
    iget v0, p0, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;->mFactor:F

    .line 20
    .local v0, "s":F
    mul-float/2addr p1, v5

    cmpg-float v1, p1, v4

    if-gez v1, :cond_0

    .line 21
    mul-float v1, p1, p1

    float-to-double v2, v0

    mul-double/2addr v2, v6

    double-to-float v0, v2

    add-float v2, v0, v4

    mul-float/2addr v2, p1

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    mul-float/2addr v1, v8

    .line 22
    :goto_0
    return v1

    :cond_0
    sub-float/2addr p1, v5

    mul-float v1, p1, p1

    float-to-double v2, v0

    mul-double/2addr v2, v6

    double-to-float v0, v2

    add-float v2, v0, v4

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    mul-float/2addr v1, v2

    add-float/2addr v1, v5

    mul-float/2addr v1, v8

    goto :goto_0
.end method
