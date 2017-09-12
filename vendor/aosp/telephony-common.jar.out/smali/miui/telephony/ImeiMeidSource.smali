.class public Lmiui/telephony/ImeiMeidSource;
.super Ljava/lang/Object;
.source "ImeiMeidSource.java"


# static fields
.field private static final DELAY_TIME:I = 0x7d0

.field private static final DEVICE_ID_KEY:Ljava/lang/String; = "device_id_key"

.field private static final EVENT_GET_DEVICE_IDENTITY_DONE_BASE:I = 0x12c

.field private static final EVENT_GET_DEVICE_IDENTITY_RETRY_BASE:I = 0x1f4

.field private static final EVENT_GET_IMEI_DONE_BASE:I = 0xc8

.field private static final EVENT_GET_IMEI_RETRY_BASE:I = 0x190

.field private static final EVENT_RADIO_AVAILABLE_BASE:I = 0x64

.field private static final IMEI_KEY_PREFIX:Ljava/lang/String; = "key_imei_slot"

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final MEID_KEY_PREFIX:Ljava/lang/String; = "key_meid_slot"

.field private static final RETRY_MAX_TIMES:I = 0xa


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mImeis:[Ljava/lang/String;

.field private mMeids:[Ljava/lang/String;

.field private mReadImeiException:[Ljava/lang/Throwable;

.field private mReadMeidException:[Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "ImeiMeidSource"

    sput-object v0, Lmiui/telephony/ImeiMeidSource;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v4, Lmiui/telephony/ImeiMeidSource$1;

    invoke-direct {v4, p0}, Lmiui/telephony/ImeiMeidSource$1;-><init>(Lmiui/telephony/ImeiMeidSource;)V

    iput-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mHandler:Landroid/os/Handler;

    .line 202
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 203
    .local v2, "phones":[Lcom/android/internal/telephony/Phone;
    array-length v4, v2

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    .line 204
    array-length v4, v2

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;

    .line 205
    array-length v4, v2

    new-array v4, v4, [Ljava/lang/Throwable;

    iput-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mReadImeiException:[Ljava/lang/Throwable;

    .line 206
    array-length v4, v2

    new-array v4, v4, [Ljava/lang/Throwable;

    iput-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mReadMeidException:[Ljava/lang/Throwable;

    .line 207
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 208
    iget-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mReadImeiException:[Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "init"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v1

    .line 209
    iget-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mReadMeidException:[Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "init"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v1

    .line 210
    iget-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aput-object v7, v4, v1

    .line 211
    iget-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;

    aput-object v7, v4, v1

    .line 212
    aget-object v4, v2, v1

    invoke-static {v4}, Lmiui/telephony/ImeiMeidSource;->getCommandsInterface(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    iget-object v5, p0, Lmiui/telephony/ImeiMeidSource;->mHandler:Landroid/os/Handler;

    add-int/lit8 v6, v1, 0x64

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_0
    sget-object v4, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 216
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v4, "device_id_key"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "key_imei_slot0"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 218
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 219
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "device_id_key"

    const-string v5, "key_imei_slot0"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 220
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    if-nez v4, :cond_1

    .line 221
    sget-object v4, Lmiui/telephony/ImeiMeidSource;->LOG_TAG:Ljava/lang/String;

    const-string v5, "failed to commit preference when init"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/ImeiMeidSource;

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/ImeiMeidSource;

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/ImeiMeidSource;

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/telephony/ImeiMeidSource;->mReadImeiException:[Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/telephony/ImeiMeidSource;)[Ljava/lang/Throwable;
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/ImeiMeidSource;

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/telephony/ImeiMeidSource;->mReadMeidException:[Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/telephony/ImeiMeidSource;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/ImeiMeidSource;

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/telephony/ImeiMeidSource;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lmiui/telephony/ImeiMeidSource;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/telephony/ImeiMeidSource;)V
    .locals 0
    .param p0, "x0"    # Lmiui/telephony/ImeiMeidSource;

    .prologue
    .line 28
    invoke-direct {p0}, Lmiui/telephony/ImeiMeidSource;->onDeviceIdLoaded()V

    return-void
.end method

.method public static getCommandsInterface(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 338
    instance-of v0, p0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/internal/telephony/PhoneProxy;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0

    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private onDeviceIdLoaded()V
    .locals 7

    .prologue
    .line 153
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 154
    iget-object v5, p0, Lmiui/telephony/ImeiMeidSource;->mReadImeiException:[Ljava/lang/Throwable;

    aget-object v5, v5, v2

    if-nez v5, :cond_0

    iget-object v5, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 192
    :cond_0
    :goto_1
    return-void

    .line 153
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_2
    sget-object v5, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 161
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 163
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    :goto_2
    iget-object v5, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_5

    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key_imei_slot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ro.ril.miui.imei"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ro.ril.miui.imei"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_3
    iget-object v5, p0, Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key_meid_slot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 163
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 173
    :cond_5
    const-string v5, "device_id_key"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 176
    iget-object v5, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v0, v5, v6

    .line 177
    const/4 v3, 0x0

    .line 178
    .local v3, "slotId":I
    const/4 v2, 0x1

    :goto_3
    iget-object v5, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_7

    .line 179
    iget-object v5, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_6

    .line 181
    iget-object v5, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v0, v5, v2

    .line 182
    move v3, v2

    .line 178
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 185
    :cond_7
    const-string v5, "device_id_key"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-direct {p0, v0, v3}, Lmiui/telephony/ImeiMeidSource;->sendDeviceIdReadyBroadcast(Ljava/lang/String;I)V

    .line 189
    .end local v3    # "slotId":I
    :cond_8
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-nez v5, :cond_0

    .line 190
    sget-object v5, Lmiui/telephony/ImeiMeidSource;->LOG_TAG:Ljava/lang/String;

    const-string v6, "failed to commit preference"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private sendDeviceIdReadyBroadcast(Ljava/lang/String;I)V
    .locals 3
    .param p1, "newImei"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_ID_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "device_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-static {v0, p2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 198
    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 199
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v6, 0x3

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 325
    .local v2, "sb":Ljava/lang/StringBuilder;
    sget-object v3, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "device_id_key"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "deviceId":Ljava/lang/String;
    const-string v3, " deviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v6}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 329
    const-string v3, " slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " imei="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4, v6}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mReadImeiException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mReadImeiException:[Ljava/lang/Throwable;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " meid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4, v6}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mReadMeidException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mReadMeidException:[Ljava/lang/Throwable;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImeiMeidSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-static {}, Lmiui/telephony/MiuiTelephony;->getInstance()Lmiui/telephony/MiuiTelephony;

    move-result-object v0

    const-string v1, "getDeviceId"

    invoke-virtual {v0, p1, v1}, Lmiui/telephony/MiuiTelephony;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 235
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "device_id_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    invoke-static {}, Lmiui/telephony/MiuiTelephony;->getInstance()Lmiui/telephony/MiuiTelephony;

    move-result-object v4

    const-string v5, "getDeviceIdList"

    invoke-virtual {v4, p1, v5}, Lmiui/telephony/MiuiTelephony;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    :cond_0
    return-object v0

    .line 243
    :cond_1
    sget-object v4, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 244
    .local v3, "sp":Landroid/content/SharedPreferences;
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    .local v0, "deviceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key_imei_slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "id":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 248
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key_meid_slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 252
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getImei(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-static {}, Lmiui/telephony/MiuiTelephony;->getInstance()Lmiui/telephony/MiuiTelephony;

    move-result-object v1

    const-string v2, "getImei"

    invoke-virtual {v1, p2, v2}, Lmiui/telephony/MiuiTelephony;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    const/4 v1, 0x0

    .line 307
    :goto_0
    return-object v1

    .line 302
    :cond_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    array-length v1, v1

    if-lt p1, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 303
    .local v0, "realSlotId":I
    :goto_1
    iget-object v1, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 304
    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_imei_slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local v0    # "realSlotId":I
    :cond_2
    move v0, p1

    .line 302
    goto :goto_1

    .line 307
    .restart local v0    # "realSlotId":I
    :cond_3
    iget-object v1, p0, Lmiui/telephony/ImeiMeidSource;->mImeis:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method getImeiList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    invoke-static {}, Lmiui/telephony/MiuiTelephony;->getInstance()Lmiui/telephony/MiuiTelephony;

    move-result-object v4

    const-string v5, "getSortedImeiList"

    invoke-virtual {v4, p1, v5}, Lmiui/telephony/MiuiTelephony;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 260
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 274
    :cond_0
    :goto_0
    return-object v2

    .line 263
    :cond_1
    sget-object v4, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 264
    .local v3, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/util/ArrayList;

    sget v4, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 265
    .local v2, "imeis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v4, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    if-ge v0, v4, :cond_3

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key_imei_slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "imei":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 268
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 271
    .end local v1    # "imei":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 272
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method public getMeid(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-static {}, Lmiui/telephony/MiuiTelephony;->getInstance()Lmiui/telephony/MiuiTelephony;

    move-result-object v1

    const-string v2, "getMeid"

    invoke-virtual {v1, p2, v2}, Lmiui/telephony/MiuiTelephony;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    const/4 v1, 0x0

    .line 320
    :goto_0
    return-object v1

    .line 315
    :cond_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;

    array-length v1, v1

    if-lt p1, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 316
    .local v0, "realSlotId":I
    :goto_1
    iget-object v1, p0, Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 317
    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_meid_slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local v0    # "realSlotId":I
    :cond_2
    move v0, p1

    .line 315
    goto :goto_1

    .line 320
    .restart local v0    # "realSlotId":I
    :cond_3
    iget-object v1, p0, Lmiui/telephony/ImeiMeidSource;->mMeids:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method getMeidList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    invoke-static {}, Lmiui/telephony/MiuiTelephony;->getInstance()Lmiui/telephony/MiuiTelephony;

    move-result-object v4

    const-string v5, "getSortedMeidList"

    invoke-virtual {v4, p1, v5}, Lmiui/telephony/MiuiTelephony;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 279
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 294
    :cond_0
    :goto_0
    return-object v2

    .line 282
    :cond_1
    sget-object v4, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 283
    .local v3, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/util/ArrayList;

    sget v4, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 284
    .local v2, "meids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v4, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    if-ge v0, v4, :cond_3

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key_meid_slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "meid":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 288
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 291
    .end local v1    # "meid":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 292
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method
