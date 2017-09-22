.class public Lcom/android/settings/wifi/B;
.super Ljava/lang/Object;
.source "MiuiWifiEnabler.java"


# instance fields
.field private Cj:Lcom/android/settings/SettingsPreferenceFragment;

.field private Sc:Landroid/preference/CheckBoxPreference;

.field private aAQ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aAR:Z

.field private final je:Landroid/net/wifi/WifiManager;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/preference/CheckBoxPreference;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/B;->aAQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Lcom/android/settings/wifi/C;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/C;-><init>(Lcom/android/settings/wifi/B;)V

    iput-object v0, p0, Lcom/android/settings/wifi/B;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    iput-object p1, p0, Lcom/android/settings/wifi/B;->Cj:Lcom/android/settings/SettingsPreferenceFragment;

    .line 73
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/B;->mContext:Landroid/content/Context;

    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/B;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/B;->je:Landroid/net/wifi/WifiManager;

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/B;->mIntentFilter:Landroid/content/IntentFilter;

    .line 78
    iget-object v0, p0, Lcom/android/settings/wifi/B;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/B;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/B;->b(Landroid/preference/CheckBoxPreference;)V

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/B;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/B;->aAQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/B;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/B;->dA(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/B;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/B;->a(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method private dA(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 135
    packed-switch p1, :pswitch_data_0

    .line 152
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/B;->setChecked(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/B;->Sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/B;->Cj:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->invalidateOptionsMenu()V

    .line 157
    return-void

    .line 137
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/B;->Sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 140
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/B;->setChecked(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/B;->Sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 144
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/B;->Sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 147
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/B;->setChecked(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/B;->Sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setChecked(Z)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/B;->Sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/B;->aAR:Z

    .line 162
    iget-object v0, p0, Lcom/android/settings/wifi/B;->Sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/B;->aAR:Z

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method public aD(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-boolean v0, p0, Lcom/android/settings/wifi/B;->aAR:Z

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/B;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/android/b/h;->E(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/B;->mContext:Landroid/content/Context;

    const v1, 0x7f0c02d9

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/B;->Sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/B;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 116
    if-eqz p1, :cond_4

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/B;->je:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 121
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/B;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_5

    const/16 v0, 0x8b

    :goto_1
    invoke-static {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/B;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/B;->Sc:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/B;->mContext:Landroid/content/Context;

    const v1, 0x7f0c02d7

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 121
    :cond_5
    const/16 v0, 0x8a

    goto :goto_1

    .line 128
    :cond_6
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/B;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/dU;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/B;->Sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public b(Landroid/preference/CheckBoxPreference;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 93
    iput-object p1, p0, Lcom/android/settings/wifi/B;->Sc:Landroid/preference/CheckBoxPreference;

    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/B;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 95
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v3, v1

    .line 96
    :goto_0
    if-ne v0, v1, :cond_3

    move v0, v1

    .line 97
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/B;->Sc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 98
    iget-object v4, p0, Lcom/android/settings/wifi/B;->Sc:Landroid/preference/CheckBoxPreference;

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 99
    return-void

    :cond_2
    move v3, v2

    .line 95
    goto :goto_0

    :cond_3
    move v0, v2

    .line 96
    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/B;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/B;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/B;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/B;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/B;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    return-void
.end method
