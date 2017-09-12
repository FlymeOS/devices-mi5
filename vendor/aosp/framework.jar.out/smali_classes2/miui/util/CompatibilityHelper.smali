.class public Lmiui/util/CompatibilityHelper;
.super Ljava/lang/Object;
.source "CompatibilityHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static screenshot(IIII)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "minLayer"    # I
    .param p3, "maxLayer"    # I

    .prologue
    const/4 v5, 0x0

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, v5

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
