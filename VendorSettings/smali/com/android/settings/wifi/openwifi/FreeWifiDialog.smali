.class public Lcom/android/settings/wifi/openwifi/FreeWifiDialog;
.super Landroid/app/Activity;
.source "FreeWifiDialog.java"


# instance fields
.field private aFt:Landroid/net/wifi/WifiConfiguration;

.field private aFu:I

.field private aFv:Ljava/lang/String;

.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/openwifi/FreeWifiDialog;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiDialog;->aFt:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/wifi/openwifi/FreeWifiDialog;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiDialog;->yI()V

    return-void
.end method

.method private yI()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.aciton.FREE_WIFI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.analytics.AnalyticService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v1, "miui.intent.extra.FREE_WIFI_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    const-string v1, "miui.intent.extra.FREE_WIFI_SSID"

    iget-object v2, p0, Lcom/android/settings/wifi/openwifi/FreeWifiDialog;->aFt:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v1, "miui.intent.extra.FREE_WIFI_SIGNAL_LEVEL"

    iget v2, p0, Lcom/android/settings/wifi/openwifi/FreeWifiDialog;->aFu:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    const-string v1, "miui.intent.extra.FREE_WIFI_BSSID"

    iget-object v2, p0, Lcom/android/settings/wifi/openwifi/FreeWifiDialog;->aFv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiDialog;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 81
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wifi_config"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiDialog;->aFt:Landroid/net/wifi/WifiConfiguration;

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wifi_provider"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "miui.intent.extra.FREE_WIFI_SIGNAL_LEVEL"

    const/16 v3, -0x64

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/openwifi/FreeWifiDialog;->aFu:I

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "miui.intent.extra.FREE_WIFI_BSSID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/openwifi/FreeWifiDialog;->aFv:Ljava/lang/String;

    .line 36
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0fbb

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0fbc

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/wifi/openwifi/FreeWifiDialog;->aFt:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/openwifi/FreeWifiDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0fbe

    new-instance v3, Lcom/android/settings/wifi/openwifi/c;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/wifi/openwifi/c;-><init>(Lcom/android/settings/wifi/openwifi/FreeWifiDialog;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/wifi/openwifi/b;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/openwifi/b;-><init>(Lcom/android/settings/wifi/openwifi/FreeWifiDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/openwifi/a;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/openwifi/a;-><init>(Lcom/android/settings/wifi/openwifi/FreeWifiDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiDialog;->mDialog:Landroid/app/Dialog;

    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 65
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiDialog;->mDialog:Landroid/app/Dialog;

    .line 90
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 91
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiDialog;->setVisible(Z)V

    .line 71
    return-void
.end method
