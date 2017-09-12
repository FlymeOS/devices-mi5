.class public Lmiui/animation/LayoutTransitionUtil;
.super Ljava/lang/Object;
.source "LayoutTransitionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel(Landroid/animation/LayoutTransition;)V
    .locals 0
    .param p0, "layoutTransition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 15
    invoke-virtual {p0}, Landroid/animation/LayoutTransition;->cancel()V

    .line 16
    return-void
.end method

.method public static endChangingAnimations(Landroid/animation/LayoutTransition;)V
    .locals 0
    .param p0, "layoutTransition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 11
    invoke-virtual {p0}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    .line 12
    return-void
.end method
