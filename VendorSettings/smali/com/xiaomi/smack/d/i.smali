.class final Lcom/xiaomi/smack/d/i;
.super Lcom/xiaomi/channel/commonutils/c/j;
.source "TaskExecutor.java"


# instance fields
.field final synthetic bjT:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xiaomi/smack/d/i;->bjT:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/c/j;-><init>()V

    return-void
.end method


# virtual methods
.method public Fx()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/xiaomi/smack/d/i;->bjT:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 19
    return-void
.end method
