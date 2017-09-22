.class public Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;
.super Lcom/android/vendorsettings/wfd/WifiDisplaySettings;
.source "MiuiWifiDisplaySettings.java"


# instance fields
.field private je:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;)Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->je:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;Z)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->bp(Z)V

    return-void
.end method

.method private bp(Z)V
    .locals 3

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->awm:Z

    .line 86
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_on"

    iget-boolean v0, p0, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->awm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    const-string v0, "enable_wifi_display"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->awm:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 88
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private vU()V
    .locals 2

    .prologue
    const/16 v1, 0x2710

    .line 91
    iget-boolean v0, p0, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->awm:Z

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->ag(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->showDialog(I)V

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->bp(Z)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->removeDialog(I)V

    goto :goto_0
.end method

.method private vV()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 102
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 103
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    .line 106
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vendorsettings/fy;->N(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->vV()V

    .line 28
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->je:Landroid/net/wifi/WifiManager;

    .line 29
    invoke-super {p0, p1}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->onCreate(Landroid/os/Bundle;)V

    .line 30
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 59
    packed-switch p1, :pswitch_data_0

    .line 81
    invoke-super {p0, p1}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 61
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0e98

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c05b1

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/vendorsettings/wfd/b;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/wfd/b;-><init>(Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c05b2

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/vendorsettings/wfd/a;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/wfd/a;-><init>(Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 47
    const-string v0, "enable_wifi_display"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->awm:Z

    .line 49
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_on"

    iget-boolean v0, p0, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->awm:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 51
    invoke-direct {p0}, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->vU()V

    .line 54
    :goto_1
    return v1

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->onStart()V

    .line 35
    invoke-direct {p0}, Lcom/android/vendorsettings/wfd/MiuiWifiDisplaySettings;->vU()V

    .line 36
    return-void
.end method
