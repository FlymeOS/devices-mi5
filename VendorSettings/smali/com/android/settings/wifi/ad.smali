.class public Lcom/android/settings/wifi/ad;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# instance fields
.field private final aCf:Ljava/lang/CharSequence;

.field private aCg:Z

.field private final ahl:Landroid/preference/CheckBoxPreference;

.field private je:Landroid/net/wifi/WifiManager;

.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private tU:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v1, p0, Lcom/android/settings/wifi/ad;->aCg:Z

    .line 49
    new-instance v0, Lcom/android/settings/wifi/ae;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ae;-><init>(Lcom/android/settings/wifi/ad;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ad;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    iput-object p1, p0, Lcom/android/settings/wifi/ad;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/settings/wifi/ad;->ahl:Landroid/preference/CheckBoxPreference;

    .line 87
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ad;->aCf:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {p2, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 90
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/ad;->je:Landroid/net/wifi/WifiManager;

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/ad;->mCm:Landroid/net/ConnectivityManager;

    .line 93
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ad;->tU:[Ljava/lang/String;

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ad;->mIntentFilter:Landroid/content/IntentFilter;

    .line 96
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/ad;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/ad;->dA(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/ad;II)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/ad;->x(II)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/ad;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/ad;->a([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private a([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 163
    .line 166
    array-length v7, p2

    move v5, v4

    move v6, v4

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v0, p2, v5

    .line 167
    check-cast v0, Ljava/lang/String;

    .line 168
    iget-object v8, p0, Lcom/android/settings/wifi/ad;->tU:[Ljava/lang/String;

    array-length v9, v8

    move v3, v4

    move v1, v6

    :goto_1
    if-ge v3, v9, :cond_1

    aget-object v6, v8, v3

    .line 169
    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v2

    .line 168
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 166
    :cond_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v6, v1

    goto :goto_0

    .line 172
    :cond_2
    array-length v7, p3

    move v5, v4

    move v1, v4

    :goto_2
    if-ge v5, v7, :cond_5

    aget-object v0, p3, v5

    .line 173
    check-cast v0, Ljava/lang/String;

    .line 174
    iget-object v8, p0, Lcom/android/settings/wifi/ad;->tU:[Ljava/lang/String;

    array-length v9, v8

    move v3, v4

    :goto_3
    if-ge v3, v9, :cond_4

    aget-object v10, v8, v3

    .line 175
    invoke-virtual {v0, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v1, v2

    .line 174
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 172
    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 179
    :cond_5
    if-eqz v6, :cond_7

    .line 180
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 181
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ad;->c(Landroid/net/wifi/WifiConfiguration;)V

    .line 185
    :cond_6
    :goto_4
    return-void

    .line 182
    :cond_7
    if-eqz v1, :cond_6

    .line 183
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->ahl:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c02d7

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4
.end method

.method static synthetic a(Lcom/android/settings/wifi/ad;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/settings/wifi/ad;->aCg:Z

    return v0
.end method

.method static synthetic b(Lcom/android/settings/wifi/ad;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/wifi/ad;->xM()V

    return-void
.end method

.method private dA(I)V
    .locals 1

    .prologue
    .line 226
    packed-switch p1, :pswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 229
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/ad;->xM()V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/ad;->aCg:Z

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private x(II)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    packed-switch p1, :pswitch_data_0

    .line 215
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 216
    if-ne p2, v1, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->ahl:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c02d8

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 221
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/ad;->xM()V

    .line 223
    :cond_0
    :goto_1
    return-void

    .line 190
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->ahl:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c0368

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 198
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 203
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->ahl:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c0369

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 208
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->ahl:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/ad;->aCf:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 210
    iget-boolean v0, p0, Lcom/android/settings/wifi/ad;->aCg:Z

    if-nez v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/android/settings/wifi/ad;->xM()V

    goto :goto_1

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->ahl:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c02d7

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private xM()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 113
    :goto_0
    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 119
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 111
    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->ahl:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/ad;->aCf:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public bH(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 122
    .line 127
    if-nez p1, :cond_0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_saved_state"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 139
    :goto_0
    if-ne v0, v3, :cond_0

    .line 140
    iput-boolean v3, p0, Lcom/android/settings/wifi/ad;->aCg:Z

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/b/g;->a(ZLandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->ahl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 150
    :goto_1
    return-void

    .line 131
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->ahl:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c02d7

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1
.end method

.method public c(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->mContext:Landroid/content/Context;

    const v1, 0x11070045

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/android/settings/wifi/ad;->ahl:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/ad;->mContext:Landroid/content/Context;

    const v3, 0x7f0c036a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    return-void

    .line 157
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/ad;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/ad;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/ad;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/ad;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    invoke-direct {p0}, Lcom/android/settings/wifi/ad;->xM()V

    .line 104
    return-void
.end method
