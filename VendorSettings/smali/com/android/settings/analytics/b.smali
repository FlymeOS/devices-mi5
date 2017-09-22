.class Lcom/android/settings/analytics/b;
.super Landroid/database/ContentObserver;
.source "ObserverService.java"


# instance fields
.field final synthetic EU:Lcom/android/settings/analytics/ObserverService;


# direct methods
.method constructor <init>(Lcom/android/settings/analytics/ObserverService;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/settings/analytics/b;->EU:Lcom/android/settings/analytics/ObserverService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-static {}, Lcom/android/settings/analytics/ObserverService;->jx()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 25
    iget-object v0, p0, Lcom/android/settings/analytics/b;->EU:Lcom/android/settings/analytics/ObserverService;

    invoke-virtual {v0}, Lcom/android/settings/analytics/ObserverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 26
    if-ne v0, v3, :cond_2

    const-string v0, "mobile_data_enable"

    .line 31
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 32
    invoke-static {v0}, Lcom/android/settings/AnalyticsReceiver;->g(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 33
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    iget-object v1, p0, Lcom/android/settings/analytics/b;->EU:Lcom/android/settings/analytics/ObserverService;

    invoke-virtual {v1, v0}, Lcom/android/settings/analytics/ObserverService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 36
    :cond_1
    return-void

    .line 26
    :cond_2
    const-string v0, "mobile_data_disable"

    goto :goto_0

    .line 27
    :cond_3
    invoke-static {}, Lcom/android/settings/analytics/ObserverService;->jy()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/android/settings/analytics/b;->EU:Lcom/android/settings/analytics/ObserverService;

    invoke-virtual {v0}, Lcom/android/settings/analytics/ObserverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "drive_mode_drive_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 29
    if-ne v0, v3, :cond_4

    const-string v0, "drive_enable"

    goto :goto_0

    :cond_4
    const-string v0, "drive_disable"

    goto :goto_0
.end method
