.class public abstract Lcom/android/settings/wifi/openwifi/l;
.super Ljava/lang/Object;
.source "OpenWifiController.java"


# static fields
.field private static aFQ:J

.field public static aFT:Ljava/lang/String;

.field private static aFU:Landroid/app/Notification;


# instance fields
.field protected final aFO:Ljava/lang/String;

.field private aFP:Landroid/net/Uri;

.field private aFR:Ljava/lang/String;

.field private aFS:Landroid/content/ServiceConnection;

.field protected final aFv:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mImei:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/android/settings/wifi/openwifi/l;->mStatus:I

    .line 276
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->aFR:Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/settings/wifi/openwifi/l;->aFv:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lcom/android/settings/wifi/openwifi/l;->aFO:Ljava/lang/String;

    .line 108
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->mImei:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->mImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->mImei:Ljava/lang/String;

    .line 112
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/openwifi/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/wifi/openwifi/l;->aFR:Ljava/lang/String;

    return-object p1
.end method

.method protected static a(Landroid/content/Context;Landroid/app/Notification$Builder;ZI)V
    .locals 2

    .prologue
    .line 216
    const/4 v0, 0x0

    const v1, 0x7f0c0fb4

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/settings/wifi/openwifi/l;->a(Landroid/content/Context;Landroid/app/Notification$Builder;ZZI)V

    .line 217
    return-void
.end method

