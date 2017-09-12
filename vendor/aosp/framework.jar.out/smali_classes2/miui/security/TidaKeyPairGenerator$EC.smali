.class public Lmiui/security/TidaKeyPairGenerator$EC;
.super Lmiui/security/TidaKeyPairGenerator;
.source "TidaKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/TidaKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lmiui/security/TidaKeyPairGenerator;-><init>()V

    .line 49
    const-string v0, "EC"

    iput-object v0, p0, Lmiui/security/TidaKeyPairGenerator$EC;->mAlgorithm:Ljava/lang/String;

    .line 51
    :try_start_0
    iget-object v0, p0, Lmiui/security/TidaKeyPairGenerator$EC;->mAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    iput-object v0, p0, Lmiui/security/TidaKeyPairGenerator$EC;->mKpg:Ljava/security/KeyPairGenerator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0
.end method
