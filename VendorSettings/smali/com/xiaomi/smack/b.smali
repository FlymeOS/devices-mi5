.class public Lcom/xiaomi/smack/b;
.super Ljava/lang/Object;
.source "Connection.java"


# instance fields
.field private bhC:Lcom/xiaomi/smack/g;

.field private bhD:Lcom/xiaomi/smack/b/a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/smack/g;Lcom/xiaomi/smack/b/a;)V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iput-object p1, p0, Lcom/xiaomi/smack/b;->bhC:Lcom/xiaomi/smack/g;

    .line 552
    iput-object p2, p0, Lcom/xiaomi/smack/b;->bhD:Lcom/xiaomi/smack/b/a;

    .line 553
    return-void
.end method


# virtual methods
.method public i(Lcom/xiaomi/smack/packet/e;)V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/xiaomi/smack/b;->bhD:Lcom/xiaomi/smack/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smack/b;->bhD:Lcom/xiaomi/smack/b/a;

    invoke-interface {v0, p1}, Lcom/xiaomi/smack/b/a;->f(Lcom/xiaomi/smack/packet/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smack/b;->bhC:Lcom/xiaomi/smack/g;

    invoke-interface {v0, p1}, Lcom/xiaomi/smack/g;->a(Lcom/xiaomi/smack/packet/e;)V

    .line 564
    :cond_1
    return-void
.end method

.method public j(Lcom/xiaomi/c/b;)V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/xiaomi/smack/b;->bhC:Lcom/xiaomi/smack/g;

    invoke-interface {v0, p1}, Lcom/xiaomi/smack/g;->a(Lcom/xiaomi/c/b;)V

    .line 568
    return-void
.end method
