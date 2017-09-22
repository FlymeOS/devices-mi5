.class public Lcom/android/vendorsettings/TetherService;
.super Landroid/app/Service;
.source "TetherService.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private AO:I

.field private AP:Z

.field private AQ:Z

.field private AR:Ljava/util/ArrayList;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "TetherService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/vendorsettings/TetherService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 258
    new-instance v0, Lcom/android/vendorsettings/hS;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/hS;-><init>(Lcom/android/vendorsettings/TetherService;)V

    iput-object v0, p0, Lcom/android/vendorsettings/TetherService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private W(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 153
    :goto_0
    return-object v0

    .line 149
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 150
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 151
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 153
    goto :goto_0
.end method

.method static synthetic a(Lcom/android/vendorsettings/TetherService;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/vendorsettings/TetherService;->AO:I

    return v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/TetherService;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/TetherService;->aj(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/TetherService;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/vendorsettings/TetherService;->AQ:Z

    return p1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/android/vendorsettings/TetherService;->DEBUG:Z

    return v0
.end method

.method private aj(I)V
    .locals 4

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/vendorsettings/TetherService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    sget-boolean v1, Lcom/android/vendorsettings/TetherService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "TetherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending provisioning broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/TetherService;->AR:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    const-string v2, "TETHER_TYPE"

    iget-object v0, p0, Lcom/android/vendorsettings/TetherService;->AR:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 208
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/TetherService;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/TetherService;->AQ:Z

    .line 211
    return-void
.end method

.method private b(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 157
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 159
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 160
    if-eqz v0, :cond_0

    .line 161
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 163
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/TetherService;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/vendorsettings/TetherService;->AR:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/TetherService;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/vendorsettings/TetherService;->AP:Z

    return p1
.end method

.method static synthetic c(Lcom/android/vendorsettings/TetherService;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/vendorsettings/TetherService;->AP:Z

    return v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/TetherService;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/vendorsettings/TetherService;->if()V

    return-void
.end method

.method static synthetic e(Lcom/android/vendorsettings/TetherService;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/vendorsettings/TetherService;->ig()V

    return-void
.end method

.method public static f(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/vendorsettings/TetherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    const-string v1, "extraAddTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    const-string v1, "extraSetAlarm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 218
    return-void
.end method

.method static synthetic f(Lcom/android/vendorsettings/TetherService;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/vendorsettings/TetherService;->ii()V

    return-void
.end method

.method public static g(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 241
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/vendorsettings/TetherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    const-string v1, "extraRemTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 244
    return-void
.end method

.method static synthetic g(Lcom/android/vendorsettings/TetherService;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/vendorsettings/TetherService;->ih()V

    return-void
.end method

.method static synthetic h(Lcom/android/vendorsettings/TetherService;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/vendorsettings/TetherService;->AO:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/vendorsettings/TetherService;->AO:I

    return v0
.end method

.method private if()V
    .locals 1

    .prologue
    .line 170
    invoke-static {p0}, Lcom/android/b/g;->cK(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/b/g;->a(ZLandroid/content/Context;)Z

    .line 173
    :cond_0
    return-void
.end method

.method private ig()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/b/g;->a(ZLandroid/content/Context;)Z

    .line 177
    return-void
.end method

.method private ih()V
    .locals 2

    .prologue
    .line 180
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/TetherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 182
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 183
    return-void
.end method

.method private ii()V
    .locals 3

    .prologue
    .line 186
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 188
    new-instance v1, Lcom/android/vendorsettings/hR;

    invoke-direct {v1, p0, v0}, Lcom/android/vendorsettings/hR;-><init>(Lcom/android/vendorsettings/TetherService;Landroid/bluetooth/BluetoothAdapter;)V

    const/4 v2, 0x5

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 199
    :cond_0
    return-void
.end method

.method private ij()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/vendorsettings/TetherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    const-string v1, "extraRunProvision"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 225
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/TetherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 226
    invoke-virtual {p0}, Lcom/android/vendorsettings/TetherService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 228
    const v2, 0x36ee80

    mul-int/2addr v1, v2

    int-to-long v4, v1

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 230
    sget-boolean v1, Lcom/android/vendorsettings/TetherService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "TetherService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Scheduling alarm at interval "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    const/4 v1, 0x3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 233
    return-void
.end method

.method private ik()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    iget-object v0, p0, Lcom/android/vendorsettings/TetherService;->AR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    sget-boolean v0, Lcom/android/vendorsettings/TetherService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TetherService"

    const-string v1, "Tethering still active, not cancelling alarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/vendorsettings/TetherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 253
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/TetherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 254
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 255
    sget-boolean v0, Lcom/android/vendorsettings/TetherService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TetherService"

    const-string v1, "Tethering no longer active, canceling recheck"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 72
    sget-boolean v0, Lcom/android/vendorsettings/TetherService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TetherService"

    const-string v1, "Creating WifiProvisionService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/TetherService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/android/vendorsettings/TetherService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/vendorsettings/TetherService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 77
    const-string v0, "tetherPrefs"

    invoke-virtual {p0, v0, v4}, Lcom/android/vendorsettings/TetherService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    const-string v1, "currentTethers"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/TetherService;->W(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/TetherService;->AR:Ljava/util/ArrayList;

    .line 79
    iput v4, p0, Lcom/android/vendorsettings/TetherService;->AO:I

    .line 80
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/vendorsettings/TetherService;->AQ:Z

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "TetherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TetherService getting destroyed while mid-provisioning"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/TetherService;->AR:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/vendorsettings/TetherService;->AO:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    const-string v0, "tetherPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/TetherService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "currentTethers"

    iget-object v2, p0, Lcom/android/vendorsettings/TetherService;->AR:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/vendorsettings/TetherService;->b(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    sget-boolean v0, Lcom/android/vendorsettings/TetherService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "TetherService"

    const-string v1, "Destroying WifiProvisionService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/TetherService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/TetherService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 143
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 84
    const-string v1, "extraAddTetherType"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    const-string v1, "extraAddTetherType"

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 87
    iget-object v2, p0, Lcom/android/vendorsettings/TetherService;->AR:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    sget-boolean v2, Lcom/android/vendorsettings/TetherService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "TetherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding tether "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/android/vendorsettings/TetherService;->AR:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_1
    const-string v1, "extraRemTetherType"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    const-string v1, "extraRemTetherType"

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 95
    sget-boolean v2, Lcom/android/vendorsettings/TetherService;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "TetherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing tether "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_2
    iget-object v2, p0, Lcom/android/vendorsettings/TetherService;->AR:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 97
    if-ltz v1, :cond_3

    .line 98
    iget-object v2, p0, Lcom/android/vendorsettings/TetherService;->AR:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 101
    iget v2, p0, Lcom/android/vendorsettings/TetherService;->AO:I

    if-gt v1, v2, :cond_3

    iget v1, p0, Lcom/android/vendorsettings/TetherService;->AO:I

    if-lez v1, :cond_3

    .line 102
    iget v1, p0, Lcom/android/vendorsettings/TetherService;->AO:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/vendorsettings/TetherService;->AO:I

    .line 105
    :cond_3
    invoke-direct {p0}, Lcom/android/vendorsettings/TetherService;->ik()V

    .line 110
    :cond_4
    const-string v1, "extraSetAlarm"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/vendorsettings/TetherService;->AR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 112
    invoke-direct {p0}, Lcom/android/vendorsettings/TetherService;->ij()V

    .line 115
    :cond_5
    const-string v1, "extraEnableWifiTether"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 116
    iput-boolean v0, p0, Lcom/android/vendorsettings/TetherService;->AP:Z

    .line 119
    :cond_6
    const-string v1, "extraRunProvision"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 120
    iget v1, p0, Lcom/android/vendorsettings/TetherService;->AO:I

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/TetherService;->aj(I)V

    .line 128
    :cond_7
    :goto_0
    return v0

    .line 121
    :cond_8
    iget-boolean v1, p0, Lcom/android/vendorsettings/TetherService;->AQ:Z

    if-nez v1, :cond_7

    .line 123
    invoke-virtual {p0}, Lcom/android/vendorsettings/TetherService;->stopSelf()V

    .line 124
    const/4 v0, 0x2

    goto :goto_0
.end method
