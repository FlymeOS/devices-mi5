.class final Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OtherSoundSettings.java"


# instance fields
.field final synthetic akd:Lcom/android/settings/notification/OtherSoundSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/OtherSoundSettings;)V
    .locals 1

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;->akd:Lcom/android/settings/notification/OtherSoundSettings;

    .line 227
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 228
    return-void
.end method


# virtual methods
.method public aX(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 231
    iget-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;->akd:Lcom/android/settings/notification/OtherSoundSettings;

    invoke-static {v0}, Lcom/android/settings/notification/OtherSoundSettings;->a(Lcom/android/settings/notification/OtherSoundSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 232
    if-eqz p1, :cond_0

    .line 233
    invoke-static {}, Lcom/android/settings/notification/OtherSoundSettings;->su()[Lcom/android/settings/notification/SettingPref;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 234
    invoke-virtual {v5}, Lcom/android/settings/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 239
    :cond_1
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    .prologue
    .line 243
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 244
    invoke-static {}, Lcom/android/settings/notification/OtherSoundSettings;->su()[Lcom/android/settings/notification/SettingPref;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 245
    invoke-virtual {v3}, Lcom/android/settings/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;->akd:Lcom/android/settings/notification/OtherSoundSettings;

    invoke-static {v0}, Lcom/android/settings/notification/OtherSoundSettings;->b(Lcom/android/settings/notification/OtherSoundSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/settings/notification/SettingPref;->bQ(Landroid/content/Context;)V

    .line 250
    :cond_0
    return-void

    .line 244
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
