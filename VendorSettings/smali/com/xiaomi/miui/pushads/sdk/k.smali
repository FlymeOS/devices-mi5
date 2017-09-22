.class public Lcom/xiaomi/miui/pushads/sdk/k;
.super Lcom/xiaomi/mipush/sdk/h;
.source "NotifyAdsManagerNew.java"

# interfaces
.implements Lcom/xiaomi/miui/pushads/sdk/c;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static aZt:Lcom/xiaomi/miui/pushads/sdk/k;


# instance fields
.field private aZg:Landroid/content/SharedPreferences;

.field private aZh:Ljava/lang/String;

.field private aZj:Lcom/xiaomi/miui/pushads/sdk/g;

.field private aZl:I

.field private aZm:I

.field private aZu:Lcom/xiaomi/miui/pushads/sdk/e;

.field private aZv:Ljava/lang/String;

.field private aZw:Lcom/xiaomi/miui/pushads/sdk/b/c;

.field private aZx:Lcom/xiaomi/miui/pushads/sdk/a/a;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private sD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/xiaomi/miui/pushads/sdk/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/xiaomi/miui/pushads/sdk/k;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized Gm()Lcom/xiaomi/miui/pushads/sdk/k;
    .locals 2

    .prologue
    .line 499
    const-class v0, Lcom/xiaomi/miui/pushads/sdk/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/miui/pushads/sdk/k;->aZt:Lcom/xiaomi/miui/pushads/sdk/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private K(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 700
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/miui/pushads/sdk/k;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 701
    return-void
.end method

.method private a(Lcom/xiaomi/miui/pushads/sdk/h;I)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 803
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->mContext:Landroid/content/Context;

    const-class v2, Lcom/xiaomi/miui/pushads/sdk/MiPushRelayTraceService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 805
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 807
    invoke-virtual {p1}, Lcom/xiaomi/miui/pushads/sdk/h;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 808
    const-string v2, "intenttype"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 811
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZu:Lcom/xiaomi/miui/pushads/sdk/e;

    if-eqz v2, :cond_0

    .line 812
    new-instance v2, Lcom/xiaomi/miui/pushads/sdk/h;

    invoke-direct {v2, p1}, Lcom/xiaomi/miui/pushads/sdk/h;-><init>(Lcom/xiaomi/miui/pushads/sdk/h;)V

    .line 813
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZu:Lcom/xiaomi/miui/pushads/sdk/e;

    invoke-interface {v3, v2}, Lcom/xiaomi/miui/pushads/sdk/e;->b(Lcom/xiaomi/miui/pushads/sdk/h;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 814
    if-eqz v2, :cond_0

    .line 815
    const-string v3, "pendingintent"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 819
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 821
    iget-wide v2, p1, Lcom/xiaomi/miui/pushads/sdk/h;->id:J

    long-to-int v1, v2

    .line 822
    mul-int/2addr v1, v1

    add-int/2addr v1, p2

    .line 825
    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/k;->mContext:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 828
    return-object v0
.end method

.method private a(Lcom/xiaomi/miui/pushads/sdk/h;ILcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;)V
    .locals 5

    .prologue
    .line 834
    const/4 v0, 0x0

    .line 835
    new-instance v1, Lcom/xiaomi/miui/pushads/sdk/h;

    invoke-direct {v1, p1}, Lcom/xiaomi/miui/pushads/sdk/h;-><init>(Lcom/xiaomi/miui/pushads/sdk/h;)V

    .line 837
    iget-object v2, p1, Lcom/xiaomi/miui/pushads/sdk/h;->aZb:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 838
    iget-object v2, p1, Lcom/xiaomi/miui/pushads/sdk/h;->aZb:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 839
    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZu:Lcom/xiaomi/miui/pushads/sdk/e;

    if-eqz v2, :cond_0

    .line 840
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZu:Lcom/xiaomi/miui/pushads/sdk/e;

    invoke-interface {v0, v1}, Lcom/xiaomi/miui/pushads/sdk/e;->c(Lcom/xiaomi/miui/pushads/sdk/h;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 845
    :cond_0
    if-nez v0, :cond_1

    .line 868
    :goto_0
    return-void

    .line 847
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/k;->mContext:Landroid/content/Context;

    const-class v3, Lcom/xiaomi/miui/pushads/sdk/MiPushRelayTraceService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 848
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 850
    invoke-virtual {p1}, Lcom/xiaomi/miui/pushads/sdk/h;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 851
    const-string v3, "intenttype"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 855
    const-string v3, "notifyid"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 858
    const-string v3, "pendingintent"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 859
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 861
    iget-wide v2, p1, Lcom/xiaomi/miui/pushads/sdk/h;->id:J

    long-to-int v0, v2

    .line 862
    mul-int/2addr v0, v0

    add-int/lit8 v0, v0, 0x3

    .line 864
    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/k;->mContext:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, v0, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 867
    iget-object v1, p1, Lcom/xiaomi/miui/pushads/sdk/h;->aZb:Ljava/lang/String;

    invoke-virtual {p3, v1, v0}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->a(Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private a(Lcom/xiaomi/miui/pushads/sdk/a/b;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 924
    .line 927
    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZB:I

    if-gtz v2, :cond_1

    .line 928
    const-string v1, "white user"

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    .line 953
    :cond_0
    :goto_0
    return v0

    .line 934
    :cond_1
    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZy:I

    packed-switch v2, :pswitch_data_0

    move v2, v1

    move v3, v1

    .line 947
    :goto_1
    if-le v3, v2, :cond_0

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reach up limit---already count\uff1a "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u4e0a\u9650: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    move v0, v1

    .line 953
    goto :goto_0

    .line 936
    :pswitch_0
    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZB:I

    mul-int/lit8 v2, v2, 0x4

    .line 937
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bubble uplimit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    .line 938
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZg:Landroid/content/SharedPreferences;

    const-string v4, "bubblecount"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    .line 941
    :pswitch_1
    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZB:I

    .line 942
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify uplimit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    .line 943
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZg:Landroid/content/SharedPreferences;

    const-string v4, "notifycount"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    .line 934
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Lcom/xiaomi/miui/pushads/sdk/a/b;)V
    .locals 4

    .prologue
    .line 770
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZw:Lcom/xiaomi/miui/pushads/sdk/b/c;

    if-eqz v0, :cond_0

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->receivedT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZw:Lcom/xiaomi/miui/pushads/sdk/b/c;

    new-instance v1, Lcom/xiaomi/miui/pushads/sdk/a/d;

    invoke-direct {v1, p1}, Lcom/xiaomi/miui/pushads/sdk/a/d;-><init>(Lcom/xiaomi/miui/pushads/sdk/a/b;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/miui/pushads/sdk/b/c;->c(Lcom/xiaomi/miui/pushads/sdk/a/d;)V

    .line 774
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .prologue
    .line 705
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/j;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZg:Landroid/content/SharedPreferences;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/miui/pushads/sdk/j;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;Lcom/xiaomi/miui/pushads/sdk/c;)V

    .line 707
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/j;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 708
    return-void
.end method

.method private b(Ljava/lang/String;JI)V
    .locals 2

    .prologue
    .line 957
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZm:I

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5b58\u5165cache \u7684\u6570\u91cf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/d;->cY(Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZj:Lcom/xiaomi/miui/pushads/sdk/g;

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZj:Lcom/xiaomi/miui/pushads/sdk/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaomi/miui/pushads/sdk/g;->a(Ljava/lang/String;JI)V

    .line 961
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZj:Lcom/xiaomi/miui/pushads/sdk/g;

    invoke-virtual {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->Gk()V

    .line 963
    :cond_0
    return-void
.end method

.method private c(Lcom/xiaomi/miui/pushads/sdk/a/b;)V
    .locals 2

    .prologue
    .line 777
    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/k;->b(Lcom/xiaomi/miui/pushads/sdk/a/b;)V

    .line 779
    iget v0, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 780
    check-cast p1, Lcom/xiaomi/miui/pushads/sdk/a;

    .line 781
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZu:Lcom/xiaomi/miui/pushads/sdk/e;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZu:Lcom/xiaomi/miui/pushads/sdk/e;

    invoke-interface {v0, p1}, Lcom/xiaomi/miui/pushads/sdk/e;->a(Lcom/xiaomi/miui/pushads/sdk/a;)V

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    iget v0, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 785
    check-cast p1, Lcom/xiaomi/miui/pushads/sdk/h;

    .line 787
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->get notify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZu:Lcom/xiaomi/miui/pushads/sdk/e;

    if-eqz v0, :cond_0

    .line 789
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/h;

    invoke-direct {v0, p1}, Lcom/xiaomi/miui/pushads/sdk/h;-><init>(Lcom/xiaomi/miui/pushads/sdk/h;)V

    .line 790
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZu:Lcom/xiaomi/miui/pushads/sdk/e;

    invoke-interface {v1, v0}, Lcom/xiaomi/miui/pushads/sdk/e;->a(Lcom/xiaomi/miui/pushads/sdk/h;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 791
    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/k;->d(Lcom/xiaomi/miui/pushads/sdk/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 795
    :catch_0
    move-exception v0

    .line 796
    const-string v0, "ads-notify-fd5dfce4"

    const-string v1, "SDK \u53d1\u51fanotification \u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private d(Lcom/xiaomi/miui/pushads/sdk/h;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 871
    .line 874
    const-string v0, "sdk handle notify"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    .line 876
    iget-object v0, p1, Lcom/xiaomi/miui/pushads/sdk/h;->aYW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p1, Lcom/xiaomi/miui/pushads/sdk/h;->aYZ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    .line 877
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZu:Lcom/xiaomi/miui/pushads/sdk/e;

    invoke-interface {v0}, Lcom/xiaomi/miui/pushads/sdk/e;->Gj()I

    move-result v0

    .line 878
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/k;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 880
    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 882
    :cond_0
    new-instance v3, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;

    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/k;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;-><init>(Landroid/content/Context;)V

    .line 884
    iget-object v4, p1, Lcom/xiaomi/miui/pushads/sdk/h;->aYZ:Ljava/lang/String;

    iget-object v5, p1, Lcom/xiaomi/miui/pushads/sdk/h;->aZa:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->J(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    invoke-virtual {v3, v0}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setIcon(I)V

    .line 886
    invoke-direct {p0, p1, v1, v3}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Lcom/xiaomi/miui/pushads/sdk/h;ILcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;)V

    .line 888
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 889
    iget-object v3, p1, Lcom/xiaomi/miui/pushads/sdk/h;->aYY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 894
    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Lcom/xiaomi/miui/pushads/sdk/h;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 895
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 897
    invoke-direct {p0, p1, v6}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Lcom/xiaomi/miui/pushads/sdk/h;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 898
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 900
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 903
    invoke-virtual {p1}, Lcom/xiaomi/miui/pushads/sdk/h;->Gn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 904
    invoke-virtual {p1}, Lcom/xiaomi/miui/pushads/sdk/h;->Gn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 905
    if-eqz v3, :cond_1

    .line 906
    const-string v4, "big picture"

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    .line 907
    new-instance v4, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;

    iget-object v5, p0, Lcom/xiaomi/miui/pushads/sdk/k;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;-><init>(Landroid/content/Context;)V

    .line 908
    iget-object v5, p1, Lcom/xiaomi/miui/pushads/sdk/h;->aYZ:Ljava/lang/String;

    iget-object v6, p1, Lcom/xiaomi/miui/pushads/sdk/h;->aZa:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;->J(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    invoke-virtual {v4, v0}, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;->setIcon(I)V

    .line 910
    invoke-virtual {v4, v3}, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;->p(Landroid/graphics/Bitmap;)V

    .line 911
    invoke-direct {p0, p1, v1, v4}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Lcom/xiaomi/miui/pushads/sdk/h;ILcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;)V

    .line 912
    iput-object v4, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 916
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 919
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 920
    return-void
.end method

.method public static dc(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1108
    const-string v0, "ads-notify-fd5dfce4"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    return-void
.end method

.method private dd(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 286
    .line 288
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 289
    const-string v2, "showType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 290
    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1

    .line 291
    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZx:Lcom/xiaomi/miui/pushads/sdk/a/a;

    if-eqz v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZx:Lcom/xiaomi/miui/pushads/sdk/a/a;

    const-string v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/xiaomi/miui/pushads/sdk/a/a;->de(Ljava/lang/String;)V

    .line 303
    :goto_0
    return v0

    .line 296
    :cond_0
    const-string v1, "ads-notify-fd5dfce4"

    const-string v2, "\u63a5\u53d7\u5230\u5916\u90e8\u7684\u6d88\u606f\uff0c\u4f46\u662f\u5916\u90e8\u7684listener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v1

    goto :goto_0

    .line 303
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(ILcom/xiaomi/miui/pushads/sdk/a/b;Lcom/xiaomi/miui/pushads/sdk/j;)V
    .locals 4

    .prologue
    .line 729
    if-nez p2, :cond_1

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->cell is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->download failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    .line 736
    iget v0, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZD:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZD:I

    .line 738
    iget v0, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZD:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\u5199\u5165\u7f13\u5b58 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZC:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/d;->cY(Ljava/lang/String;)V

    .line 740
    iget-object v0, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZz:Ljava/lang/String;

    iget-wide v2, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZC:J

    iget v1, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZD:I

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/xiaomi/miui/pushads/sdk/k;->b(Ljava/lang/String;JI)V

    .line 760
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZu:Lcom/xiaomi/miui/pushads/sdk/e;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 761
    invoke-direct {p0, p2}, Lcom/xiaomi/miui/pushads/sdk/k;->a(Lcom/xiaomi/miui/pushads/sdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 762
    invoke-direct {p0, p2}, Lcom/xiaomi/miui/pushads/sdk/k;->c(Lcom/xiaomi/miui/pushads/sdk/a/b;)V

    goto :goto_0

    .line 742
    :cond_2
    const-string v0, "\u4e0b\u8f7d\u5931\u8d25\u6b21\u6570\u8d85\u8fc7 10 \u4e0d\u5199\u5165\u7f13\u5b58"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/d;->cY(Ljava/lang/String;)V

    goto :goto_1

    .line 744
    :cond_3
    if-nez p1, :cond_5

    .line 746
    iget v0, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZB:I

    if-lez v0, :cond_4

    .line 747
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZl:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZl:I

    .line 748
    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/k;->Gm()Lcom/xiaomi/miui/pushads/sdk/k;

    move-result-object v0

    iget v1, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZy:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/miui/pushads/sdk/k;->eN(I)V

    .line 750
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->download sucess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/k;->Gm()Lcom/xiaomi/miui/pushads/sdk/k;

    move-result-object v1

    iget v2, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aZy:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/miui/pushads/sdk/k;->eM(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    goto :goto_1

    .line 755
    :cond_5
    const-string v0, "com.miui.ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e7f\u544a\u65e0\u6548\u6216\u8005\u8d85\u8fc7\u9650\u5236 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const-string v0, "\u5e7f\u544a\u65e0\u6548\u6216\u8005\u8d85\u8fc7\u9650\u5236"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/d;->cY(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 764
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->reach limit, no return to app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZu:Lcom/xiaomi/miui/pushads/sdk/e;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 312
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 313
    long-to-int v1, p1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 314
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 315
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 318
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-nez v0, :cond_2

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->cahnel OK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 322
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZv:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/f;->da(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 330
    :goto_0
    return-void

    .line 327
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->chanle failed\uff0c need app reopen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 439
    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->onCommandResult == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    move v1, v2

    .line 442
    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "param: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    .line 442
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 446
    :cond_0
    const-string v0, "set-alias"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    .line 447
    :goto_1
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 448
    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 449
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/k;->sD:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 450
    const/4 v0, 0x1

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZh:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "--->alias ok: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    .line 447
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1

    .line 455
    :cond_1
    if-nez v1, :cond_2

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->alias failed, retry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    .line 462
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public b(JLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->topic resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    .line 425
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 429
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->sD:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/f;->da(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZv:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/f;->da(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->no alias\uff0cignore the msg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-static {p2}, Lcom/xiaomi/miui/pushads/sdk/f;->da(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->sD:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/f;->da(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->sD:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->get msg for different alias. unset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/k;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/xiaomi/mipush/sdk/f;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_2
    invoke-static {p3}, Lcom/xiaomi/miui/pushads/sdk/f;->da(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZv:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/f;->da(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZv:Ljava/lang/String;

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->get msg for old topic, unset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/k;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/xiaomi/mipush/sdk/f;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :cond_3
    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/k;->dd(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZh:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/miui/pushads/sdk/k;->K(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public c(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->unsuscribe topic resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/k;->dc(Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public declared-synchronized eM(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 474
    monitor-enter p0

    .line 475
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZg:Landroid/content/SharedPreferences;

    const-string v1, "notifycount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 481
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 477
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 478
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZg:Landroid/content/SharedPreferences;

    const-string v1, "bubblecount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized eN(I)V
    .locals 3

    .prologue
    .line 485
    monitor-enter p0

    .line 487
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZg:Landroid/content/SharedPreferences;

    const-string v1, "notifycount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 489
    add-int/lit8 v0, v0, 0x1

    .line 490
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZg:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "notifycount"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 491
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 492
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZg:Landroid/content/SharedPreferences;

    const-string v1, "bubblecount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 493
    add-int/lit8 v0, v0, 0x1

    .line 494
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/k;->aZg:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bubblecount"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
