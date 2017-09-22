.class public Lcom/android/settings/fuelgauge/BatterySaverModeVoiceActivity;
.super Lcom/android/settings/f/a;
.source "BatterySaverModeVoiceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    const-string v0, "android.settings.extra.battery_saver_mode_enabled"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatterySaverModeVoiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 39
    const-string v1, "android.settings.extra.battery_saver_mode_enabled"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/BatterySaverModeVoiceActivity;->g(Ljava/lang/CharSequence;)V

    .line 49
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 43
    :cond_0
    const-string v0, "BatterySaverModeVoiceActivity"

    const-string v1, "Unable to set power mode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/BatterySaverModeVoiceActivity;->h(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 47
    :cond_1
    const-string v0, "BatterySaverModeVoiceActivity"

    const-string v1, "Missing battery saver mode extra"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
