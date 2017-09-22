.class public Lcom/android/vendorsettings/bluetooth/GattProfile;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "GattProfile.java"

# interfaces
.implements Lcom/android/b/b/T;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final Qu:Lcom/android/b/b/Q;

.field private final RG:Lcom/android/b/b/J;

.field private RV:Landroid/bluetooth/BluetoothManager;

.field private RW:Ljava/util/HashMap;

.field private RX:Ljava/util/List;

.field private RY:Lmiui/bluetooth/ble/MiBleDeviceManager;

.field private final Rt:Lcom/android/b/b/U;

.field private fi:Landroid/security/MiuiLockPatternUtils;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Landroid/database/ContentObserver;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/android/vendorsettings/bluetooth/GattProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/vendorsettings/bluetooth/GattProfile;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/b/b/Q;Lcom/android/b/b/J;Lcom/android/b/b/U;Lmiui/bluetooth/ble/MiBleDeviceManager;)V
    .locals 4

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RX:Ljava/util/List;

    .line 58
    new-instance v0, Lcom/android/vendorsettings/bluetooth/GattProfile$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/bluetooth/GattProfile$1;-><init>(Lcom/android/vendorsettings/bluetooth/GattProfile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->mObserver:Landroid/database/ContentObserver;

    .line 70
    iput-object p1, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->Qu:Lcom/android/b/b/Q;

    .line 72
    iput-object p3, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RG:Lcom/android/b/b/J;

    .line 73
    iput-object p4, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->Rt:Lcom/android/b/b/U;

    .line 74
    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RV:Landroid/bluetooth/BluetoothManager;

    .line 75
    iput-object p5, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RY:Lmiui/bluetooth/ble/MiBleDeviceManager;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RW:Ljava/util/HashMap;

    .line 77
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->fi:Landroid/security/MiuiLockPatternUtils;

    .line 78
    const-string v0, "content://com.android.bluetooth.ble.settingsprovider/devices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->mUri:Landroid/net/Uri;

    .line 79
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/GattProfile;->nS()V

    .line 80
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->mHandler:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/bluetooth/GattProfile;)Lcom/android/b/b/J;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RG:Lcom/android/b/b/J;

    return-object v0
.end method

