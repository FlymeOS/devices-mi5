.class public Lcom/android/vendorsettings/wifi/MiuiWifiService;
.super Landroid/app/Service;
.source "MiuiWifiService.java"


# static fields
.field public static aAX:Landroid/net/Uri;


# instance fields
.field private aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

.field private aAY:Lcom/android/vendorsettings/wifi/ak;

.field private aAZ:Landroid/os/HandlerThread;

.field private aBa:Lcom/android/vendorsettings/wifi/openwifi/o;

.field private aBb:Z

.field private aBc:Ljava/util/HashMap;

.field private aBd:Ljava/util/ArrayList;

.field private aBe:I

.field private je:Landroid/net/wifi/WifiManager;

.field private k:Landroid/os/Handler;

.field private final mBinder:Landroid/os/IBinder;

.field private ta:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "http://clients3.google.com/generate_204"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAX:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aBc:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aBd:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Lcom/android/vendorsettings/wifi/F;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/wifi/F;-><init>(Lcom/android/vendorsettings/wifi/MiuiWifiService;)V

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->mBinder:Landroid/os/IBinder;

    .line 335
    const v0, 0x11170

    iput v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aBe:I

    .line 336
    return-void
.end method

.method private B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 315
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aBc:Ljava/util/HashMap;

    monitor-enter v1

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aBc:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    monitor-exit v1

    .line 318
    return-void

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private F(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 390
    const-string v0, "miui.intent.extra.BSSID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    const-string v0, "miui.intent.extra.OPEN_WIFI_SSID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 393
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/openwifi/l;->getBssid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 394
    :cond_0
    const/4 v4, 0x1

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/wifi/MiuiWifiService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLandroid/content/Intent;)V

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/wifi/openwifi/l;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/vendorsettings/wifi/MiuiWifiService;)Lcom/android/vendorsettings/wifi/ak;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAY:Lcom/android/vendorsettings/wifi/ak;

    return-object v0
.end method

