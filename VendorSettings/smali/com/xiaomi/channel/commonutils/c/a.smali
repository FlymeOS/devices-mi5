.class public Lcom/xiaomi/channel/commonutils/c/a;
.super Ljava/lang/Object;
.source "BuildSettings.java"


# static fields
.field public static final aXA:Z

.field public static final aXB:Z

.field public static final aXC:Z

.field public static aXD:Z

.field public static final aXE:Z

.field public static final aXF:Z

.field private static aXG:I

.field public static final aXz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 28
    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v3, "2A2FE0D7"

    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/c/a;->aXz:Z

    .line 31
    sget-boolean v0, Lcom/xiaomi/channel/commonutils/c/a;->aXz:Z

    if-nez v0, :cond_0

    const-string v0, "DEBUG"

    const-string v3, "@SHIP.TO.2A2FE0D7@"

    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/xiaomi/channel/commonutils/c/a;->aXA:Z

    .line 34
    const-string v0, "LOGABLE"

    const-string v3, "@SHIP.TO.2A2FE0D7@"

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/c/a;->aXB:Z

    .line 37
    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v3, "YY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/c/a;->aXC:Z

    .line 39
    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v3, "TEST"

    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/c/a;->aXD:Z

    .line 42
    const-string v0, "BETA"

    const-string v3, "@SHIP.TO.2A2FE0D7@"

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/c/a;->aXE:Z

    .line 45
    const-string v0, "@SHIP.TO.2A2FE0D7@"

    if-eqz v0, :cond_1

    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v3, "RC"

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    sput-boolean v1, Lcom/xiaomi/channel/commonutils/c/a;->aXF:Z

    .line 48
    sput v2, Lcom/xiaomi/channel/commonutils/c/a;->aXG:I

    .line 51
    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v1, "SANDBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    const/4 v0, 0x2

    sput v0, Lcom/xiaomi/channel/commonutils/c/a;->aXG:I

    .line 58
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 32
    goto :goto_0

    .line 53
    :cond_3
    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v1, "ONEBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    const/4 v0, 0x3

    sput v0, Lcom/xiaomi/channel/commonutils/c/a;->aXG:I

    goto :goto_1

    .line 56
    :cond_4
    sput v2, Lcom/xiaomi/channel/commonutils/c/a;->aXG:I

    goto :goto_1
.end method

.method public static Fs()Z
    .locals 2

    .prologue
    .line 61
    sget v0, Lcom/xiaomi/channel/commonutils/c/a;->aXG:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static Ft()Z
    .locals 2

    .prologue
    .line 65
    sget v0, Lcom/xiaomi/channel/commonutils/c/a;->aXG:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static Fu()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/xiaomi/channel/commonutils/c/a;->aXG:I

    return v0
.end method

.method public static eF(I)V
    .locals 0

    .prologue
    .line 73
    sput p0, Lcom/xiaomi/channel/commonutils/c/a;->aXG:I

    .line 74
    return-void
.end method
