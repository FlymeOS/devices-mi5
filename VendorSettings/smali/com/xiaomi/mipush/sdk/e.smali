.class public Lcom/xiaomi/mipush/sdk/e;
.super Ljava/lang/Object;
.source "MessageHandleService.java"


# instance fields
.field private aYz:Lcom/xiaomi/mipush/sdk/n;

.field private intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lcom/xiaomi/mipush/sdk/n;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/e;->aYz:Lcom/xiaomi/mipush/sdk/n;

    .line 101
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/e;->intent:Landroid/content/Intent;

    .line 102
    return-void
.end method


# virtual methods
.method public FQ()Lcom/xiaomi/mipush/sdk/n;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/e;->aYz:Lcom/xiaomi/mipush/sdk/n;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/e;->intent:Landroid/content/Intent;

    return-object v0
.end method
