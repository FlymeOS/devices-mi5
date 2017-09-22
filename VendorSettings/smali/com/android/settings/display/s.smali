.class public Lcom/android/vendorsettings/display/s;
.super Ljava/lang/Object;
.source "LargeFontUtils.java"


# direct methods
.method static bG(I)Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method static getFontScale(I)F
    .locals 1

    .prologue
    .line 17
    invoke-static {p0}, Landroid/content/res/MiuiConfiguration;->getFontScale(I)F

    move-result v0

    return v0
.end method

.method public static j(Landroid/content/Context;I)Z
    .locals 4

    .prologue
    .line 31
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 32
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    .line 33
    if-eq v1, p1, :cond_1

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ui_mode_scale"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 36
    invoke-static {p1}, Lcom/android/vendorsettings/display/s;->getFontScale(I)F

    move-result v1

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 37
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, -0x10

    or-int/2addr v1, p1

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 39
    sget-boolean v1, Lmiui/util/ExquisiteModeUtils;->SUPPORT_EXQUISITE_MODE:Z

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, v0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    const-wide/32 v2, 0x10000000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/MiuiConfiguration;->updateTheme(J)V

    .line 42
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 48
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static px()I
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 22
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method
