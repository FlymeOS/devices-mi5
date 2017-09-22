.class public Lcom/android/vendorsettings/deviceinfo/LockDeviceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockDeviceReceiver.java"


# instance fields
.field private PU:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private aX(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 124
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 125
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 128
    new-instance v1, Landroid/content/Intent;

    const-string v3, "miui.intent.action.DELAY_SIM_CHECK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 130
    const/4 v1, 0x1

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 131
    return-void
.end method

.method private aY(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 134
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 136
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.DELAY_SIM_CHECK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 139
    return-void
.end method

.method private static aZ(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MiuiSettings$Secure;->REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/vendorsettings/deviceinfo/LockDeviceReceiver;->ba(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MiuiSettings$Secure;->REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 153
    :cond_2
    return-void
.end method

.method public static ba(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 157
    const-string v2, "com.xiaomi"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 158
    array-length v3, v2

    if-gtz v3, :cond_0

    .line 162
    :goto_0
    return v0

    .line 161
    :cond_0
    aget-object v0, v2, v0

    .line 162
    const-string v2, "true"

    const-string v3, "extra_find_device_enabled"

    invoke-virtual {v1, v0, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private lJ()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/LockDeviceReceiver;->PU:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    .line 117
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/LockDeviceReceiver;->PU:Lcom/android/internal/widget/ILockSettings;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/LockDeviceReceiver;->PU:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private oW()Lcom/android/vendorsettings/deviceinfo/LockDeviceUtils;
    .locals 1

    .prologue
    .line 94
    :try_start_0
    const-string v0, "com.mediatek.gemini.GeminiLockDeviceUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/deviceinfo/LockDeviceUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 102
    :cond_0
    new-instance v0, Lcom/android/vendorsettings/deviceinfo/LockDeviceUtils;

    invoke-direct {v0}, Lcom/android/vendorsettings/deviceinfo/LockDeviceUtils;-><init>()V

    goto :goto_0
.end method

.method private u(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 107
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 108
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 109
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    .line 110
    invoke-direct {p0}, Lcom/android/vendorsettings/deviceinfo/LockDeviceReceiver;->lJ()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const-string v3, "lockscreen.password_salt"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/android/vendorsettings/n;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/deviceinfo/LockDeviceReceiver;->aX(Landroid/content/Context;)V

    .line 55
    invoke-static {p1}, Lcom/android/vendorsettings/deviceinfo/LockDeviceReceiver;->aZ(Landroid/content/Context;)V

    goto :goto_0

    .line 59
    :cond_2
    const-string v1, "miui.intent.action.LOCK_DEVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 61
    const-string v0, "android.intent.extra.lock_password"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "android.intent.extra.device_token"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 65
    :try_start_0
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 67
    invoke-direct {p0, p1, v1}, Lcom/android/vendorsettings/deviceinfo/LockDeviceReceiver;->u(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/android/vendorsettings/deviceinfo/LockDeviceReceiver;->lJ()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/widget/ILockSettings;->setRawLockPassword([BI)V

    .line 69
    invoke-direct {p0}, Lcom/android/vendorsettings/deviceinfo/LockDeviceReceiver;->lJ()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x20000

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V

    .line 70
    invoke-direct {p0}, Lcom/android/vendorsettings/deviceinfo/LockDeviceReceiver;->lJ()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string v1, "lockscreen.password_type_alternate"

    const-wide/32 v2, 0x20000

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MiuiSettings$Secure;->FIND_DEVICE_PIN_LOCK:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "new_numeric_password_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/vendorsettings/deviceinfo/LockDeviceReceiver;->oW()Lcom/android/vendorsettings/deviceinfo/LockDeviceUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/deviceinfo/LockDeviceUtils;->bb(Landroid/content/Context;)V

    goto :goto_0

    .line 80
    :cond_4
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "miui.intent.action.DELAY_SIM_CHECK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "LOADED"

    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 84
    :cond_5
    invoke-static {p1}, Lcom/android/vendorsettings/deviceinfo/LockDeviceReceiver;->aZ(Landroid/content/Context;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/deviceinfo/LockDeviceReceiver;->aY(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 86
    :cond_6
    const-string v1, "com.xiaomi.action.FIND_DEVICE_STATUS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "extra_find_device_enabled"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 88
    invoke-direct {p0}, Lcom/android/vendorsettings/deviceinfo/LockDeviceReceiver;->oW()Lcom/android/vendorsettings/deviceinfo/LockDeviceUtils;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/vendorsettings/deviceinfo/LockDeviceUtils;->k(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 73
    :catch_0
    move-exception v0

    goto :goto_1
.end method
