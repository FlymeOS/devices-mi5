.class public Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;
.super Ljava/lang/Object;
.source "BackEaseOutInterpolater.java"

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

    iput v0, p0, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactor:F

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
    iput p1, p0, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactor:F

    .line 15
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "t"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 18
    sub-float/2addr p1, v3

    mul-float v0, p1, p1

    iget v1, p0, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactor:F

    add-float/2addr v1, v3

    mul-float/2addr v1, p1

    iget v2, p0, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactor:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    return v0
.end method
