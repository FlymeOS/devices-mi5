.class Lcom/android/vendorsettings/widget/s;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field final synthetic ayV:Lcom/android/vendorsettings/widget/ScreenView;

.field private azb:F


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/widget/ScreenView;)V
    .locals 1

    .prologue
    .line 2101
    iput-object p1, p0, Lcom/android/vendorsettings/widget/s;->ayV:Lcom/android/vendorsettings/widget/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2102
    invoke-static {p1}, Lcom/android/vendorsettings/widget/ScreenView;->c(Lcom/android/vendorsettings/widget/ScreenView;)F

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/widget/s;->azb:F

    .line 2103
    return-void
.end method


# virtual methods
.method public disableSettle()V
    .locals 1

    .prologue
    .line 2112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vendorsettings/widget/s;->azb:F

    .line 2113
    return-void
.end method

.method public getInterpolation(F)F
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2116
    sub-float v0, p1, v3

    .line 2117
    mul-float v1, v0, v0

    iget v2, p0, Lcom/android/vendorsettings/widget/s;->azb:F

    add-float/2addr v2, v3

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/android/vendorsettings/widget/s;->azb:F

    add-float/2addr v0, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    return v0
.end method

.method public setDistance(II)V
    .locals 2

    .prologue
    .line 2106
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/widget/s;->ayV:Lcom/android/vendorsettings/widget/ScreenView;

    invoke-static {v0}, Lcom/android/vendorsettings/widget/ScreenView;->c(Lcom/android/vendorsettings/widget/ScreenView;)F

    move-result v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/android/vendorsettings/widget/s;->azb:F

    .line 2109
    return-void

    .line 2106
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/widget/s;->ayV:Lcom/android/vendorsettings/widget/ScreenView;

    invoke-static {v0}, Lcom/android/vendorsettings/widget/ScreenView;->c(Lcom/android/vendorsettings/widget/ScreenView;)F

    move-result v0

    goto :goto_0
.end method
