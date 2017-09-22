.class final Lcom/xiaomi/mipush/sdk/s;
.super Ljava/lang/Object;
.source "SyncInfoHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aYT:Z

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/s;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/xiaomi/mipush/sdk/s;->aYT:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 67
    const-string v0, "do sync info"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-static {}, Lcom/xiaomi/mipush/sdk/f;->FR()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>(Ljava/lang/String;Z)V

    .line 69
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/s;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/a;->du(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    .line 71
    sget-object v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->blY:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->eM(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 72
    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->FI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->eL(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 73
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/s;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->eN(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 75
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    .line 77
    iget-object v2, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v3, "app_version"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/s;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/s;->val$context:Landroid/content/Context;

    .line 78
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->G(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-static {v2, v3, v4}, Lcom/xiaomi/mipush/sdk/r;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v2, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v3, "app_version_code"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/s;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/s;->val$context:Landroid/content/Context;

    .line 80
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/channel/commonutils/android/AppInfoUtils;->H(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-static {v2, v3, v4}, Lcom/xiaomi/mipush/sdk/r;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v2, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v3, "push_sdk_vn"

    const-string v4, "3_1_4"

    invoke-static {v2, v3, v4}, Lcom/xiaomi/mipush/sdk/r;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v2, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v3, "push_sdk_vc"

    const/16 v4, 0x7598

    .line 84
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-static {v2, v3, v4}, Lcom/xiaomi/mipush/sdk/r;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v2, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v3, "token"

    .line 86
    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->FJ()Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-static {v2, v3, v4}, Lcom/xiaomi/mipush/sdk/r;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v2, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v3, "imei_md5"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/s;->val$context:Landroid/content/Context;

    .line 88
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/android/a;->df(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/g/d;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-static {v2, v3, v4}, Lcom/xiaomi/mipush/sdk/r;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v2, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v3, "reg_id"

    .line 90
    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->FK()Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-static {v2, v3, v4}, Lcom/xiaomi/mipush/sdk/r;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v2, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v3, "reg_secret"

    .line 92
    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->FL()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v2, v3, v1}, Lcom/xiaomi/mipush/sdk/r;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/s;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/f;->dH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, "-"

    .line 96
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 97
    iget-object v2, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v3, "accept_time"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/mipush/sdk/r;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-boolean v1, p0, Lcom/xiaomi/mipush/sdk/s;->aYT:Z

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v2, "aliases_md5"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/s;->val$context:Landroid/content/Context;

    .line 101
    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/f;->dv(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    # invokes: Lcom/xiaomi/mipush/sdk/r;->H(Ljava/util/List;)Ljava/lang/String;
    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/r;->access$100(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-static {v1, v2, v3}, Lcom/xiaomi/mipush/sdk/r;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v2, "topics_md5"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/s;->val$context:Landroid/content/Context;

    .line 103
    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/f;->dw(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    # invokes: Lcom/xiaomi/mipush/sdk/r;->H(Ljava/util/List;)Ljava/lang/String;
    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/r;->access$100(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-static {v1, v2, v3}, Lcom/xiaomi/mipush/sdk/r;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v2, "accounts_md5"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/s;->val$context:Landroid/content/Context;

    .line 105
    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/f;->dx(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    # invokes: Lcom/xiaomi/mipush/sdk/r;->H(Ljava/util/List;)Ljava/lang/String;
    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/r;->access$100(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-static {v1, v2, v3}, Lcom/xiaomi/mipush/sdk/r;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/s;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/o;->dL(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/o;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->bky:Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v6, v3}, Lcom/xiaomi/mipush/sdk/o;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 116
    return-void

    .line 107
    :cond_0
    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v2, "aliases"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/s;->val$context:Landroid/content/Context;

    .line 108
    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/f;->dv(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/r;->J(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-static {v1, v2, v3}, Lcom/xiaomi/mipush/sdk/r;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v2, "topics"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/s;->val$context:Landroid/content/Context;

    .line 110
    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/f;->dw(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/r;->J(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-static {v1, v2, v3}, Lcom/xiaomi/mipush/sdk/r;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->extra:Ljava/util/Map;

    const-string v2, "user_accounts"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/s;->val$context:Landroid/content/Context;

    .line 112
    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/f;->dx(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/r;->J(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-static {v1, v2, v3}, Lcom/xiaomi/mipush/sdk/r;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
