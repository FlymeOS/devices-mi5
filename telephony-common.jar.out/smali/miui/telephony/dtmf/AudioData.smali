.class public Lmiui/telephony/dtmf/AudioData;
.super Ljava/lang/Object;
.source "AudioData.java"


# instance fields
.field private mDataBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lmiui/telephony/dtmf/AudioData;->setData([B)V

    .line 15
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lmiui/telephony/dtmf/AudioData;->mDataBuffer:[B

    return-object v0
.end method

.method public setData([B)V
    .locals 3
    .param p1, "buffer"    # [B

    .prologue
    const/4 v2, 0x0

    .line 18
    array-length v0, p1

    .line 19
    .local v0, "length":I
    new-array v1, v0, [B

    iput-object v1, p0, Lmiui/telephony/dtmf/AudioData;->mDataBuffer:[B

    .line 20
    iget-object v1, p0, Lmiui/telephony/dtmf/AudioData;->mDataBuffer:[B

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 21
    return-void
.end method
