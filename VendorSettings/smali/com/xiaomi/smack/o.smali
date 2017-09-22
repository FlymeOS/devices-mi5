.class Lcom/xiaomi/smack/o;
.super Ljava/lang/Object;
.source "SocketConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bhZ:Lcom/xiaomi/smack/l;

.field final synthetic val$host:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/smack/l;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/xiaomi/smack/o;->bhZ:Lcom/xiaomi/smack/l;

    iput-object p2, p0, Lcom/xiaomi/smack/o;->val$host:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 369
    invoke-static {}, Lcom/xiaomi/b/f;->Gw()Lcom/xiaomi/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/smack/o;->val$host:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/b/f;->h(Ljava/lang/String;Z)Lcom/xiaomi/b/b;

    .line 370
    return-void
.end method
