.class public Lcom/xiaomi/push/service/k;
.super Ljava/lang/Object;
.source "MIPushAccount.java"


# instance fields
.field public final aXG:I

.field public final aYu:Ljava/lang/String;

.field public final appId:Ljava/lang/String;

.field public final bdi:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final security:Ljava/lang/String;

.field public final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/xiaomi/push/service/k;->bdi:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/xiaomi/push/service/k;->token:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/xiaomi/push/service/k;->security:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/xiaomi/push/service/k;->appId:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/xiaomi/push/service/k;->aYu:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/xiaomi/push/service/k;->packageName:Ljava/lang/String;

    .line 36
    iput p7, p0, Lcom/xiaomi/push/service/k;->aXG:I

    .line 37
    return-void
.end method

.method public static Is()Z
    .locals 2

    .prologue
    .line 85
    :try_start_0
    const-string v0, "miui.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 86
    const-string v1, "IS_ALPHA_BUILD"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 91
    :goto_0
    return v0

    .line 88
    :catch_0
    move-exception v0

    .line 91
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static dR(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static dS(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 79
    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/xiaomi/push/service/k;->Is()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/service/J;Landroid/content/Context;Lcom/xiaomi/push/service/b;Ljava/lang/String;)Lcom/xiaomi/push/service/J;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 56
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/J;->pkgName:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/xiaomi/push/service/k;->bdi:Ljava/lang/String;

    iput-object v0, p1, Lcom/xiaomi/push/service/J;->userId:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/xiaomi/push/service/k;->security:Ljava/lang/String;

    iput-object v0, p1, Lcom/xiaomi/push/service/J;->security:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/xiaomi/push/service/k;->token:Ljava/lang/String;

    iput-object v0, p1, Lcom/xiaomi/push/service/J;->token:Ljava/lang/String;

    .line 60
    const-string v0, "5"

    iput-object v0, p1, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    .line 61
    const-string v0, "XMPUSH-PASS"

    iput-object v0, p1, Lcom/xiaomi/push/service/J;->bdP:Ljava/lang/String;

    .line 62
    iput-boolean v4, p1, Lcom/xiaomi/push/service/J;->bdQ:Z

    .line 63
    const-string v0, "%1$s:%2$s,%3$s:%4$s,%5$s:%6$s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "sdk_ver"

    aput-object v2, v1, v4

    const/16 v2, 0x18

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "cpvn"

    aput-object v2, v1, v6

    const-string v2, "3_1_4"

    aput-object v2, v1, v7

    const-string v2, "cpvc"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const/16 v3, 0x7598

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 63
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/J;->bdR:Ljava/lang/String;

    .line 67
    invoke-static {p2}, Lcom/xiaomi/push/service/k;->dR(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1000271"

    .line 68
    :goto_0
    const-string v1, "%1$s:%2$s,%3$s:%4$s,sync:1"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "appid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    const-string v0, "locale"

    aput-object v0, v2, v6

    .line 70
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    .line 68
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/J;->bdS:Ljava/lang/String;

    .line 71
    invoke-static {p2}, Lcom/xiaomi/push/service/k;->dS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/xiaomi/push/service/J;->bdS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",%1$s:%2$s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ab"

    aput-object v3, v2, v4

    aput-object p4, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/J;->bdS:Ljava/lang/String;

    .line 74
    :cond_0
    iput-object p3, p1, Lcom/xiaomi/push/service/J;->bdU:Lcom/xiaomi/push/service/b;

    .line 75
    return-object p1

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/k;->appId:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/J;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/xiaomi/push/service/J;

    invoke-direct {v0, p1}, Lcom/xiaomi/push/service/J;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 45
    invoke-virtual {p1}, Lcom/xiaomi/push/service/XMPushService;->IX()Lcom/xiaomi/push/service/b;

    move-result-object v1

    const-string v2, "c"

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/xiaomi/push/service/k;->a(Lcom/xiaomi/push/service/J;Landroid/content/Context;Lcom/xiaomi/push/service/b;Ljava/lang/String;)Lcom/xiaomi/push/service/J;

    .line 46
    return-object v0
.end method
