.class public Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final Qs:Landroid/os/Handler;

.field protected final Qt:Landroid/preference/CheckBoxPreference;

.field protected final Qu:Lcom/android/b/b/Q;

.field private final Qv:Landroid/content/SharedPreferences;

.field private Qw:Z

.field private Qx:I

.field private Qy:I

.field private final Qz:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/b/b/Q;Landroid/preference/CheckBoxPreference;)V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qy:I

    .line 82
    new-instance v0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler$1;-><init>(Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;)V

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    new-instance v0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler$2;-><init>(Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;)V

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qz:Ljava/lang/Runnable;

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qs:Landroid/os/Handler;

    .line 106
    iput-object p1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qu:Lcom/android/b/b/Q;

    .line 107
    iput-object p2, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qt:Landroid/preference/CheckBoxPreference;

    .line 108
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qv:Landroid/content/SharedPreferences;

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->nt()V

    return-void
.end method

.method private bc(I)V
    .locals 6

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qt:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c0116

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 180
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-static {p1}, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->bd(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qt:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0115

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static bd(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 184
    div-int/lit8 v1, p0, 0x3c

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    mul-int/lit8 v1, v1, 0x3c

    sub-int v1, p0, v1

    .line 187
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 188
    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDiscoverableTimeout()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 223
    iget v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qy:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 224
    iget v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qy:I

    .line 244
    :goto_0
    return v0

    .line 228
    :cond_0
    const-string v1, "debug.bt.discoverable_time"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 229
    if-gez v1, :cond_4

    .line 230
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qv:Landroid/content/SharedPreferences;

    const-string v2, "bt_discoverable_timeout"

    const-string v3, "twomin"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    const-string v2, "never"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    :goto_1
    iput v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qy:I

    goto :goto_0

    .line 235
    :cond_1
    const-string v0, "onehour"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    const/16 v0, 0xe10

    goto :goto_1

    .line 237
    :cond_2
    const-string v0, "fivemin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    const/16 v0, 0x12c

    goto :goto_1

    .line 240
    :cond_3
    const/16 v0, 0x78

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private ns()V
    .locals 2

    .prologue
    .line 282
    iget v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qx:I

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qt:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c0118

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qt:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c0117

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private nt()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 290
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->getScanMode()I

    move-result v0

    .line 291
    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    .line 311
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 296
    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/vendorsettings/bluetooth/LocalBluetoothPreferences;->au(Landroid/content/Context;)J

    move-result-wide v2

    .line 298
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 300
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->bc(I)V

    goto :goto_0

    .line 304
    :cond_1
    sub-long v0, v2, v0

    div-long/2addr v0, v6

    long-to-int v0, v0

    .line 305
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->bc(I)V

    .line 307
    monitor-enter p0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qs:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qz:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 309
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qs:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qz:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 310
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setEnabled(Z)V
    .locals 8

    .prologue
    .line 145
    if-eqz p1, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v0

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 148
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/android/vendorsettings/bluetooth/LocalBluetoothPreferences;->a(Landroid/content/Context;J)V

    .line 150
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qu:Lcom/android/b/b/Q;

    const/16 v4, 0x17

    invoke-virtual {v1, v4, v0}, Lcom/android/b/b/Q;->setScanMode(II)Z

    .line 151
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->nt()V

    .line 153
    const-string v1, "BluetoothDiscoverableEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEnabled(): enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "timeout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-lez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/android/b/b/s;->c(Landroid/content/Context;J)V

    .line 170
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/b/b/s;->cO(Landroid/content/Context;)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qu:Lcom/android/b/b/Q;

    const/16 v1, 0x15

    const/16 v2, 0x78

    invoke-virtual {v0, v1, v2}, Lcom/android/b/b/Q;->setScanMode(II)Z

    .line 168
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/b/b/s;->cO(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public as(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qu:Lcom/android/b/b/Q;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_1

    .line 118
    iput-object p1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    .line 121
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->getScanMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->bf(I)V

    goto :goto_0
.end method

.method be(I)V
    .locals 1

    .prologue
    .line 266
    iput p1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qx:I

    .line 267
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->getScanMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->bf(I)V

    .line 268
    return-void
.end method

.method bf(I)V
    .locals 3

    .prologue
    .line 271
    const-string v0, "BluetoothDiscoverableEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleModeChanged(): mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qw:Z

    .line 274
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->nt()V

    .line 279
    :goto_0
    return-void

    .line 276
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qw:Z

    .line 277
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->ns()V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 139
    iget-boolean v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qw:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qw:Z

    .line 140
    iget-boolean v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qw:Z

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->setEnabled(Z)V

    .line 141
    return v1

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qu:Lcom/android/b/b/Q;

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qs:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qz:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothDiscoverableEnabler;->Qt:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method
