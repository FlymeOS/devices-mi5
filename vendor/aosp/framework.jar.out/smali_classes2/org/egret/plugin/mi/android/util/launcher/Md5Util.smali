.class public Lorg/egret/plugin/mi/android/util/launcher/Md5Util;
.super Ljava/lang/Object;
.source "Md5Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMd5(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "md5String"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 13
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 17
    :cond_0
    :goto_0
    return v1

    .line 16
    :cond_1
    invoke-static {p0}, Lorg/egret/plugin/mi/android/util/launcher/Md5Util;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "hash":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getMd5String([B)Ljava/lang/String;
    .locals 7
    .param p0, "md"    # [B

    .prologue
    .line 49
    const/16 v5, 0x10

    new-array v1, v5, [C

    fill-array-data v1, :array_0

    .line 51
    .local v1, "hexDigits":[C
    array-length v3, p0

    .line 52
    .local v3, "j":I
    mul-int/lit8 v5, v3, 0x2

    new-array v4, v5, [C

    .line 53
    .local v4, "str":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 54
    aget-byte v0, p0, v2

    .line 55
    .local v0, "hex":B
    mul-int/lit8 v5, v2, 0x2

    ushr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v1, v6

    aput-char v6, v4, v5

    .line 56
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v6, v0, 0xf

    aget-char v6, v1, v6

    aput-char v6, v4, v5

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "hex":B
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    return-object v5

    .line 49
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static md5(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 21
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-object v6

    .line 24
    :cond_1
    const/4 v3, 0x0

    .line 26
    .local v3, "in":Ljava/io/FileInputStream;
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 27
    .local v5, "md5":Ljava/security/MessageDigest;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v4, "in":Ljava/io/FileInputStream;
    const/16 v7, 0x400

    :try_start_1
    new-array v1, v7, [B

    .line 30
    .local v1, "buffer":[B
    :goto_1
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .local v0, "b":I
    if-lez v0, :cond_2

    .line 31
    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7, v0}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 34
    .end local v0    # "b":I
    .end local v1    # "buffer":[B
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 35
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "md5":Ljava/security/MessageDigest;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    if-eqz v3, :cond_0

    .line 40
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 42
    :catch_1
    move-exception v2

    .line 43
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 33
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "b":I
    .restart local v1    # "buffer":[B
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "md5":Ljava/security/MessageDigest;
    :cond_2
    :try_start_4
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7}, Lorg/egret/plugin/mi/android/util/launcher/Md5Util;->getMd5String([B)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v6

    .line 39
    if-eqz v4, :cond_0

    .line 40
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 42
    :catch_2
    move-exception v2

    .line 43
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 38
    .end local v0    # "b":I
    .end local v1    # "buffer":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "md5":Ljava/security/MessageDigest;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v6

    .line 39
    :goto_3
    if-eqz v3, :cond_3

    .line 40
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 44
    :cond_3
    :goto_4
    throw v6

    .line 42
    :catch_3
    move-exception v2

    .line 43
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 38
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "md5":Ljava/security/MessageDigest;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 34
    .end local v5    # "md5":Ljava/security/MessageDigest;
    :catch_4
    move-exception v2

    goto :goto_2
.end method
