.class public Lmiui/security/TidaCertificate;
.super Ljava/security/cert/Certificate;
.source "TidaCertificate.java"


# instance fields
.field private mPublicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "Tida"

    invoke-direct {p0, v0}, Ljava/security/cert/Certificate;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v0, Lmiui/security/TidaPublicKey;

    invoke-direct {v0}, Lmiui/security/TidaPublicKey;-><init>()V

    iput-object v0, p0, Lmiui/security/TidaCertificate;->mPublicKey:Ljava/security/PublicKey;

    .line 13
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0}, Lmiui/security/TidaCertificate;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/security/TidaCertificate;->mPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "TidaCertificate"

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/security/TidaCertificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
