.class public Lmiui/telephony/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseIccIdToString([BII)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/16 v4, 0x9

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .local v1, "ret":Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v3, p1, p2

    if-ge v0, v3, :cond_2

    .line 11
    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    .line 12
    .local v2, "v":I
    if-ltz v2, :cond_0

    if-gt v2, v4, :cond_0

    .line 13
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    :goto_1
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 19
    if-ltz v2, :cond_1

    if-gt v2, v4, :cond_1

    .line 20
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_0
    add-int/lit8 v3, v2, 0x61

    add-int/lit8 v3, v3, -0xa

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 22
    :cond_1
    add-int/lit8 v3, v2, 0x61

    add-int/lit8 v3, v3, -0xa

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 26
    .end local v2    # "v":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
