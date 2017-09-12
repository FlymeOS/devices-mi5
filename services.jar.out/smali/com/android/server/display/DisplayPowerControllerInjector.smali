.class public Lcom/android/server/display/DisplayPowerControllerInjector;
.super Ljava/lang/Object;
.source "DisplayPowerControllerInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustBrightnessIfNeeded(Landroid/content/Context;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldBrightness"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "is_small_window"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v1

    .line 15
    .local v1, "lidClose":Z
    const/4 v3, 0x3

    const-string v4, "persist.sys.smartcover_mode"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 17
    .local v0, "isLattice":Z
    :goto_0
    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/provider/MiuiSettings$System;->isInSmallWindowMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 18
    const/16 p1, 0xff

    .line 20
    .end local p1    # "oldBrightness":I
    :cond_0
    return p1

    .end local v0    # "isLattice":Z
    .restart local p1    # "oldBrightness":I
    :cond_1
    move v0, v2

    .line 15
    goto :goto_0
.end method
