.class public Lcom/android/settings/dj;
.super Ljava/lang/Object;
.source "GestureWakeupHelper.java"


# direct methods
.method public static z(Z)V
    .locals 1

    .prologue
    .line 7
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->switchTouchWakeupMode(Z)V

    .line 8
    return-void
.end method
