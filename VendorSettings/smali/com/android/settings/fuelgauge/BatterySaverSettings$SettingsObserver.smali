.class final Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatterySaverSettings.java"


# instance fields
.field final synthetic aeU:Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;

.field private final aeW:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$SettingsObserver;->aeU:Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;

    .line 214
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 210
    const-string v0, "low_power_trigger_level"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$SettingsObserver;->aeW:Landroid/net/Uri;

    .line 215
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$SettingsObserver;->aeW:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$SettingsObserver;->aeU:Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->e(Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;)Lcom/android/vendorsettings/notification/SettingPref;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$SettingsObserver;->aeU:Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->d(Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/notification/SettingPref;->bQ(Landroid/content/Context;)V

    .line 222
    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$SettingsObserver;->aeU:Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;->f(Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 226
    if-eqz p1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/BatterySaverSettings$SettingsObserver;->aeW:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