.method private b(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 205
    const-string v0, "SG"

    invoke-static {v0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    if-nez p1, :cond_3

    .line 209
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_3

    .line 211
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 212
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "Singtel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v4, :cond_2

    move-object p1, v0

    .line 219
    :cond_3
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v1, "Singtel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_0

    .line 220
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 221
    const-string v0, "default_Singtel_connect_sim_num"

    .line 222
    if-eqz p1, :cond_0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoCount()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    .line 224
    const-string v0, "default_Singtel_connect_sim_num"

    const/4 v2, 0x2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 225
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    .line 226
    if-eq v2, v0, :cond_0

    .line 227
    const-string v2, "MiuiWifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentSimNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {}, Lcom/android/vendorsettings/fy;->gg()Lcom/android/vendorsettings/fy;

    move-result-object v2

    invoke-virtual {v2, p0, p1, v0}, Lcom/android/vendorsettings/fy;->a(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V

    .line 229
    iget-object v2, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->je:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 230
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 231
    const-string v2, "default_Singtel_connect_sim_num"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 232
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/android/vendorsettings/wifi/MiuiWifiService;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/MiuiWifiService;->xs()V

    return-void
.end method

.method private bX(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aBc:Ljava/util/HashMap;

    monitor-enter v1

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aBc:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    monitor-exit v1

    .line 324
    return-void

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/wifi/MiuiWifiService;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aBd:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .prologue
    .line 304
    if-nez p2, :cond_0

    .line 312
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/vendorsettings/wifi/MiuiWifiService;->b(Landroid/net/wifi/WifiConfiguration;)V

    .line 309
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->je:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 310
    invoke-static {p2}, Lcom/android/vendorsettings/wifi/ak;->d(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAY:Lcom/android/vendorsettings/wifi/ak;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/wifi/ak;->ch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/vendorsettings/wifi/MiuiWifiService;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->ta:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private xr()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 162
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 163
    if-nez v1, :cond_1

    .line 164
    iput-object v5, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    if-nez v2, :cond_3

    .line 170
    :cond_2
    iput-object v5, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    goto :goto_0

    .line 174
    :cond_3
    invoke-static {v0}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 177
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 178
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 179
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 182
    :cond_5
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 186
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 187
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v4

    if-nez v3, :cond_6

    .line 188
    const-string v0, "http://clients3.google.com/generate_204"

    invoke-static {p0, v0}, Lcom/android/vendorsettings/wifi/j;->A(Landroid/content/Context;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 190
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/wifi/MiuiWifiService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLandroid/content/Intent;)V

    goto :goto_0

    .line 192
    :cond_6
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 193
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAY:Lcom/android/vendorsettings/wifi/ak;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3, v0}, Lcom/android/vendorsettings/wifi/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0
.end method

.method private xs()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 239
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    .line 241
    if-eqz v0, :cond_4

    .line 242
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 243
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 244
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 246
    :cond_1
    if-eqz v3, :cond_0

    .line 247
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 248
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 252
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v7, "PSK"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 253
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v7, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {p0, v2, v7}, Lcom/android/vendorsettings/wifi/MiuiWifiService;->B(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_3
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/vendorsettings/wifi/MiuiWifiService;->bX(Ljava/lang/String;)V

    .line 257
    invoke-static {v1}, Lcom/android/vendorsettings/wifi/ak;->a(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-static {v2}, Lcom/android/vendorsettings/wifi/ak;->ce(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 259
    if-nez v2, :cond_c

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "restore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vendorsettings/wifi/ak;->ce(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 262
    :goto_1
    if-eqz v1, :cond_2

    const-string v2, "restore"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 263
    invoke-static {v1}, Lcom/android/vendorsettings/wifi/ak;->f(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 271
    :cond_4
    if-eqz v3, :cond_a

    .line 274
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v4

    move-object v2, v4

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 275
    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 278
    invoke-static {v0}, Lcom/android/vendorsettings/wifi/ak;->a(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v3

    .line 279
    invoke-static {v3}, Lcom/android/vendorsettings/wifi/ak;->ce(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 280
    if-nez v3, :cond_6

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "restore"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/vendorsettings/wifi/ak;->ce(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 283
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v3, :cond_b

    iget v6, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v7, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v6, v7, :cond_b

    :cond_7
    move-object v1, v3

    :goto_3
    move-object v2, v1

    move-object v1, v0

    .line 288
    goto :goto_2

    .line 289
    :cond_8
    if-eqz v2, :cond_a

    .line 290
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 291
    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 292
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/b/e/a;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 293
    sget-boolean v2, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v2, :cond_9

    .line 294
    invoke-direct {p0, p0, v0}, Lcom/android/vendorsettings/wifi/MiuiWifiService;->c(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 296
    :cond_9
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    const/4 v2, 0x2

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 297
    iget-object v0, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/MiuiWifiService;->bX(Ljava/lang/String;)V

    .line 300
    :cond_a
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAY:Lcom/android/vendorsettings/wifi/ak;

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/wifi/ak;->cx(Landroid/content/Context;)V

    .line 301
    return-void

    :cond_b
    move-object v0, v1

    move-object v1, v2

    goto :goto_3

    :cond_c
    move-object v1, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Lcom/android/vendorsettings/wifi/openwifi/n;)V
    .locals 1

    .prologue
    .line 492
    if-eqz p1, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aBd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 446
    const-string v0, "MiuiWifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open wifi mac:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v0, "MiuiWifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open wifi ssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/openwifi/l;->getBssid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 450
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/vendorsettings/wifi/openwifi/l;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/vendorsettings/wifi/openwifi/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/openwifi/q;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    new-instance v0, Lcom/android/vendorsettings/wifi/openwifi/q;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/vendorsettings/wifi/openwifi/q;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    .line 457
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    if-nez v0, :cond_4

    .line 458
    if-eqz p4, :cond_3

    .line 459
    invoke-static {p0, p3, p2, p1, p5}, Lcom/android/vendorsettings/wifi/openwifi/l;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 470
    :cond_3
    :goto_0
    return-void

    .line 463
    :cond_4
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    invoke-virtual {v0, p3}, Lcom/android/vendorsettings/wifi/openwifi/l;->h(Landroid/net/Uri;)V

    .line 464
    if-eqz p5, :cond_5

    .line 465
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    invoke-virtual {v0, p5}, Lcom/android/vendorsettings/wifi/openwifi/l;->setIntent(Landroid/content/Intent;)V

    .line 467
    :cond_5
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/MiuiWifiService;->xt()Z

    move-result v0

    if-nez v0, :cond_3

    .line 468
    invoke-virtual {p0}, Lcom/android/vendorsettings/wifi/MiuiWifiService;->xu()V

    goto :goto_0
.end method

.method public b(Lcom/android/vendorsettings/wifi/openwifi/n;)V
    .locals 1

    .prologue
    .line 498
    if-eqz p1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aBd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 501
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 89
    new-instance v0, Lcom/android/vendorsettings/wifi/ak;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/wifi/ak;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAY:Lcom/android/vendorsettings/wifi/ak;

    .line 90
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wifi/MiuiWifiService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->je:Landroid/net/wifi/WifiManager;

    .line 91
    new-instance v0, Lcom/android/vendorsettings/wifi/openwifi/o;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/wifi/openwifi/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aBa:Lcom/android/vendorsettings/wifi/openwifi/o;

    .line 92
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WorkHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAZ:Landroid/os/HandlerThread;

    .line 93
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAZ:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 94
    new-instance v0, Lcom/android/vendorsettings/wifi/G;

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAZ:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/wifi/G;-><init>(Lcom/android/vendorsettings/wifi/MiuiWifiService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    .line 97
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 98
    if-nez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-static {v1}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/android/vendorsettings/wifi/openwifi/l;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/vendorsettings/wifi/openwifi/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 117
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAZ:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 118
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 119
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 123
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAY:Lcom/android/vendorsettings/wifi/ak;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/ak;->yj()V

    .line 124
    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string v1, "miui.intent.action.UPDATE_CURRENT_WIFI_CONFIGURATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/android/vendorsettings/wifi/MiuiWifiService;->xr()V

    .line 145
    :cond_0
    :goto_0
    return v4

    .line 128
    :cond_1
    const-string v1, "android.intent.action.RESTORE_FINISH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 130
    :cond_2
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 131
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 132
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 133
    iput v2, v0, Landroid/os/Message;->what:I

    .line 134
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 137
    :cond_4
    const-string v1, "miui.intent.action.WIFI_SYNC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 138
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 139
    :cond_5
    const-string v1, "com.miui.action.OPEN_WIFI_LOGIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 140
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/wifi/MiuiWifiService;->F(Landroid/content/Intent;)V

    goto :goto_0

    .line 141
    :cond_6
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wifi/MiuiWifiService;->b(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method

.method public xt()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 403
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 404
    const-string v3, "key_agreement_remind_again"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aBb:Z

    if-eqz v2, :cond_1

    .line 441
    :cond_0
    :goto_0
    return v0

    .line 408
    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 409
    const-string v3, "com.xiaomi"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 410
    array-length v2, v2

    if-gtz v2, :cond_0

    .line 414
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget v3, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 415
    const v3, 0x7f0c1042

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0c1041

    new-instance v4, Lcom/android/vendorsettings/wifi/E;

    invoke-direct {v4, p0}, Lcom/android/vendorsettings/wifi/E;-><init>(Lcom/android/vendorsettings/wifi/MiuiWifiService;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 429
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 431
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 432
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f04018b

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 433
    const v0, 0x7f1300d5

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->ta:Landroid/widget/CheckBox;

    .line 434
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->ta:Landroid/widget/CheckBox;

    const v4, 0x7f0c103f

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 435
    const v0, 0x7f130051

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 436
    const v4, 0x7f0c1040

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 437
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 438
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x7d3

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    .line 439
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 440
    iput-boolean v1, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aBb:Z

    move v0, v1

    .line 441
    goto :goto_0
.end method

.method public xu()V
    .locals 4

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/openwifi/l;->yV()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/openwifi/l;->yP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    instance-of v0, v0, Lcom/android/vendorsettings/wifi/openwifi/q;

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    .line 478
    :goto_1
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 482
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 484
    iget-object v1, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->k:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 477
    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public xv()Z
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xw()I
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/openwifi/l;->xw()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public xx()I
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/wifi/MiuiWifiService;->aAJ:Lcom/android/vendorsettings/wifi/openwifi/l;

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/openwifi/l;->xx()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
