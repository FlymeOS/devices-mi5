.class Lcom/android/settings/cloud/k;
.super Ljava/lang/Object;
.source "MiuiSecurityDeviceInfo.java"


# instance fields
.field final synthetic TI:Lcom/android/settings/cloud/j;


# direct methods
.method constructor <init>(Lcom/android/settings/cloud/j;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/settings/cloud/k;->TI:Lcom/android/settings/cloud/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPublicKey()Ljava/security/PublicKey;
    .locals 3

    .prologue
    .line 368
    :try_start_0
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC/gT0vSqtsv7y4c7qLn1tvJF6Uur067h8pf7VXJNNqYxVWdpR5la5QuLIi90bZntPGsxM7IDSTL7Wia9ox+CbalDC3+ouPMVIjMK9tqWfb8F0XQJi8eHlZ4KpGZxqQDOcisxGQHClig/dD/CkqlX4eTyK7HDRVRS8Jj6SiaWDY2QIDAQAB"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 369
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 370
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 371
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    const-string v1, "xiaomi_miui"

    const-string v2, "get public key error!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public aO(Ljava/lang/String;)[B
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 382
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/cloud/k;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 383
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 384
    const/4 v2, 0x1

    invoke-virtual {v3, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 386
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 387
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x75

    add-int/lit8 v5, v0, 0x1

    .line 388
    mul-int/lit16 v0, v5, 0x80

    new-array v0, v0, [B

    .line 390
    const/16 v2, 0x75

    new-array v2, v2, [B

    move v10, v1

    move-object v1, v2

    move v2, v10

    .line 392
    :goto_0
    if-ge v2, v5, :cond_1

    .line 393
    add-int/lit8 v6, v5, -0x1

    if-ne v2, v6, :cond_0

    .line 394
    array-length v1, v4

    mul-int/lit8 v6, v2, 0x75

    sub-int v6, v1, v6

    .line 395
    if-lez v6, :cond_1

    .line 396
    new-array v1, v6, [B

    .line 397
    mul-int/lit8 v7, v2, 0x75

    const/4 v8, 0x0

    invoke-static {v4, v7, v1, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 404
    :goto_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    .line 405
    invoke-virtual {v3, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 406
    const/4 v7, 0x0

    mul-int/lit16 v8, v2, 0x80

    const/16 v9, 0x80

    invoke-static {v6, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 392
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 402
    :cond_0
    mul-int/lit8 v6, v2, 0x75

    const/4 v7, 0x0

    const/16 v8, 0x75

    invoke-static {v4, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 409
    :catch_0
    move-exception v0

    .line 410
    const-string v1, "xiaomi_miui"

    const-string v2, "encrypt error!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 413
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method