.method protected static a(Landroid/content/Context;Landroid/app/Notification$Builder;ZZI)V
    .locals 3

    .prologue
    .line 220
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 221
    const v0, 0x7f020230

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 223
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 224
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02022f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 226
    const/4 v1, 0x0

    .line 227
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 228
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 232
    :goto_0
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 234
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 235
    iget-object v1, v0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/MiuiNotification;->customizedIcon:Z

    move-object v1, v0

    .line 239
    :goto_1
    iget-object v0, v1, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/MiuiNotification;->setMessageCount(I)V

    .line 242
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 243
    invoke-virtual {v0, p4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 244
    return-void

    .line 237
    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 456
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->aBt:Ljava/util/HashSet;

    invoke-static {p2}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    :goto_0
    return-void

    .line 460
    :cond_0
    if-nez p1, :cond_1

    .line 461
    sget-object p1, Lcom/android/settings/wifi/MiuiWifiService;->aAX:Landroid/net/Uri;

    .line 463
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 464
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 465
    const-string v1, "com.miui.action.OPEN_WIFI_LOGIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const-string v1, "miui.intent.extra.OPEN_WIFI_SSID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const-string v1, "miui.intent.extra.BSSID"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    if-eqz p4, :cond_2

    .line 469
    const-string v1, "miui.intent.extra.CAPTIVE_PORTAL"

    const-string v2, "miui.intent.extra.CAPTIVE_PORTAL"

    invoke-virtual {p4, v2}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 471
    const-string v1, "miui.intent.extra.NETWORK"

    const-string v2, "miui.intent.extra.NETWORK"

    invoke-virtual {p4, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 473
    const-string v1, "miui.intent.extra.OPEN_WIFI_FINAL_URL"

    invoke-virtual {p4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 474
    if-eqz v1, :cond_2

    .line 475
    const-string v2, "miui.intent.extra.OPEN_WIFI_FINAL_URL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    :cond_2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 479
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/openwifi/l;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 119
    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-object v0

    .line 122
    :cond_1
    invoke-static {p3}, Lcom/android/settings/wifi/bi;->cl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p3}, Lcom/android/settings/wifi/bi;->cm(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    new-instance v0, Lcom/android/settings/wifi/openwifi/r;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/wifi/openwifi/r;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "00:1f:7a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/settings/iC;->Y(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    new-instance v0, Lcom/android/settings/wifi/openwifi/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/wifi/openwifi/p;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/openwifi/l;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/wifi/openwifi/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/openwifi/l;

    move-result-object v0

    return-object v0
.end method

.method public static cG(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 368
    invoke-static {p0}, Lcom/android/settings/wifi/aC;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    :goto_0
    return-void

    .line 371
    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 372
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 373
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 375
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 376
    if-eqz v1, :cond_2

    .line 377
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 378
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 380
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 385
    :cond_2
    const/4 v3, 0x0

    .line 386
    const/high16 v1, -0x80000000

    .line 387
    if-eqz v2, :cond_4

    .line 388
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 389
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/android/b/e/a;->j(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-nez v2, :cond_3

    .line 394
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 395
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v7, v0, Landroid/net/wifi/ScanResult;->wpsDeviceName:Ljava/lang/String;

    invoke-static {p0, v2, v6, v7}, Lcom/android/settings/wifi/openwifi/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/openwifi/l;

    move-result-object v2

    .line 396
    if-eqz v2, :cond_6

    iget v7, v0, Landroid/net/wifi/ScanResult;->level:I

    if-ge v1, v7, :cond_6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 397
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move-object v1, v2

    :goto_3
    move-object v3, v1

    move v1, v0

    .line 400
    goto :goto_2

    .line 404
    :cond_4
    if-eqz v3, :cond_5

    const/4 v0, 0x5

    invoke-static {v1, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_5

    .line 405
    invoke-virtual {v3, v1}, Lcom/android/settings/wifi/openwifi/l;->dS(I)Z

    goto/16 :goto_0

    .line 407
    :cond_5
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 408
    const v1, 0x7f0c0fb7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    move-object v1, v3

    goto :goto_3
.end method

.method private static cH(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 511
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 512
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 513
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 514
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 515
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 516
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 517
    invoke-static {v0}, Lcom/android/settings/wifi/bi;->c(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/android/settings/wifi/bi;->d(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/settings/wifi/bi;->D(Landroid/content/Context;Ljava/lang/String;)V

    .line 524
    :cond_1
    return-void
.end method

.method public static co(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 320
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    .line 323
    :cond_0
    const-string v0, "^((13[0-9])|(14[5,7])|(15[^4,\\D])|(17[6-8])|(18[0-9]))\\d{8}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 325
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method private g(Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 413
    if-eqz p1, :cond_0

    .line 414
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/openwifi/n;

    .line 415
    iget v2, p0, Lcom/android/settings/wifi/openwifi/l;->mStatus:I

    invoke-interface {v0, v2}, Lcom/android/settings/wifi/openwifi/n;->dR(I)V

    goto :goto_0

    .line 418
    :cond_0
    return-void
.end method

.method public static m(Landroid/content/Context;Z)V
    .locals 5

    .prologue
    const v4, 0x7f0c0fb4

    .line 485
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 486
    const v1, 0x7f0c0fb7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 487
    if-eqz p1, :cond_3

    .line 488
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 489
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 490
    if-eqz v2, :cond_2

    .line 491
    invoke-static {p0}, Lcom/android/settings/wifi/openwifi/l;->cH(Landroid/content/Context;)V

    .line 492
    const-string v1, ""

    .line 493
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 494
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 496
    :cond_0
    sget-object v2, Lcom/android/settings/wifi/openwifi/l;->aFT:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/settings/wifi/openwifi/l;->aFT:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 497
    sget-object v1, Lcom/android/settings/wifi/openwifi/l;->aFU:Landroid/app/Notification;

    if-eqz v1, :cond_1

    .line 498
    sget-object v1, Lcom/android/settings/wifi/openwifi/l;->aFU:Landroid/app/Notification;

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/wifi/openwifi/l;->aFQ:J

    .line 508
    :cond_1
    :goto_0
    return-void

    .line 504
    :cond_2
    const v1, 0x7f0c0fcb

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 506
    :cond_3
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 507
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/settings/wifi/openwifi/l;->aFQ:J

    goto :goto_0
.end method

.method private yQ()Ljava/lang/String;
    .locals 5

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 280
    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->aFR:Ljava/lang/String;

    .line 307
    :goto_0
    return-object v0

    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/openwifi/l;->yR()V

    .line 285
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    .line 286
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.BIND_XIAOMI_ACCOUNT_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    const-string v3, "com.xiaomi.account"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    new-instance v3, Lcom/android/settings/wifi/openwifi/m;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/settings/wifi/openwifi/m;-><init>(Lcom/android/settings/wifi/openwifi/l;Landroid/accounts/Account;Landroid/os/ConditionVariable;)V

    iput-object v3, p0, Lcom/android/settings/wifi/openwifi/l;->aFS:Landroid/content/ServiceConnection;

    .line 303
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/openwifi/l;->aFS:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 305
    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 306
    invoke-direct {p0}, Lcom/android/settings/wifi/openwifi/l;->yR()V

    .line 307
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->aFR:Ljava/lang/String;

    goto :goto_0
.end method

.method private yR()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->aFS:Landroid/content/ServiceConnection;

    if-nez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/l;->aFS:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->aFS:Landroid/content/ServiceConnection;

    goto :goto_0
.end method

.method public static yS()J
    .locals 2

    .prologue
    .line 334
    sget-wide v0, Lcom/android/settings/wifi/openwifi/l;->aFQ:J

    return-wide v0
.end method

.method private yX()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->mIntent:Landroid/content/Intent;

    const-string v1, "miui.intent.extra.CAPTIVE_PORTAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 579
    if-eqz v0, :cond_0

    .line 581
    :try_start_0
    invoke-static {v0}, Landroid/net/IMiuiCaptivePortal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IMiuiCaptivePortal;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/net/IMiuiCaptivePortal;->appResponse(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 583
    :catch_0
    move-exception v0

    .line 584
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public D(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 4

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    const-string v1, "ssid"

    iget-object v2, p0, Lcom/android/settings/wifi/openwifi/l;->aFO:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 181
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 183
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 184
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 185
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 187
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const v3, 0x7f0c0fb4

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/wifi/openwifi/l;->a(Landroid/content/Context;Landroid/app/Notification$Builder;ZI)V

    .line 188
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public cn(Ljava/lang/String;)Landroid/app/Notification;
    .locals 5

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0fba

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/l;->getProviderName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/openwifi/l;->D(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public dS(I)Z
    .locals 11

    .prologue
    const v10, 0x7f0c0fb7

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/l;->getProviderName()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 137
    const-string v4, "ap_notification_time"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x36ee80

    div-long/2addr v6, v8

    long-to-int v5, v6

    .line 139
    sub-int v4, v5, v4

    const/4 v6, 0x2

    if-lt v4, v6, :cond_0

    .line 140
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 141
    const-string v4, "ap_notification_time"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 145
    iget-object v4, p0, Lcom/android/settings/wifi/openwifi/l;->aFO:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 146
    iget-object v4, p0, Lcom/android/settings/wifi/openwifi/l;->aFv:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 147
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->set(I)V

    .line 148
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/settings/wifi/openwifi/FreeWifiDialog;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    const-string v5, "wifi_provider"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v5, "wifi_config"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 152
    const-string v3, "miui.intent.extra.FREE_WIFI_SIGNAL_LEVEL"

    invoke-virtual {v4, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    const-string v3, "miui.intent.extra.FREE_WIFI_BSSID"

    iget-object v5, p0, Lcom/android/settings/wifi/openwifi/l;->aFv:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v3, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v3, v0, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 157
    iget-object v4, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 159
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 161
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 162
    iget-object v4, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0fb8

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v2, v7, v0

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 163
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 165
    iget-object v2, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v0, v10}, Lcom/android/settings/wifi/openwifi/l;->a(Landroid/content/Context;Landroid/app/Notification$Builder;ZI)V

    move v0, v1

    .line 166
    goto/16 :goto_0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->aFv:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 359
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 360
    const-string v0, ""

    .line 361
    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 364
    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method protected getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    const-string v0, ""

    return-object v0
.end method

.method protected getPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    invoke-static {}, Lcom/android/settings/fy;->gg()Lcom/android/settings/fy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/fy;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/android/settings/wifi/openwifi/l;->yQ()Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_0
    const-string v1, "+86"

    .line 259
    const-string v1, "0086"

    .line 260
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 262
    const-string v1, "+86"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/settings/wifi/openwifi/l;->co(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 270
    const-string v0, ""

    .line 273
    :cond_2
    return-object v0

    .line 263
    :cond_3
    const-string v1, "0086"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    const-string v1, "0086"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->aFO:Ljava/lang/String;

    return-object v0
.end method

.method public h(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/settings/wifi/openwifi/l;->aFP:Landroid/net/Uri;

    .line 351
    return-void
.end method

.method public h(Ljava/util/ArrayList;)V
    .locals 8

    .prologue
    const v7, 0x7f0c0fc2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 421
    iput v5, p0, Lcom/android/settings/wifi/openwifi/l;->mStatus:I

    .line 422
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0fbf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0fb8

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/l;->getProviderName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/openwifi/l;->D(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    .line 424
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/openwifi/l;->g(Ljava/util/ArrayList;)V

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/l;->yO()I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/openwifi/l;->mStatus:I

    .line 427
    iget v0, p0, Lcom/android/settings/wifi/openwifi/l;->mStatus:I

    packed-switch v0, :pswitch_data_0

    .line 444
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/l;->aFP:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/wifi/openwifi/l;->aFO:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/openwifi/l;->aFv:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/l;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/wifi/openwifi/l;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 447
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/openwifi/l;->g(Ljava/util/ArrayList;)V

    .line 448
    return-void

    .line 429
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0fc0

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 430
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0fb4

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/wifi/openwifi/l;->aFO:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/l;->cn(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/openwifi/l;->aFU:Landroid/app/Notification;

    .line 431
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->aFO:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/wifi/openwifi/l;->aFT:Ljava/lang/String;

    .line 432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/wifi/openwifi/l;->aFQ:J

    .line 434
    invoke-direct {p0}, Lcom/android/settings/wifi/openwifi/l;->yX()V

    goto :goto_0

    .line 438
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/l;->cn(Ljava/lang/String;)Landroid/app/Notification;

    .line 439
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lcom/android/settings/wifi/openwifi/l;->mIntent:Landroid/content/Intent;

    .line 570
    return-void
.end method

.method public xw()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lcom/android/settings/wifi/openwifi/l;->mStatus:I

    return v0
.end method

.method public abstract xx()I
.end method

.method public abstract yO()I
.end method

.method public yP()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 97
    iget v1, p0, Lcom/android/settings/wifi/openwifi/l;->mStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected yT()Ljava/lang/String;
    .locals 2

    .prologue
    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public yU()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->aFP:Landroid/net/Uri;

    return-object v0
.end method

.method public yV()Z
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/android/settings/wifi/openwifi/l;->mStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public yW()Z
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/l;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 549
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 550
    if-eqz v0, :cond_0

    .line 551
    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/l;->aFO:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 553
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
