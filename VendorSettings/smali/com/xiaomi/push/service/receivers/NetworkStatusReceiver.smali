.class public Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatusReceiver.java"


# static fields
.field private static bfe:I

.field private static bff:I

.field private static bfg:I

.field private static bfh:Ljava/util/concurrent/BlockingQueue;

.field private static bfi:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 26
    sput v0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->bfe:I

    .line 27
    sput v0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->bff:I

    .line 28
    const/4 v0, 0x2

    sput v0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->bfg:I

    .line 29
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->bfh:Ljava/util/concurrent/BlockingQueue;

    .line 30
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->bfe:I

    sget v3, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->bff:I

    sget v0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->bfg:I

    int-to-long v4, v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->bfh:Ljava/util/concurrent/BlockingQueue;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->bfi:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->ea(Landroid/content/Context;)V

    return-void
.end method

.method private ea(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 43
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/o;->dL(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/o;->Ge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/a;->du(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->FM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/a;->du(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->FN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 49
    const-string v1, "com.xiaomi.push.network_status_changed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/d/d;->ds(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/o;->dL(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/o;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/o;->dL(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/o;->Gf()V

    .line 59
    :cond_1
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->bfi:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/xiaomi/push/service/receivers/a;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/push/service/receivers/a;-><init>(Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 40
    return-void
.end method
