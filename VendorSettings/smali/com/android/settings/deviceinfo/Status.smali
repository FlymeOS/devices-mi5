.class public Lcom/android/settings/deviceinfo/Status;
.super Lcom/android/settings/dA;
.source "Status.java"


# static fields
.field private static final WK:[Ljava/lang/String;


# instance fields
.field private WL:Landroid/net/ConnectivityManager;

.field private WM:Ljava/lang/String;

.field private WN:Ljava/lang/String;

.field private WO:Landroid/preference/Preference;

.field private WP:Landroid/preference/Preference;

.field private WQ:Landroid/preference/Preference;

.field private WR:Landroid/preference/Preference;

.field private WS:Landroid/preference/Preference;

.field private WT:Landroid/preference/Preference;

.field private WU:Landroid/preference/Preference;

.field private WV:Landroid/content/IntentFilter;

.field private final WW:Landroid/content/BroadcastReceiver;

.field private je:Landroid/net/wifi/WifiManager;

.field private mHandler:Landroid/os/Handler;

.field private mRes:Landroid/content/res/Resources;

.field private zm:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.net.wifi.STATE_CHANGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/Status;->WK:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/dA;-><init>()V

    .line 131
    new-instance v0, Lcom/android/settings/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$1;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zm:Landroid/content/BroadcastReceiver;

    .line 148
    new-instance v0, Lcom/android/settings/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$2;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->WW:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->WQ:Landroid/preference/Preference;

    return-object v0
.end method

.method private aT(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 290
    :cond_0
    return-void
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/settings/deviceinfo/Status;->WK:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->WP:Landroid/preference/Preference;

    return-object v0
.end method

.method private bw(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 394
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 395
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 397
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings/deviceinfo/Status;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private pf()Z
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pg()Z
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->WL:Landroid/net/ConnectivityManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ph()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->WU:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 327
    const-string v0, "net.wimax.mac.address"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->WN:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    const-string v1, "wimax_mac_address"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/Status;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_0
    return-void
.end method

.method private pi()V
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 336
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 339
    :goto_0
    const-string v1, "wifi_mac_address"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/Status;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void

    .line 336
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->WN:Ljava/lang/String;

    goto :goto_1
.end method

.method private pj()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->WL:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/android/settings/iC;->a(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_0

    .line 349
    const-string v1, "wifi_ip_address"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/Status;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    const-string v0, "wifi_ip_address"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->WN:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pk()V
    .locals 3

    .prologue
    .line 358
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->WR:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 360
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 368
    :goto_0
    const-string v1, "bt_address"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/Status;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_0
    return-void

    .line 360
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->WN:Ljava/lang/String;

    goto :goto_1
.end method

.method private q(J)Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v4, 0x3c

    .line 402
    rem-long v0, p1, v4

    long-to-int v0, v0

    .line 403
    div-long v2, p1, v4

    rem-long/2addr v2, v4

    long-to-int v1, v2

    .line 404
    const-wide/16 v2, 0xe10

    div-long v2, p1, v2

    long-to-int v2, v2

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->bw(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->bw(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 312
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object p2, p0, Lcom/android/settings/deviceinfo/Status;->WM:Ljava/lang/String;

    .line 316
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 320
    invoke-virtual {v0, p2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 323
    :cond_1
    return-void
.end method


# virtual methods
.method ln()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 381
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v2

    .line 382
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    div-long/2addr v0, v2

    .line 384
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 385
    const-wide/16 v0, 0x1

    .line 390
    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->WO:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->q(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/Status;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-super {p0, p1}, Lcom/android/settings/dA;->onCreate(Landroid/os/Bundle;)V

    .line 170
    new-instance v0, Lcom/android/settings/deviceinfo/Status$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$MyHandler;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 172
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->WL:Landroid/net/ConnectivityManager;

    .line 173
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->je:Landroid/net/wifi/WifiManager;

    .line 175
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 176
    const-string v0, "battery_level"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->WQ:Landroid/preference/Preference;

    .line 177
    const-string v0, "battery_status"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->WP:Landroid/preference/Preference;

    .line 178
    const-string v0, "bt_address"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->WR:Landroid/preference/Preference;

    .line 179
    const-string v0, "wifi_mac_address"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->WT:Landroid/preference/Preference;

    .line 180
    const-string v0, "wimax_mac_address"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->WU:Landroid/preference/Preference;

    .line 181
    const-string v0, "wifi_ip_address"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->WS:Landroid/preference/Preference;

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 184
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c00d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->WM:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c042b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->WN:Ljava/lang/String;

    .line 188
    const-string v0, "up_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->WO:Landroid/preference/Preference;

    .line 190
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->pf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->WR:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    iput-object v2, p0, Lcom/android/settings/deviceinfo/Status;->WR:Landroid/preference/Preference;

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->pg()Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->WU:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 197
    iput-object v2, p0, Lcom/android/settings/deviceinfo/Status;->WU:Landroid/preference/Preference;

    .line 200
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->WV:Landroid/content/IntentFilter;

    .line 201
    sget-object v1, Lcom/android/settings/deviceinfo/Status;->WK:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 202
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->WV:Landroid/content/IntentFilter;

    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->pl()V

    .line 207
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 208
    if-eqz v0, :cond_4

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 209
    const-string v1, "serial_number"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/Status;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    const-string v0, "sim_status"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aT(Ljava/lang/String;)V

    .line 217
    const-string v0, "imei_info"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aT(Ljava/lang/String;)V

    .line 222
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/Status$3;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/Status$3;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 249
    const-string v0, "permanent.hw.custom.serialno"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 251
    const-string v1, "serialno"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/Status;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_2
    return-void

    .line 211
    :cond_4
    const-string v0, "serial_number"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aT(Ljava/lang/String;)V

    goto :goto_1

    .line 253
    :cond_5
    const-string v0, "serialno"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->aT(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 274
    invoke-super {p0}, Lcom/android/settings/dA;->onPause()V

    .line 276
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zm:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 277
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->WW:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 265
    invoke-super {p0}, Lcom/android/settings/dA;->onResume()V

    .line 266
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->WW:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->WV:Landroid/content/IntentFilter;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 268
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zm:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 269
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 270
    return-void
.end method

.method pl()V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->ph()V

    .line 375
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->pi()V

    .line 376
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->pk()V

    .line 377
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->pj()V

    .line 378
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 260
    const/16 v0, 0x2c

    return v0
.end method
