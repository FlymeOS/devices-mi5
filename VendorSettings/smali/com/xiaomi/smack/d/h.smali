.class public Lcom/xiaomi/smack/d/h;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# static fields
.field private static bjS:Lcom/xiaomi/channel/commonutils/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Lcom/xiaomi/channel/commonutils/c/f;

    const/4 v1, 0x1

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/channel/commonutils/c/f;-><init>(ZI)V

    sput-object v0, Lcom/xiaomi/smack/d/h;->bjS:Lcom/xiaomi/channel/commonutils/c/f;

    return-void
.end method

.method public static b(Lcom/xiaomi/channel/commonutils/c/j;J)V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/xiaomi/smack/d/h;->bjS:Lcom/xiaomi/channel/commonutils/c/f;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/channel/commonutils/c/f;->a(Lcom/xiaomi/channel/commonutils/c/j;J)V

    .line 29
    return-void
.end method

.method public static c(Lcom/xiaomi/channel/commonutils/c/j;)V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/xiaomi/smack/d/h;->bjS:Lcom/xiaomi/channel/commonutils/c/f;

    invoke-virtual {v0, p0}, Lcom/xiaomi/channel/commonutils/c/f;->a(Lcom/xiaomi/channel/commonutils/c/j;)V

    .line 25
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/xiaomi/smack/d/h;->bjS:Lcom/xiaomi/channel/commonutils/c/f;

    new-instance v1, Lcom/xiaomi/smack/d/i;

    invoke-direct {v1, p0}, Lcom/xiaomi/smack/d/i;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/c/f;->a(Lcom/xiaomi/channel/commonutils/c/j;)V

    .line 21
    return-void
.end method
