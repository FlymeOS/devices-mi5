.class public Lmiui/security/TidaKey;
.super Ljava/lang/Object;
.source "TidaKey.java"

# interfaces
.implements Ljava/security/Key;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    const-string v0, "RSA/EC"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    return-object v0
.end method
