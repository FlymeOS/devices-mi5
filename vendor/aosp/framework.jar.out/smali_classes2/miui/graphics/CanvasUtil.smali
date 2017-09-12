.class public Lmiui/graphics/CanvasUtil;
.super Ljava/lang/Object;
.source "CanvasUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static release(Landroid/graphics/Canvas;)V
    .locals 0
    .param p0, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 6
    invoke-virtual {p0}, Landroid/graphics/Canvas;->release()V

    .line 7
    return-void
.end method
