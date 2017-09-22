.class final Lcom/xiaomi/push/service/E;
.super Ljava/lang/Object;
.source "NetworkCheckup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bdG:Ljava/util/List;

.field final synthetic bdH:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/xiaomi/push/service/E;->bdG:Ljava/util/List;

    iput-boolean p2, p0, Lcom/xiaomi/push/service/E;->bdH:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 100
    const-string v0, "www.baidu.com:80"

    # invokes: Lcom/xiaomi/push/service/D;->ed(Ljava/lang/String;)Z
    invoke-static {v0}, Lcom/xiaomi/push/service/D;->access$200(Ljava/lang/String;)Z

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/xiaomi/push/service/E;->bdG:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    if-nez v1, :cond_0

    # invokes: Lcom/xiaomi/push/service/D;->ed(Ljava/lang/String;)Z
    invoke-static {v0}, Lcom/xiaomi/push/service/D;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 103
    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/xiaomi/push/service/E;->bdH:Z

    if-nez v1, :cond_2

    .line 107
    :goto_2
    if-eqz v0, :cond_3

    move v0, v2

    .line 108
    :goto_3
    invoke-static {v0}, Lcom/xiaomi/d/j;->fs(I)V

    .line 109
    return-void

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v1, v0

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    const/4 v0, 0x2

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_2
.end method
