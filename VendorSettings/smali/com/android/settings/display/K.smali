.class Lcom/android/vendorsettings/display/K;
.super Landroid/database/ContentObserver;
.source "ScreenEffect.java"


# instance fields
.field final synthetic ZM:Lcom/android/vendorsettings/display/ScreenEffect;

.field private final ZN:Landroid/net/Uri;

.field private final ZO:Landroid/net/Uri;

.field private final ZP:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/display/ScreenEffect;)V
    .locals 2

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/vendorsettings/display/K;->ZM:Lcom/android/vendorsettings/display/ScreenEffect;

    .line 415
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/vendorsettings/display/ScreenEffect;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 418
    const-string v0, "screen_paper_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/display/K;->ZN:Landroid/net/Uri;

    .line 419
    const-string v0, "screen_paper_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/display/K;->ZO:Landroid/net/Uri;

    .line 420
    const-string v0, "screen_paper_mode_time_off"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/display/K;->ZP:Landroid/net/Uri;

    .line 416
    return-void
.end method

.method private pJ()Z
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/vendorsettings/display/K;->ZM:Lcom/android/vendorsettings/display/ScreenEffect;

    invoke-virtual {v0}, Lcom/android/vendorsettings/display/ScreenEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private pK()Z
    .locals 3

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/vendorsettings/display/K;->ZM:Lcom/android/vendorsettings/display/ScreenEffect;

    invoke-virtual {v0}, Lcom/android/vendorsettings/display/ScreenEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_time_off"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private pL()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 459
    iget-object v1, p0, Lcom/android/vendorsettings/display/K;->ZM:Lcom/android/vendorsettings/display/ScreenEffect;

    invoke-virtual {v1}, Lcom/android/vendorsettings/display/ScreenEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_paper_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/android/vendorsettings/display/K;->pJ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/vendorsettings/display/K;->pL()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/vendorsettings/display/K;->pK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/android/vendorsettings/display/K;->ZM:Lcom/android/vendorsettings/display/ScreenEffect;

    invoke-virtual {v0}, Lcom/android/vendorsettings/display/ScreenEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/vendorsettings/display/K;->ZM:Lcom/android/vendorsettings/display/ScreenEffect;

    invoke-virtual {v0}, Lcom/android/vendorsettings/display/ScreenEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 437
    iget-object v0, p0, Lcom/android/vendorsettings/display/K;->ZM:Lcom/android/vendorsettings/display/ScreenEffect;

    invoke-static {v0}, Lcom/android/vendorsettings/display/ScreenEffect;->a(Lcom/android/vendorsettings/display/ScreenEffect;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/display/K;->ZM:Lcom/android/vendorsettings/display/ScreenEffect;

    invoke-virtual {v0}, Lcom/android/vendorsettings/display/ScreenEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/vendorsettings/display/K;->ZM:Lcom/android/vendorsettings/display/ScreenEffect;

    invoke-virtual {v0}, Lcom/android/vendorsettings/display/ScreenEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 442
    iget-object v0, p0, Lcom/android/vendorsettings/display/K;->ZM:Lcom/android/vendorsettings/display/ScreenEffect;

    invoke-static {v0}, Lcom/android/vendorsettings/display/ScreenEffect;->a(Lcom/android/vendorsettings/display/ScreenEffect;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    goto :goto_0
.end method

.method public register()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 423
    iget-object v0, p0, Lcom/android/vendorsettings/display/K;->ZM:Lcom/android/vendorsettings/display/ScreenEffect;

    invoke-virtual {v0}, Lcom/android/vendorsettings/display/ScreenEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/display/K;->ZN:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 424
    iget-object v0, p0, Lcom/android/vendorsettings/display/K;->ZM:Lcom/android/vendorsettings/display/ScreenEffect;

    invoke-virtual {v0}, Lcom/android/vendorsettings/display/ScreenEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/display/K;->ZO:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 425
    iget-object v0, p0, Lcom/android/vendorsettings/display/K;->ZM:Lcom/android/vendorsettings/display/ScreenEffect;

    invoke-virtual {v0}, Lcom/android/vendorsettings/display/ScreenEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/display/K;->ZP:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 426
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/vendorsettings/display/K;->ZM:Lcom/android/vendorsettings/display/ScreenEffect;

    invoke-virtual {v0}, Lcom/android/vendorsettings/display/ScreenEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 430
    return-void
.end method
