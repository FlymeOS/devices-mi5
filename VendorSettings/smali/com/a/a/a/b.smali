.class public Lcom/a/a/a/b;
.super Ljava/lang/Object;
.source "Enc.java"


# instance fields
.field private final aWY:[B

.field private final aWZ:[B

.field private final aXa:I


# direct methods
.method public constructor <init>([B)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0x100

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-array v1, v5, [B

    iput-object v1, p0, Lcom/a/a/a/b;->aWY:[B

    .line 6
    new-array v1, v5, [B

    iput-object v1, p0, Lcom/a/a/a/b;->aWZ:[B

    .line 10
    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    array-length v1, p1

    if-le v1, v5, :cond_1

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    const-string v1, "key must be between 1 and 256 bytes"

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_1
    array-length v1, p1

    iput v1, p0, Lcom/a/a/a/b;->aXa:I

    move v1, v0

    .line 15
    :goto_0
    if-lt v1, v5, :cond_2

    move v1, v0

    .line 20
    :goto_1
    if-lt v0, v5, :cond_3

    .line 29
    return-void

    .line 16
    :cond_2
    iget-object v2, p0, Lcom/a/a/a/b;->aWY:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v1

    .line 17
    iget-object v2, p0, Lcom/a/a/a/b;->aWZ:[B

    iget v3, p0, Lcom/a/a/a/b;->aXa:I

    rem-int v3, v1, v3

    aget-byte v3, p1, v3

    aput-byte v3, v2, v1

    .line 15
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_3
    iget-object v2, p0, Lcom/a/a/a/b;->aWY:[B

    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/a/a/a/b;->aWZ:[B

    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 22
    iget-object v2, p0, Lcom/a/a/a/b;->aWY:[B

    aget-byte v2, v2, v0

    .line 23
    iget-object v3, p0, Lcom/a/a/a/b;->aWY:[B

    iget-object v4, p0, Lcom/a/a/a/b;->aWY:[B

    aget-byte v4, v4, v1

    aput-byte v4, v3, v0

    .line 24
    iget-object v3, p0, Lcom/a/a/a/b;->aWY:[B

    aput-byte v2, v3, v1

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static j([B)[B
    .locals 1

    .prologue
    .line 66
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 68
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/a/a/a/b;->encrypt([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([B)[B
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 33
    array-length v1, p1

    new-array v3, v1, [B

    move v1, v0

    move v2, v0

    .line 35
    :goto_0
    array-length v4, p1

    if-lt v0, v4, :cond_0

    .line 56
    return-object v3

    .line 36
    :cond_0
    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    .line 37
    iget-object v4, p0, Lcom/a/a/a/b;->aWY:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    .line 38
    iget-object v4, p0, Lcom/a/a/a/b;->aWY:[B

    aget-byte v4, v4, v2

    .line 39
    iget-object v5, p0, Lcom/a/a/a/b;->aWY:[B

    iget-object v6, p0, Lcom/a/a/a/b;->aWY:[B

    aget-byte v6, v6, v1

    aput-byte v6, v5, v2

    .line 40
    iget-object v5, p0, Lcom/a/a/a/b;->aWY:[B

    aput-byte v4, v5, v1

    .line 41
    iget-object v4, p0, Lcom/a/a/a/b;->aWY:[B

    aget-byte v4, v4, v2

    iget-object v5, p0, Lcom/a/a/a/b;->aWY:[B

    aget-byte v5, v5, v1

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    .line 42
    iget-object v5, p0, Lcom/a/a/a/b;->aWY:[B

    aget-byte v4, v5, v4

    .line 44
    aget-byte v5, p1, v0

    xor-int/2addr v4, v5

    .line 52
    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
