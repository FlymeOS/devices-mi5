.class public Lmiui/security/TidaKeyStore;
.super Ljava/security/KeyStoreSpi;
.source "TidaKeyStore.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final NAME:Ljava/lang/String; = "AndroidKeyStore"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mTida:Lmiui/security/Tida;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lmiui/security/TidaKeyStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/security/TidaKeyStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lmiui/security/TidaKeyStore;->mTida:Lmiui/security/Tida;

    invoke-virtual {v0, p1}, Lmiui/security/Tida;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    new-instance v0, Lmiui/security/TidaCertificate;

    invoke-direct {v0}, Lmiui/security/TidaCertificate;-><init>()V

    return-object v0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-object v2, Lmiui/security/TidaKeyStore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "engineGetCertificateChain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "alias == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/security/TidaKeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 55
    .local v1, "leaf":Ljava/security/cert/Certificate;
    if-nez v1, :cond_1

    .line 56
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    .line 59
    :cond_1
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/security/cert/Certificate;

    .line 60
    .local v0, "caList":[Ljava/security/cert/Certificate;
    const/4 v2, 0x0

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lmiui/security/TidaKeyStore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "engineGetKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    new-instance v0, Lmiui/security/TidaPrivateKey;

    invoke-direct {v0, p1}, Lmiui/security/TidaPrivateKey;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    if-eqz p2, :cond_1

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    invoke-static {}, Lmiui/security/Tida;->getInstance()Lmiui/security/Tida;

    move-result-object v0

    iput-object v0, p0, Lmiui/security/TidaKeyStore;->mTida:Lmiui/security/Tida;

    .line 148
    return-void
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/security/KeyStore$Entry;
    .param p3, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userKey"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public engineSize()I
    .locals 1

    .prologue
    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
