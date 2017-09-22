.class final Lcom/xiaomi/push/service/y;
.super Ljava/lang/Object;
.source "MIPushHelper.java"

# interfaces
.implements Lcom/xiaomi/push/service/L;


# instance fields
.field final synthetic bdv:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/xiaomi/push/service/y;->bdv:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;I)V
    .locals 3

    .prologue
    .line 159
    sget-object v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bed:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne p2, v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/xiaomi/push/service/y;->bdv:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/p;->b(Lcom/xiaomi/push/service/XMPushService;)V

    .line 161
    iget-object v0, p0, Lcom/xiaomi/push/service/y;->bdv:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/p;->c(Lcom/xiaomi/push/service/XMPushService;)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->beb:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne p2, v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/xiaomi/push/service/y;->bdv:Lcom/xiaomi/push/service/XMPushService;

    const v1, 0x42c1d81

    const-string v2, " the push is not connected."

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/p;->c(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method
