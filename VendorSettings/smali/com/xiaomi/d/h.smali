.class Lcom/xiaomi/d/h;
.super Lcom/xiaomi/push/service/X;
.source "StatsHandler.java"


# instance fields
.field final synthetic bkm:Lcom/xiaomi/d/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/d/g;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/xiaomi/d/h;->bkm:Lcom/xiaomi/d/g;

    invoke-direct {p0}, Lcom/xiaomi/push/service/X;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/xiaomi/push/b/e;)V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/xiaomi/push/b/e;->Hu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/xiaomi/d/g;->Kn()Lcom/xiaomi/d/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/b/e;->Ht()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/d/g;->setDuration(I)V

    .line 71
    :cond_0
    return-void
.end method
