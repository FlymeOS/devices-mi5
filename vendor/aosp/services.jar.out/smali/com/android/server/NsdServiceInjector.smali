.class public Lcom/android/server/NsdServiceInjector;
.super Ljava/lang/Object;
.source "NsdServiceInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static resolveTextRecored(Landroid/net/nsd/NsdServiceInfo;[Ljava/lang/String;)V
    .locals 5
    .param p0, "nsdServiceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p1, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 10
    array-length v3, p1

    const/4 v4, 0x7

    if-lt v3, v4, :cond_0

    .line 11
    const/4 v3, 0x5

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 12
    .local v0, "txtLen":I
    const/4 v3, 0x6

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 13
    .local v2, "txtRecordBase64":[B
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 14
    .local v1, "txtRecord":[B
    array-length v3, v1

    invoke-static {v3, v1, p0}, Landroid/net/nsd/NsdServiceInfoInjector;->setTxtRecord(I[BLandroid/net/nsd/NsdServiceInfo;)V

    .line 16
    .end local v0    # "txtLen":I
    .end local v1    # "txtRecord":[B
    .end local v2    # "txtRecordBase64":[B
    :cond_0
    return-void
.end method
