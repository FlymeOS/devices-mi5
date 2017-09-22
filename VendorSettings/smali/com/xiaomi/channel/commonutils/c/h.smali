.class Lcom/xiaomi/channel/commonutils/c/h;
.super Ljava/lang/Object;
.source "SerializedAsyncTaskProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aXS:Lcom/xiaomi/channel/commonutils/c/f;

.field final synthetic aXT:Lcom/xiaomi/channel/commonutils/c/j;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/commonutils/c/f;Lcom/xiaomi/channel/commonutils/c/j;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/c/h;->aXS:Lcom/xiaomi/channel/commonutils/c/f;

    iput-object p2, p0, Lcom/xiaomi/channel/commonutils/c/h;->aXT:Lcom/xiaomi/channel/commonutils/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/h;->aXS:Lcom/xiaomi/channel/commonutils/c/f;

    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/c/h;->aXT:Lcom/xiaomi/channel/commonutils/c/j;

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/c/f;->a(Lcom/xiaomi/channel/commonutils/c/j;)V

    .line 91
    return-void
.end method
