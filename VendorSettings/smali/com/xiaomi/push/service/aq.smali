.class Lcom/xiaomi/push/service/aq;
.super Landroid/content/BroadcastReceiver;
.source "XMPushService.java"


# instance fields
.field final synthetic beV:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .prologue
    .line 1565
    iput-object p1, p0, Lcom/xiaomi/push/service/aq;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/xiaomi/push/service/aq;->beV:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->l(Lcom/xiaomi/push/service/XMPushService;)V

    .line 1569
    return-void
.end method
