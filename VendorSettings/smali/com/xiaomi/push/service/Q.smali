.class public Lcom/xiaomi/push/service/Q;
.super Ljava/lang/Object;
.source "PushProvision.java"


# static fields
.field private static ben:Lcom/xiaomi/push/service/Q;


# instance fields
.field private beo:I

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/Q;->beo:I

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/Q;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public static dY(Landroid/content/Context;)Lcom/xiaomi/push/service/Q;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/xiaomi/push/service/Q;->ben:Lcom/xiaomi/push/service/Q;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/xiaomi/push/service/Q;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/Q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/Q;->ben:Lcom/xiaomi/push/service/Q;

    .line 20
    :cond_0
    sget-object v0, Lcom/xiaomi/push/service/Q;->ben:Lcom/xiaomi/push/service/Q;

    return-object v0
.end method


# virtual methods
.method public ID()Z
    .locals 2

    .prologue
    .line 28
    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v1, "xmsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v1, "xiaomi"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v1, "miui"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IE()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    iget v0, p0, Lcom/xiaomi/push/service/Q;->beo:I

    if-eqz v0, :cond_0

    .line 36
    iget v0, p0, Lcom/xiaomi/push/service/Q;->beo:I

    .line 46
    :goto_0
    return v0

    .line 38
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 39
    iget-object v0, p0, Lcom/xiaomi/push/service/Q;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/service/Q;->beo:I

    .line 41
    iget v0, p0, Lcom/xiaomi/push/service/Q;->beo:I

    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/Q;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/service/Q;->beo:I

    .line 46
    iget v0, p0, Lcom/xiaomi/push/service/Q;->beo:I

    goto :goto_0
.end method

.method public IF()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 53
    const-string v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
