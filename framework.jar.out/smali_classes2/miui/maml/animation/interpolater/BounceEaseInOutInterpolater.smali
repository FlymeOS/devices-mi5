.class public Lmiui/maml/animation/interpolater/BounceEaseInOutInterpolater;
.super Ljava/lang/Object;
.source "BounceEaseInOutInterpolater.java"

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
    .locals 3
    .param p1, "t"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 8
    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    .line 9
    mul-float v0, p1, v1

    invoke-static {v0}, Lmiui/maml/animation/interpolater/BounceEaseInInterpolater;->getInterpolationImp(F)F

    move-result v0

    mul-float/2addr v0, v2

    .line 11
    :goto_0
    return v0

    :cond_0
    mul-float v0, p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Lmiui/maml/animation/interpolater/BounceEaseOutInterpolater;->getInterpolationImp(F)F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v2

    goto :goto_0
.end method
