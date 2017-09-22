.class public Lcom/xiaomi/channel/commonutils/g/a;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# static fields
.field private static final aYe:Ljava/lang/String;

.field private static aYf:[C

.field private static aYg:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x40

    const/4 v1, 0x0

    .line 6
    const-string v0, "line.separator"

    .line 7
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/commonutils/g/a;->aYe:Ljava/lang/String;

    .line 10
    new-array v0, v5, [C

    sput-object v0, Lcom/xiaomi/channel/commonutils/g/a;->aYf:[C

    .line 13
    const/16 v0, 0x41

    move v2, v1

    :goto_0
    const/16 v3, 0x5a

    if-gt v0, v3, :cond_0

    .line 14
    sget-object v4, Lcom/xiaomi/channel/commonutils/g/a;->aYf:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    .line 13
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_0

    .line 15
    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    .line 16
    sget-object v4, Lcom/xiaomi/channel/commonutils/g/a;->aYf:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    .line 15
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_1

    .line 17
    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v3, 0x39

    if-gt v0, v3, :cond_2

    .line 18
    sget-object v4, Lcom/xiaomi/channel/commonutils/g/a;->aYf:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    .line 17
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_2

    .line 19
    :cond_2
    sget-object v0, Lcom/xiaomi/channel/commonutils/g/a;->aYf:[C

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x2b

    aput-char v4, v0, v2

    .line 20
    sget-object v0, Lcom/xiaomi/channel/commonutils/g/a;->aYf:[C

    add-int/lit8 v2, v3, 0x1

    const/16 v2, 0x2f

    aput-char v2, v0, v3

    .line 24
    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lcom/xiaomi/channel/commonutils/g/a;->aYg:[B

    move v0, v1

    .line 26
    :goto_3
    sget-object v2, Lcom/xiaomi/channel/commonutils/g/a;->aYg:[B

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 27
    sget-object v2, Lcom/xiaomi/channel/commonutils/g/a;->aYg:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 28
    :cond_3
    :goto_4
    if-ge v1, v5, :cond_4

    .line 29
    sget-object v0, Lcom/xiaomi/channel/commonutils/g/a;->aYg:[B

    sget-object v2, Lcom/xiaomi/channel/commonutils/g/a;->aYf:[C

    aget-char v2, v2, v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 30
    :cond_4
    return-void
.end method

.method public static a([C)[B
    .locals 2

    .prologue
    .line 218
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/xiaomi/channel/commonutils/g/a;->a([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([CII)[B
    .locals 12

    .prologue
    const/16 v2, 0x41

    const/16 v11, 0x7f

    .line 238
    rem-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    :goto_0
    if-lez p2, :cond_1

    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    aget-char v0, p0, v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1

    .line 242
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 243
    :cond_1
    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v6, v0, 0x4

    .line 244
    new-array v7, v6, [B

    .line 246
    add-int v8, p1, p2

    .line 247
    const/4 v0, 0x0

    move v5, v0

    .line 248
    :goto_1
    if-ge p1, v8, :cond_8

    .line 249
    add-int/lit8 v1, p1, 0x1

    aget-char v9, p0, p1

    .line 250
    add-int/lit8 v0, v1, 0x1

    aget-char v10, p0, v1

    .line 251
    if-ge v0, v8, :cond_3

    add-int/lit8 v1, v0, 0x1

    aget-char v0, p0, v0

    move v4, v0

    move v0, v1

    .line 252
    :goto_2
    if-ge v0, v8, :cond_4

    add-int/lit8 v1, v0, 0x1

    aget-char v0, p0, v0

    move v3, v1

    .line 253
    :goto_3
    if-gt v9, v11, :cond_2

    if-gt v10, v11, :cond_2

    if-gt v4, v11, :cond_2

    if-le v0, v11, :cond_5

    .line 254
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v4, v2

    .line 251
    goto :goto_2

    :cond_4
    move v3, v0

    move v0, v2

    .line 252
    goto :goto_3

    .line 256
    :cond_5
    sget-object v1, Lcom/xiaomi/channel/commonutils/g/a;->aYg:[B

    aget-byte v1, v1, v9

    .line 257
    sget-object v9, Lcom/xiaomi/channel/commonutils/g/a;->aYg:[B

    aget-byte v9, v9, v10

    .line 258
    sget-object v10, Lcom/xiaomi/channel/commonutils/g/a;->aYg:[B

    aget-byte v4, v10, v4

    .line 259
    sget-object v10, Lcom/xiaomi/channel/commonutils/g/a;->aYg:[B

    aget-byte v0, v10, v0

    .line 260
    if-ltz v1, :cond_6

    if-ltz v9, :cond_6

    if-ltz v4, :cond_6

    if-gez v0, :cond_7

    .line 261
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_7
    shl-int/lit8 v1, v1, 0x2

    ushr-int/lit8 v10, v9, 0x4

    or-int/2addr v1, v10

    .line 264
    and-int/lit8 v9, v9, 0xf

    shl-int/lit8 v9, v9, 0x4

    ushr-int/lit8 v10, v4, 0x2

    or-int/2addr v9, v10

    .line 265
    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v0

    .line 266
    add-int/lit8 v0, v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v7, v5

    .line 267
    if-ge v0, v6, :cond_a

    .line 268
    add-int/lit8 v1, v0, 0x1

    int-to-byte v5, v9

    aput-byte v5, v7, v0

    .line 269
    :goto_4
    if-ge v1, v6, :cond_9

    .line 270
    add-int/lit8 v0, v1, 0x1

    int-to-byte v4, v4

    aput-byte v4, v7, v1

    :goto_5
    move v5, v0

    move p1, v3

    .line 271
    goto :goto_1

    .line 272
    :cond_8
    return-object v7

    :cond_9
    move v0, v1

    goto :goto_5

    :cond_a
    move v1, v0

    goto :goto_4
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/g/a;->a([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)[C
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/xiaomi/channel/commonutils/g/a;->encode([BII)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)[C
    .locals 13

    .prologue
    const/16 v3, 0x3d

    const/4 v1, 0x0

    .line 132
    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v6, v0, 0x3

    .line 133
    add-int/lit8 v0, p2, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 134
    new-array v7, v0, [C

    .line 136
    add-int v8, p1, p2

    move v5, v1

    .line 138
    :goto_0
    if-ge p1, v8, :cond_4

    .line 139
    add-int/lit8 v0, p1, 0x1

    aget-byte v2, p0, p1

    and-int/lit16 v9, v2, 0xff

    .line 140
    if-ge v0, v8, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    move v0, v2

    .line 141
    :goto_1
    if-ge v0, v8, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 142
    :goto_2
    ushr-int/lit8 v10, v9, 0x2

    .line 143
    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x4

    ushr-int/lit8 v11, v4, 0x4

    or-int/2addr v9, v11

    .line 144
    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v11, v0, 0x6

    or-int/2addr v4, v11

    .line 145
    and-int/lit8 v11, v0, 0x3f

    .line 146
    add-int/lit8 v0, v5, 0x1

    sget-object v12, Lcom/xiaomi/channel/commonutils/g/a;->aYf:[C

    aget-char v10, v12, v10

    aput-char v10, v7, v5

    .line 147
    add-int/lit8 v5, v0, 0x1

    sget-object v10, Lcom/xiaomi/channel/commonutils/g/a;->aYf:[C

    aget-char v9, v10, v9

    aput-char v9, v7, v0

    .line 148
    if-ge v5, v6, :cond_2

    sget-object v0, Lcom/xiaomi/channel/commonutils/g/a;->aYf:[C

    aget-char v0, v0, v4

    :goto_3
    aput-char v0, v7, v5

    .line 149
    add-int/lit8 v4, v5, 0x1

    .line 150
    if-ge v4, v6, :cond_3

    sget-object v0, Lcom/xiaomi/channel/commonutils/g/a;->aYf:[C

    aget-char v0, v0, v11

    :goto_4
    aput-char v0, v7, v4

    .line 151
    add-int/lit8 v0, v4, 0x1

    move v5, v0

    move p1, v2

    .line 152
    goto :goto_0

    :cond_0
    move v4, v1

    .line 140
    goto :goto_1

    :cond_1
    move v2, v0

    move v0, v1

    .line 141
    goto :goto_2

    :cond_2
    move v0, v3

    .line 148
    goto :goto_3

    :cond_3
    move v0, v3

    .line 150
    goto :goto_4

    .line 153
    :cond_4
    return-object v7
.end method