.method private static a(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 324
    if-nez p0, :cond_0

    move v0, v1

    .line 332
    :goto_0
    return v0

    .line 327
    :cond_0
    :try_start_0
    const-class v2, Landroid/bluetooth/BluetoothGatt;

    const-string v3, "refresh"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 328
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    const/4 v0, 0x1

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 332
    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public cleanup()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->mObserver:Landroid/database/ContentObserver;

    .line 87
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RW:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    .line 88
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RW:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 91
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 194
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RW:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    .line 195
    if-nez v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1, p0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 197
    if-nez v0, :cond_0

    .line 199
    sget-object v0, Lcom/android/vendorsettings/bluetooth/GattProfile;->TAG:Ljava/lang/String;

    const-string v2, "connectGatt() return null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 222
    :goto_0
    return v0

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RW:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_1
    invoke-static {v0}, Lcom/android/vendorsettings/bluetooth/GattProfile;->a(Landroid/bluetooth/BluetoothGatt;)Z

    .line 218
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RG:Lcom/android/b/b/J;

    invoke-virtual {v0, p1}, Lcom/android/b/b/J;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {v0, p0, v2}, Lcom/android/b/b/H;->a(Lcom/android/b/b/T;I)V

    :cond_2
    move v0, v2

    .line 222
    goto :goto_0

    .line 204
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/bluetooth/GattProfile;->g(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 205
    if-eq v3, v2, :cond_4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    :cond_4
    move v0, v2

    .line 207
    goto :goto_0

    .line 209
    :cond_5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    move-result v3

    .line 210
    if-nez v3, :cond_1

    .line 212
    sget-object v0, Lcom/android/vendorsettings/bluetooth/GattProfile;->TAG:Ljava/lang/String;

    const-string v2, "__clientConnect return false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 213
    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RW:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    .line 228
    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1, p0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 230
    if-nez v0, :cond_0

    .line 232
    sget-object v0, Lcom/android/vendorsettings/bluetooth/GattProfile;->TAG:Ljava/lang/String;

    const-string v2, "disconnectGatt() return null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 247
    :goto_0
    return v0

    .line 237
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/bluetooth/GattProfile;->g(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 238
    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_2

    .line 240
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 241
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RG:Lcom/android/b/b/J;

    invoke-virtual {v0, p1}, Lcom/android/b/b/J;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_2

    .line 243
    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/b/b/H;->a(Lcom/android/b/b/T;I)V

    :cond_2
    move v0, v2

    .line 247
    goto :goto_0
.end method

.method public g(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RV:Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    return v0
.end method

.method public h(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public i(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public j(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public k(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public l(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RX:Ljava/util/List;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public m(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .prologue
    .line 299
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/bluetooth/GattProfile;->l(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized nS()V
    .locals 8

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :try_start_1
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->fi:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 118
    iget-object v3, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RG:Lcom/android/b/b/J;

    invoke-virtual {v3, v1}, Lcom/android/b/b/J;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v3

    .line 119
    if-nez v3, :cond_0

    .line 120
    sget-object v3, Lcom/android/vendorsettings/bluetooth/GattProfile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GattProfile get bluetooth unlock device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v3, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RG:Lcom/android/b/b/J;

    iget-object v4, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->Qu:Lcom/android/b/b/Q;

    iget-object v5, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->Rt:Lcom/android/b/b/U;

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/b/b/J;->a(Lcom/android/b/b/Q;Lcom/android/b/b/U;Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/android/b/b/H;->refresh()V

    .line 124
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RY:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getBoundDevices()Ljava/util/List;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_4

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 133
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RG:Lcom/android/b/b/J;

    invoke-virtual {v1, v4}, Lcom/android/b/b/J;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v1

    .line 134
    if-nez v1, :cond_3

    .line 135
    sget-object v1, Lcom/android/vendorsettings/bluetooth/GattProfile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GattProfile found new device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RG:Lcom/android/b/b/J;

    iget-object v5, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->Qu:Lcom/android/b/b/Q;

    iget-object v6, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->Rt:Lcom/android/b/b/U;

    invoke-virtual {v1, v5, v6, v4}, Lcom/android/b/b/J;->a(Lcom/android/b/b/Q;Lcom/android/b/b/U;Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v1

    .line 137
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v5

    .line 138
    if-eqz v5, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 139
    :cond_2
    iget-object v5, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RY:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {v5, v0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getScanResult(Ljava/lang/String;)Lmiui/bluetooth/ble/ScanResult;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_3

    .line 141
    invoke-virtual {v0}, Lmiui/bluetooth/ble/ScanResult;->getScanRecord()Lmiui/bluetooth/ble/ScanRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 142
    if-eqz v0, :cond_3

    .line 144
    :try_start_3
    invoke-virtual {v0}, Lmiui/bluetooth/ble/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/b/b/H;->setName(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    .line 152
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {v0}, Lcom/android/b/b/H;->refresh()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 145
    :catch_1
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move-object v0, v1

    goto :goto_2

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 159
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 160
    iget-object v3, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RG:Lcom/android/b/b/J;

    invoke-virtual {v3, v0}, Lcom/android/b/b/J;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v3

    .line 161
    if-eqz v3, :cond_5

    .line 163
    iget-object v4, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/vendorsettings/bluetooth/GattProfile$2;

    invoke-direct {v5, p0, v0, v3}, Lcom/android/vendorsettings/bluetooth/GattProfile$2;-><init>(Lcom/android/vendorsettings/bluetooth/GattProfile;Landroid/bluetooth/BluetoothDevice;Lcom/android/b/b/H;)V

    const-wide/16 v6, 0x32

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 178
    :cond_6
    iput-object v2, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RX:Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 180
    monitor-exit p0

    return-void
.end method

.method public nT()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public nU()Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public nV()I
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x7

    return v0
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .prologue
    .line 381
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 382
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    .prologue
    .line 369
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 370
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    .prologue
    .line 375
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 376
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    .prologue
    .line 353
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/GattProfile;->RG:Lcom/android/b/b/J;

    invoke-virtual {v1, v0}, Lcom/android/b/b/J;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v0

    .line 355
    if-nez v0, :cond_0

    .line 359
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-virtual {v0, p0, p3}, Lcom/android/b/b/H;->a(Lcom/android/b/b/T;I)V

    .line 358
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    goto :goto_0
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    .prologue
    .line 386
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 387
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    .prologue
    .line 391
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 392
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    .prologue
    .line 401
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    .line 402
    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    .prologue
    .line 396
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V

    .line 397
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    .prologue
    .line 363
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 364
    return-void
.end method
