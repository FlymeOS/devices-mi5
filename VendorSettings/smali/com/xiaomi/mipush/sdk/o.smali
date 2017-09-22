.class public Lcom/xiaomi/mipush/sdk/o;
.super Ljava/lang/Object;
.source "PushServiceClient.java"


# static fields
.field private static aYK:Lcom/xiaomi/mipush/sdk/o;

.field private static final aYM:Ljava/util/ArrayList;


# instance fields
.field private aYJ:Z

.field private aYL:Ljava/lang/String;

.field private aYN:Landroid/content/Intent;

.field private aYO:Ljava/lang/Integer;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/o;->aYM:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/o;->aYJ:Z

    .line 243
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/o;->aYN:Landroid/content/Intent;

    .line 304
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/o;->aYO:Ljava/lang/Integer;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    .line 67
    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/o;->aYL:Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/o;->FZ()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/o;->aYJ:Z

    .line 69
    return-void
.end method

.method private FZ()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 166
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 168
    :try_start_0
    const-string v2, "com.xiaomi.xmsf"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 170
    if-nez v1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x69

    if-lt v1, v2, :cond_0

    .line 179
    const/4 v0, 0x1

    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private Ga()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/o;->Ge()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v2, "com.xiaomi.xmsf"

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/o;->Gb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v2, "mipush_app_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/o;->Gc()V

    .line 198
    :goto_0
    return-object v0

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/o;->Gd()V

    .line 194
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    const-string v4, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 195
    const-string v2, "mipush_app_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private Gb()Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 207
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v1, 0x6a

    if-lt v0, v1, :cond_0

    .line 208
    const-string v0, "com.xiaomi.push.service.XMPushService"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-object v0

    .line 210
    :catch_0
    move-exception v0

    .line 213
    :cond_0
    const-string v0, "com.xiaomi.xmsf.push.service.XMPushService"

    goto :goto_0
.end method

