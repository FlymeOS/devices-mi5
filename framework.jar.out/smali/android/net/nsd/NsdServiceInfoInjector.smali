.class public Landroid/net/nsd/NsdServiceInfoInjector;
.super Ljava/lang/Object;
.source "NsdServiceInfoInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NsdServiceInfo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTxtRecord(I[BLandroid/net/nsd/NsdServiceInfo;)V
    .locals 15
    .param p0, "txtLen"    # I
    .param p1, "txtRecord"    # [B
    .param p2, "nsdServiceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 14
    const/4 v10, 0x2

    if-ge p0, v10, :cond_1

    .line 15
    const-string v10, "NsdServiceInfo"

    const-string/jumbo v11, "txtRecord < 2"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    if-nez p1, :cond_2

    .line 20
    const-string v10, "NsdServiceInfo"

    const-string/jumbo v11, "txtRecord is null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 24
    :cond_2
    move-object/from16 v0, p1

    array-length v10, v0

    if-eq v10, p0, :cond_3

    .line 25
    const-string v10, "NsdServiceInfo"

    const-string/jumbo v11, "txtRecord.length != txtLen"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_3
    const/4 v4, 0x0

    .line 34
    .local v4, "i":I
    :goto_1
    if-ge v4, p0, :cond_0

    .line 35
    aget-byte v6, p1, v4

    .line 36
    .local v6, "length":B
    add-int/lit8 v7, v4, 0x1

    .line 38
    .local v7, "start":I
    sub-int v10, p0, v7

    if-le v6, v10, :cond_4

    .line 39
    const-string v10, "NsdServiceInfo"

    const-string/jumbo v11, "invalid length: %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 43
    :cond_4
    new-array v2, v6, [B

    .line 45
    .local v2, "buf":[B
    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v7, v2, v10, v6}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V

    .line 52
    .local v8, "v":Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "a":[Ljava/lang/String;
    array-length v10, v1

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 54
    const/4 v10, 0x0

    aget-object v5, v1, v10

    .line 55
    .local v5, "key":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v9, v1, v10

    .line 56
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v10}, Landroid/net/nsd/NsdServiceInfo;->setAttribute(Ljava/lang/String;[B)V

    .line 59
    .end local v5    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_5
    add-int v4, v7, v6

    .line 60
    goto :goto_1

    .line 46
    .end local v1    # "a":[Ljava/lang/String;
    .end local v8    # "v":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 47
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
