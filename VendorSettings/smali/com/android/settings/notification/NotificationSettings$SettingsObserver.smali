.class final Lcom/android/settings/notification/NotificationSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationSettings.java"


# instance fields
.field final synthetic ajD:Lcom/android/settings/notification/NotificationSettings;

.field private final ajE:Landroid/net/Uri;

.field private final ajF:Landroid/net/Uri;

.field private final ajG:Landroid/net/Uri;

.field private final ajH:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 1

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->ajD:Lcom/android/settings/notification/NotificationSettings;

    .line 569
    invoke-static {p1}, Lcom/android/settings/notification/NotificationSettings;->a(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 559
    const-string v0, "vibrate_when_ringing"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->ajE:Landroid/net/Uri;

    .line 561
    const-string v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->ajF:Landroid/net/Uri;

    .line 563
    const-string v0, "lock_screen_allow_private_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->ajG:Landroid/net/Uri;

    .line 565
    const-string v0, "lock_screen_show_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->ajH:Landroid/net/Uri;

    .line 570
    return-void
.end method


# virtual methods
.method public aX(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 573
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->ajD:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->j(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 574
    if-eqz p1, :cond_0

    .line 575
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->ajE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 576
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->ajF:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 577
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->ajG:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 578
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->ajH:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 582
    :goto_0
    return-void

    .line 580
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 586
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 587
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->ajE:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->ajD:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->k(Lcom/android/settings/notification/NotificationSettings;)V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->ajF:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->ajD:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->l(Lcom/android/settings/notification/NotificationSettings;)V

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->ajG:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->ajH:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 594
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->ajD:Lcom/android/settings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettings;->m(Lcom/android/settings/notification/NotificationSettings;)V

    .line 596
    :cond_3
    return-void
.end method
