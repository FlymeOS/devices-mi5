.class public Lcom/xiaomi/mipush/sdk/d;
.super Landroid/app/IntentService;
.source "MessageHandleService.java"


# static fields
.field private static aYy:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/d;->aYy:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "MessageHandleThread"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static a(Lcom/xiaomi/mipush/sdk/e;)V
    .locals 1

    .prologue
    .line 22
    if-eqz p0, :cond_0

    .line 23
    sget-object v0, Lcom/xiaomi/mipush/sdk/d;->aYy:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 33
    if-eqz p1, :cond_0

    .line 35
    sget-object v0, Lcom/xiaomi/mipush/sdk/d;->aYy:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/e;

    .line 36
    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 40
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/e;->FQ()Lcom/xiaomi/mipush/sdk/n;

    move-result-object v1

    .line 41
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/e;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 42
    const-string v2, "message_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 43
    packed-switch v2, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 58
    :pswitch_2
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/l;->dK(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/l;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/l;->G(Landroid/content/Intent;)Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    instance-of v2, v0, Lcom/xiaomi/mipush/sdk/MiPushMessage;

    if-eqz v2, :cond_5

    .line 61
    check-cast v0, Lcom/xiaomi/mipush/sdk/MiPushMessage;

    .line 62
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->FU()Z

    move-result v2

    if-nez v2, :cond_2

    .line 63
    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/n;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    .line 65
    :cond_2
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getPassThrough()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 66
    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/n;->b(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 49
    :pswitch_3
    :try_start_1
    const-string v2, "key_command"

    .line 50
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    .line 51
    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    .line 52
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommand()Ljava/lang/String;

    move-result-object v2

    const-string v3, "register"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/n;->b(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->isNotified()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 69
    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    goto :goto_0

    .line 71
    :cond_4
    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/n;->d(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    goto :goto_0

    .line 74
    :cond_5
    instance-of v2, v0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    if-eqz v2, :cond_0

    .line 75
    check-cast v0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    .line 76
    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/n;->c(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    .line 77
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommand()Ljava/lang/String;

    move-result-object v2

    const-string v3, "register"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/n;->b(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
