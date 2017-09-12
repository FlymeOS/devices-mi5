.class public Lmiui/security/TidaKeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "TidaKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/TidaKeyPairGenerator$EC;,
        Lmiui/security/TidaKeyPairGenerator$RSA;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAlgorithm:Ljava/lang/String;

.field protected mKpg:Ljava/security/KeyPairGenerator;

.field protected mSpec:Landroid/security/keystore/KeyGenParameterSpec;

.field protected mTida:Lmiui/security/Tida;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lmiui/security/TidaKeyPairGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/security/TidaKeyPairGenerator;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    .line 35
    invoke-static {}, Lmiui/security/Tida;->getInstance()Lmiui/security/Tida;

    move-result-object v0

    iput-object v0, p0, Lmiui/security/TidaKeyPairGenerator;->mTida:Lmiui/security/Tida;

    .line 36
    return-void
.end method

.method private isValidTidaAlias(Ljava/lang/String;)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 95
    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    const-string v1, "attk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ask"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "bak"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    .prologue
    .line 83
    sget-object v2, Lmiui/security/TidaKeyPairGenerator;->TAG:Ljava/lang/String;

    const-string v3, "generateKeyPair()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v2, p0, Lmiui/security/TidaKeyPairGenerator;->mTida:Lmiui/security/Tida;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/security/TidaKeyPairGenerator;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/security/TidaKeyPairGenerator;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lmiui/security/TidaKeyPairGenerator;->isValidTidaAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    :cond_0
    iget-object v2, p0, Lmiui/security/TidaKeyPairGenerator;->mKpg:Ljava/security/KeyPairGenerator;

    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    .line 91
    :goto_0
    return-object v1

    .line 89
    :cond_1
    iget-object v2, p0, Lmiui/security/TidaKeyPairGenerator;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "alias":Ljava/lang/String;
    iget-object v2, p0, Lmiui/security/TidaKeyPairGenerator;->mTida:Lmiui/security/Tida;

    iget-object v3, p0, Lmiui/security/TidaKeyPairGenerator;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lmiui/security/Tida;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v1

    .line 91
    .local v1, "kp":Ljava/security/KeyPair;
    goto :goto_0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 1
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 59
    iget-object v0, p0, Lmiui/security/TidaKeyPairGenerator;->mKpg:Ljava/security/KeyPairGenerator;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 60
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 65
    sget-object v0, Lmiui/security/TidaKeyPairGenerator;->TAG:Ljava/lang/String;

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    instance-of v0, p1, Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, Landroid/security/keystore/KeyGenParameterSpec;

    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    iput-object p1, p0, Lmiui/security/TidaKeyPairGenerator;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 72
    :goto_0
    return-void

    .line 70
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_0
    iget-object v0, p0, Lmiui/security/TidaKeyPairGenerator;->mKpg:Ljava/security/KeyPairGenerator;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_0
.end method
