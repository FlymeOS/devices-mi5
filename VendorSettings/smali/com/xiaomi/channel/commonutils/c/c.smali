.class public Lcom/xiaomi/channel/commonutils/c/c;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# static fields
.field static final aXH:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/commonutils/c/c;->aXH:[C

    .line 10
    return-void
.end method

.method public static g([BII)Ljava/lang/String;
    .locals 5

    .prologue
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, p2, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 22
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 23
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 24
    sget-object v3, Lcom/xiaomi/channel/commonutils/c/c;->aXH:[C

    shr-int/lit8 v4, v2, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    sget-object v3, Lcom/xiaomi/channel/commonutils/c/c;->aXH:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
