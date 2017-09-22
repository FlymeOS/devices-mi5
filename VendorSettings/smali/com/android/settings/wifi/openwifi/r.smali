.class public Lcom/android/vendorsettings/wifi/openwifi/r;
.super Lcom/android/vendorsettings/wifi/openwifi/l;
.source "XiaomiGuestController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vendorsettings/wifi/openwifi/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public dS(I)Z
    .locals 9

    .prologue
    const v8, 0x7f0c0fb7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    iget-object v2, p0, Lcom/android/vendorsettings/wifi/openwifi/r;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 39
    const-string v3, "ap_notification_time"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    div-long/2addr v4, v6

    long-to-int v4, v4

    .line 41
    sub-int v3, v4, v3

    const/4 v5, 0x2

    if-lt v3, v5, :cond_0

    .line 42
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 43
    const-string v3, "ap_notification_time"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    iget-object v2, p0, Lcom/android/vendorsettings/wifi/openwifi/r;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "miui.intent.extra.OPEN_WIFI_SSID"

    iget-object v5, p0, Lcom/android/vendorsettings/wifi/openwifi/r;->aFO:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-static {v2, v1, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 51
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/vendorsettings/wifi/openwifi/r;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    iget-object v4, p0, Lcom/android/vendorsettings/wifi/openwifi/r;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 54
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 55
    iget-object v4, p0, Lcom/android/vendorsettings/wifi/openwifi/r;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0fb9

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/vendorsettings/wifi/openwifi/r;->aFO:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 56
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 58
    iget-object v2, p0, Lcom/android/vendorsettings/wifi/openwifi/r;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v1, v0, v8}, Lcom/android/vendorsettings/wifi/openwifi/r;->a(Landroid/content/Context;Landroid/app/Notification$Builder;ZZI)V

    .line 61
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public xx()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public yO()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method
