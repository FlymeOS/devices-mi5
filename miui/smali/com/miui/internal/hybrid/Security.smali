.class public Lcom/miui/internal/hybrid/Security;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fp:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/miui/internal/hybrid/Security;->fp:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/miui/internal/hybrid/Security;->timestamp:J

    return-wide v0
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/miui/internal/hybrid/Security;->fp:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/miui/internal/hybrid/Security;->timestamp:J

    .line 26
    return-void
.end method
