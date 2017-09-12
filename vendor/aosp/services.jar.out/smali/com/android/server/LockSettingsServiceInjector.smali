.class public Lcom/android/server/LockSettingsServiceInjector;
.super Ljava/lang/Object;
.source "LockSettingsServiceInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static passwordToHash([B[B)[B
    .locals 3
    .param p0, "stored"    # [B
    .param p1, "password"    # [B

    .prologue
    .line 15
    if-eqz p1, :cond_0

    array-length v1, p0

    const/16 v2, 0x48

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v0, p1

    .line 24
    :goto_0
    return-object v0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 20
    .local v0, "hashed":[B
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/android/server/LockSettingsServiceInjector;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 22
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static toHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "ary"    # [B

    .prologue
    .line 28
    const-string v0, "0123456789ABCDEF"

    .line 29
    .local v0, "hex":Ljava/lang/String;
    const-string v2, ""

    .line 30
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_0
    return-object v2
.end method
