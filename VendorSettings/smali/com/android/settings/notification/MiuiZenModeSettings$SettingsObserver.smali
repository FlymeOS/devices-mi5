.class final Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MiuiZenModeSettings.java"


# instance fields
.field private final aak:Landroid/net/Uri;

.field private final aal:Landroid/net/Uri;

.field final synthetic aje:Lcom/android/settings/notification/MiuiZenModeSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V
    .locals 1

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->aje:Lcom/android/settings/notification/MiuiZenModeSettings;

    .line 266
    invoke-static {p1}, Lcom/android/settings/notification/MiuiZenModeSettings;->c(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 262
    const-string v0, "quiet_mode_enable"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->aak:Landroid/net/Uri;

    .line 263
    const-string v0, "zen_mode_config_etag"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->aal:Landroid/net/Uri;

    .line 267
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 280
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 281
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->aje:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->g(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    .line 282
    return-void
.end method

.method public register()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 270
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->aje:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->d(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->aak:Landroid/net/Uri;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 271
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->aje:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->e(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->aal:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 272
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->aje:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->f(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 276
    return-void
.end method