.method private Gc()V
    .locals 4

    .prologue
    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 219
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    const-string v3, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 220
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private Gd()V
    .locals 4

    .prologue
    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 229
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    const-string v3, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private Gi()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 339
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 340
    const-string v2, "miui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "xiaomi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private H(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/o;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/o;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/o;->aYO:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaomi/mipush/sdk/o;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/o;->aYO:Ljava/lang/Integer;

    return-object v0
.end method

.method public static dL(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/o;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/xiaomi/mipush/sdk/o;->aYK:Lcom/xiaomi/mipush/sdk/o;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/xiaomi/mipush/sdk/o;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/o;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/o;->aYK:Lcom/xiaomi/mipush/sdk/o;

    .line 62
    :cond_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/o;->aYK:Lcom/xiaomi/mipush/sdk/o;

    return-object v0
.end method


# virtual methods
.method public FY()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/o;->Ga()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/o;->H(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method public Ge()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 238
    iget-boolean v1, p0, Lcom/xiaomi/mipush/sdk/o;->aYJ:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    .line 239
    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/a;->du(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->Fu()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Gf()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/o;->aYN:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/o;->aYN:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/o;->H(Landroid/content/Intent;)V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/o;->aYN:Landroid/content/Intent;

    .line 250
    :cond_0
    return-void
.end method

.method public Gg()V
    .locals 9

    .prologue
    .line 268
    sget-object v7, Lcom/xiaomi/mipush/sdk/o;->aYM:Ljava/util/ArrayList;

    monitor-enter v7

    .line 269
    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/o;->aYM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/q;

    .line 270
    iget-object v1, v0, Lcom/xiaomi/mipush/sdk/q;->aYQ:Lorg/apache/thrift/TBase;

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/q;->aYR:Lcom/xiaomi/xmpush/thrift/ActionType;

    iget-boolean v3, v0, Lcom/xiaomi/mipush/sdk/q;->aYS:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/o;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZZLcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)V

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 272
    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/o;->aYM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 273
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    return-void
.end method

.method public Gh()V
    .locals 3

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/o;->Ga()Landroid/content/Intent;

    move-result-object v0

    .line 298
    const-string v1, "com.xiaomi.mipush.SET_NOTIFICATION_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    sget-object v1, Lcom/xiaomi/push/service/M;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    sget-object v1, Lcom/xiaomi/push/service/M;->bel:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/g/c;->cR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/o;->H(Landroid/content/Intent;)V

    .line 302
    return-void
.end method

.method public final a(Lcom/xiaomi/xmpush/thrift/XmPushActionRegistration;Z)V
    .locals 4

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/o;->aYN:Landroid/content/Intent;

    .line 73
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/o;->Ga()Landroid/content/Intent;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->bkq:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-static {v1, p1, v2}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v1

    .line 76
    invoke-static {v1}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    .line 77
    if-nez v1, :cond_0

    .line 78
    const-string v0, "register fail, because msgBytes is null."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v2, "com.xiaomi.mipush.REGISTER_APP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v2, "mipush_app_id"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/a;->du(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v3

    .line 83
    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/a;->FI()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v2, "mipush_payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 85
    const-string v1, "mipush_session"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/o;->aYL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v1, "mipush_env_chanage"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    const-string v1, "mipush_env_type"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/a;->du(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/a;->Fu()I

    move-result v2

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/d/d;->ds(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/o;->isProvisioned()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/o;->H(Landroid/content/Intent;)V

    goto :goto_0

    .line 92
    :cond_1
    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/o;->aYN:Landroid/content/Intent;

    goto :goto_0
.end method

.method public final a(Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistration;)V
    .locals 4

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/o;->Ga()Landroid/content/Intent;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->bkr:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-static {v1, p1, v2}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v1

    .line 104
    invoke-static {v1}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    .line 105
    if-nez v1, :cond_0

    .line 106
    const-string v0, "unregister fail, because msgBytes is null."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    const-string v2, "com.xiaomi.mipush.UNREGISTER_APP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v2, "mipush_app_id"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/a;->du(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v3

    .line 111
    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/a;->FI()Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v2, "mipush_payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 113
    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/o;->H(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)V
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->bkq:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {p2, v0}, Lcom/xiaomi/xmpush/thrift/ActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/xiaomi/mipush/sdk/o;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 118
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;Z)V
    .locals 3

    .prologue
    .line 254
    new-instance v0, Lcom/xiaomi/mipush/sdk/q;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/q;-><init>()V

    .line 255
    iput-object p1, v0, Lcom/xiaomi/mipush/sdk/q;->aYQ:Lorg/apache/thrift/TBase;

    .line 256
    iput-object p2, v0, Lcom/xiaomi/mipush/sdk/q;->aYR:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 257
    iput-boolean p3, v0, Lcom/xiaomi/mipush/sdk/q;->aYS:Z

    .line 258
    sget-object v1, Lcom/xiaomi/mipush/sdk/o;->aYM:Ljava/util/ArrayList;

    monitor-enter v1

    .line 259
    :try_start_0
    sget-object v2, Lcom/xiaomi/mipush/sdk/o;->aYM:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v0, Lcom/xiaomi/mipush/sdk/o;->aYM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    .line 262
    sget-object v0, Lcom/xiaomi/mipush/sdk/o;->aYM:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 264
    :cond_0
    monitor-exit v1

    .line 265
    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 127
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/o;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZZLcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)V

    .line 128
    return-void
.end method

.method public final a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZZLcom/xiaomi/xmpush/thrift/PushMetaInfo;Z)V
    .locals 9

    .prologue
    .line 132
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    .line 133
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/a;->du(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->FI()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 132
    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/mipush/sdk/o;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZZLcom/xiaomi/xmpush/thrift/PushMetaInfo;ZLjava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public final a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZZLcom/xiaomi/xmpush/thrift/PushMetaInfo;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 139
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/a;->du(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->FM()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    if-eqz p4, :cond_0

    .line 141
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/mipush/sdk/o;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;Z)V

    .line 163
    :goto_0
    return-void

    .line 143
    :cond_0
    const-string v0, "drop the message before initialization."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/o;->Ga()Landroid/content/Intent;

    move-result-object v6

    .line 147
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p7

    move-object v5, p8

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    .line 149
    if-eqz p5, :cond_2

    .line 150
    invoke-virtual {v0, p5}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->c(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 153
    :cond_2
    invoke-static {v0}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v0

    .line 154
    if-nez v0, :cond_3

    .line 155
    const-string v0, "send message fail, because msgBytes is null."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_3
    const-string v1, "com.xiaomi.mipush.SEND_MESSAGE"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v1, "mipush_payload"

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 160
    const-string v0, "com.xiaomi.mipush.MESSAGE_CACHE"

    invoke-virtual {v6, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    invoke-direct {p0, v6}, Lcom/xiaomi/mipush/sdk/o;->H(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public eI(I)V
    .locals 3

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/o;->Ga()Landroid/content/Intent;

    move-result-object v0

    .line 279
    const-string v1, "com.xiaomi.mipush.CLEAR_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    sget-object v1, Lcom/xiaomi/push/service/M;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    sget-object v1, Lcom/xiaomi/push/service/M;->bej:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/o;->H(Landroid/content/Intent;)V

    .line 283
    return-void
.end method

.method public isProvisioned()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 307
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/o;->Ge()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/o;->Gi()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/o;->aYO:Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/Q;->dY(Landroid/content/Context;)Lcom/xiaomi/push/service/Q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/push/service/Q;->IE()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/mipush/sdk/o;->aYO:Ljava/lang/Integer;

    .line 311
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/o;->aYO:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 312
    new-instance v2, Lcom/xiaomi/mipush/sdk/p;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/xiaomi/mipush/sdk/p;-><init>(Lcom/xiaomi/mipush/sdk/o;Landroid/os/Handler;)V

    .line 325
    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/o;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/service/Q;->dY(Landroid/content/Context;)Lcom/xiaomi/push/service/Q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/Q;->IF()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/o;->aYO:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    .line 333
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 331
    goto :goto_0
.end method
