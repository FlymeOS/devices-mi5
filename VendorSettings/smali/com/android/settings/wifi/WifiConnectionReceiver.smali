.class public Lcom/android/vendorsettings/wifi/WifiConnectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectionReceiver.java"


# static fields
.field private static aDp:Z

.field private static aDq:Z

.field private static mWifiConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-boolean v0, Lcom/android/vendorsettings/wifi/WifiConnectionReceiver;->mWifiConnected:Z

    .line 26
    sput-boolean v0, Lcom/android/vendorsettings/wifi/WifiConnectionReceiver;->aDp:Z

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/vendorsettings/wifi/WifiConnectionReceiver;->aDq:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private q(Landroid/content/Context;Z)Landroid/net/wifi/WifiConfiguration;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 97
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 98
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 99
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 100
    invoke-static {}, Lcom/android/vendorsettings/fy;->gg()Lcom/android/vendorsettings/fy;

    move-result-object v5

    .line 101
    const/high16 v3, -0x80000000

    .line 102
    const/4 v2, 0x0

    .line 103
    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    .line 104
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 105
    if-eqz p2, :cond_1

    if-eqz v2, :cond_1

    iget v1, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v1, v9, :cond_1

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v1, v9, :cond_0

    .line 110
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 111
    invoke-virtual {v5, v0, v1}, Lcom/android/vendorsettings/fy;->a(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 112
    if-eqz p2, :cond_3

    if-eqz v2, :cond_3

    iget v7, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v7, v9, :cond_3

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v7, v9, :cond_3

    .line 116
    iget v2, v1, Landroid/net/wifi/ScanResult;->level:I

    .line 121
    :goto_1
    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_2
    move v3, v2

    move-object v2, v0

    .line 125
    goto :goto_0

    .line 117
    :cond_3
    iget v7, v1, Landroid/net/wifi/ScanResult;->level:I

    if-le v7, v3, :cond_5

    .line 119
    iget v2, v1, Landroid/net/wifi/ScanResult;->level:I

    goto :goto_1

    .line 127
    :cond_4
    return-object v2

    :cond_5
    move-object v0, v2

    move v2, v3

    goto :goto_1

    :cond_6
    move-object v0, v2

    move v2, v3

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const v4, 0x10008000

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 39
    sget-boolean v1, Lcom/android/vendorsettings/wifi/WifiConnectionReceiver;->mWifiConnected:Z

    .line 40
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    sput-boolean v0, Lcom/android/vendorsettings/wifi/WifiConnectionReceiver;->mWifiConnected:Z

    .line 41
    if-eqz v1, :cond_0

    sget-boolean v0, Lcom/android/vendorsettings/wifi/WifiConnectionReceiver;->mWifiConnected:Z

    if-nez v0, :cond_0

    .line 42
    sput-boolean v3, Lcom/android/vendorsettings/wifi/WifiConnectionReceiver;->aDq:Z

    .line 43
    invoke-static {p1}, Lcom/android/vendorsettings/wifi/WifiConnectionDialog;->cB(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 45
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    sput-boolean v2, Lcom/android/vendorsettings/wifi/WifiConnectionReceiver;->aDq:Z

    .line 47
    new-instance v1, Landroid/content/Intent;

    const-string v0, "miui.intent.action.SELECT_WIFI_AP"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    const-string v2, "extra_best_ap"

    const/4 v0, 0x0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 49
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 55
    sget-boolean v1, Lcom/android/vendorsettings/wifi/WifiConnectionReceiver;->aDp:Z

    .line 56
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    sput-boolean v0, Lcom/android/vendorsettings/wifi/WifiConnectionReceiver;->aDp:Z

    .line 57
    if-nez v1, :cond_0

    sget-boolean v0, Lcom/android/vendorsettings/wifi/WifiConnectionReceiver;->aDp:Z

    if-eqz v0, :cond_0

    .line 58
    sput-boolean v3, Lcom/android/vendorsettings/wifi/WifiConnectionReceiver;->aDq:Z

    goto :goto_0

    .line 62
    :cond_3
    const-string v1, "miui.intent.action.SWITCH_TO_WIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Lcom/android/vendorsettings/wifi/WifiConnectionDialog;->cB(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 63
    sget-boolean v0, Lcom/android/vendorsettings/wifi/WifiConnectionReceiver;->aDq:Z

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/android/vendorsettings/wifi/WifiConnectionDialog;->cC(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/vendorsettings/wifi/WifiConnectionDialog;->cA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    :cond_4
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 66
    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/android/vendorsettings/wifi/WifiConnectionReceiver;->q(Landroid/content/Context;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    sput-boolean v2, Lcom/android/vendorsettings/wifi/WifiConnectionReceiver;->aDq:Z

    .line 69
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.SWITCH_TO_WIFI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    const-string v2, "extra_best_ap"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 76
    :cond_6
    sput-boolean v2, Lcom/android/vendorsettings/wifi/WifiConnectionReceiver;->aDq:Z

    goto/16 :goto_0

    .line 78
    :cond_7
    const-string v1, "miui.intent.action.SELECT_WIFI_AP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/vendorsettings/wifi/WifiConnectionReceiver;->aDq:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/vendorsettings/wifi/WifiConnectionDialog;->cB(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sput-boolean v2, Lcom/android/vendorsettings/wifi/WifiConnectionReceiver;->aDq:Z

    .line 80
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 82
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.SELECT_WIFI_AP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    const-string v1, "extra_best_ap"

    invoke-direct {p0, p1, v3}, Lcom/android/vendorsettings/wifi/WifiConnectionReceiver;->q(Landroid/content/Context;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 84
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
