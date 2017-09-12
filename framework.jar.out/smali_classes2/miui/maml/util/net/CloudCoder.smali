.class public Lmiui/maml/util/net/CloudCoder;
.super Ljava/lang/Object;
.source "CloudCoder.java"


# static fields
.field private static final INT_0:Ljava/lang/Integer;

.field private static final RC4_ALGORITHM_NAME:Ljava/lang/String; = "RC4"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lmiui/maml/util/net/CloudCoder;->INT_0:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p3, "security"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 97
    new-instance v10, Ljava/security/InvalidParameterException;

    const-string v11, "security is not nullable"

    invoke-direct {v10, v11}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 99
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v3, "exps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    if-eqz p1, :cond_2

    .line 104
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 105
    .local v9, "uri":Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 108
    new-instance v8, Ljava/util/TreeMap;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 110
    .local v8, "sortedParams":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 111
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 112
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "%s=%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    .end local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "sortedParams":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    const/4 v4, 0x1

    .line 118
    .local v4, "first":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 120
    .local v6, "s":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 121
    const/16 v10, 0x26

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    :cond_4
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const/4 v4, 0x0

    .line 125
    goto :goto_1

    .line 126
    .end local v6    # "s":Ljava/lang/String;
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmiui/maml/util/net/CloudCoder;->hash4SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public static hash4SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "plain"    # Ljava/lang/String;

    .prologue
    .line 72
    :try_start_0
    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 73
    .local v1, "md":Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 75
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 81
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "failed to SHA1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :catch_1
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;
    .locals 6
    .param p0, "aesKey"    # Ljava/lang/String;
    .param p1, "opMode"    # I

    .prologue
    .line 43
    const/4 v5, 0x2

    invoke-static {p0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 45
    .local v3, "keyRaw":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 47
    .local v4, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 48
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v5, "0102030405060708"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 50
    .local v2, "iv":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v0, p1, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3

    .line 61
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 61
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :catch_1
    move-exception v1

    .line 55
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    .line 56
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 57
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_1

    .line 58
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_3
    move-exception v1

    .line 59
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1
.end method
