.class Lcom/xiaomi/smack/i;
.super Ljava/lang/Thread;
.source "PacketReader.java"


# instance fields
.field final synthetic bhN:Lcom/xiaomi/smack/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/smack/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/xiaomi/smack/i;->bhN:Lcom/xiaomi/smack/h;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/xiaomi/smack/i;->bhN:Lcom/xiaomi/smack/h;

    invoke-static {v0}, Lcom/xiaomi/smack/h;->a(Lcom/xiaomi/smack/h;)V

    .line 70
    return-void
.end method
