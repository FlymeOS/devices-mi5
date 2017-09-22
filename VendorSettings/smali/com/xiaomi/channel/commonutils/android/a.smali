.class public Lcom/xiaomi/channel/commonutils/android/a;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static aXo:Ljava/lang/String;

.field private static aXp:Ljava/lang/String;

.field private static aXq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/xiaomi/channel/commonutils/android/a;->aXo:Ljava/lang/String;

    .line 21
    sput-object v0, Lcom/xiaomi/channel/commonutils/android/a;->aXp:Ljava/lang/String;

    .line 22
    sput-object v0, Lcom/xiaomi/channel/commonutils/android/a;->aXq:Ljava/lang/String;

    return-void
.end method

.method public static Fe()Ljava/lang/String;
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 41
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 43
    :cond_0
    return-object v0
.end method

.method public static Ff()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 147
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    const-string v1, "android.os.UserHandle"

    const-string v2, "myUserId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/xiaomi/channel/commonutils/e/a;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_0

    .line 154
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static de(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 49
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static df(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    const/16 v1, 0xa

    .line 59
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/a;->dg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_0
    if-nez v0, :cond_0

    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    .line 62
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_1
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/a;->dg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    goto :goto_1

    .line 68
    :cond_0
    return-object v0
.end method

.method public static dg(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 72
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/a;->aXo:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 73
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/a;->aXo:Ljava/lang/String;

    .line 106
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/b;->Fg()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    const-string v0, "miui.telephony.TelephonyManager"

    .line 82
    const-string v0, "miui.telephony.TelephonyManager"

    const-string v2, "getDefault"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/xiaomi/channel/commonutils/e/a;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    const-string v2, "getMiuiDeviceId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/xiaomi/channel/commonutils/e/a;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_3

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 86
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    :goto_1
    if-nez v0, :cond_2

    .line 93
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/a;->dh(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 95
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_2
    if-eqz v0, :cond_0

    .line 100
    sput-object v0, Lcom/xiaomi/channel/commonutils/android/a;->aXo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 106
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private static dh(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 117
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 120
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized di(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 124
    const-class v1, Lcom/xiaomi/channel/commonutils/android/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/a;->aXq:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/a;->aXq:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :goto_0
    monitor-exit v1

    return-object v0

    .line 128
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/a;->de(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/a;->Fe()Ljava/lang/String;

    move-result-object v2

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/g/d;->cS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/a;->aXq:Ljava/lang/String;

    .line 132
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/a;->aXq:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static dj(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 137
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dk(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 161
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    .line 166
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 25
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/a;->aXp:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 27
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/a;->df(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/android/a;->de(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/a;->Fe()Ljava/lang/String;

    move-result-object v2

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/g/d;->cS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/a;->aXp:Ljava/lang/String;

    .line 35
    :cond_0
    sget-object v0, Lcom/xiaomi/channel/commonutils/android/a;->aXp:Ljava/lang/String;

    return-object v0
.end method
