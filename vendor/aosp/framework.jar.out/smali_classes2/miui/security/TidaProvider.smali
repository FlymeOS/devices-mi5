.class public Lmiui/security/TidaProvider;
.super Ljava/security/Provider;
.source "TidaProvider.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final PROVIDER_NAME:Ljava/lang/String; = "tida_keystore"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lmiui/security/TidaProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/security/TidaProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 19
    const-string v0, "tida_keystore"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string v1, "Tida KeyStore security provider"

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 21
    sget-object v0, Lmiui/security/TidaProvider;->TAG:Ljava/lang/String;

    const-string v1, "TidaProvider()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string v0, "KeyStore.AndroidKeyStore"

    const-class v1, Lmiui/security/TidaKeyStore;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmiui/security/TidaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v0, "Signature.SHA1withRSA"

    const-class v1, Lmiui/security/TidaSignature$SHA1withRSA;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmiui/security/TidaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v0, "Alg.Alias.Signature.SHA1WithRSAEncryption"

    const-string v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Lmiui/security/TidaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v0, "Alg.Alias.Signature.SHA1/RSA"

    const-string v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Lmiui/security/TidaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v0, "Alg.Alias.Signature.SHA-1/RSA"

    const-string v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Lmiui/security/TidaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    const-string v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Lmiui/security/TidaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.1"

    const-string v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Lmiui/security/TidaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.5"

    const-string v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Lmiui/security/TidaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.29"

    const-string v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Lmiui/security/TidaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v0, "Signature.SHA256withRSA"

    const-class v1, Lmiui/security/TidaSignature$SHA256withRSA;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmiui/security/TidaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v0, "Alg.Alias.Signature.SHA256WithRSAEncryption"

    const-string v1, "SHA256withRSA"

    invoke-virtual {p0, v0, v1}, Lmiui/security/TidaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    const-string v1, "SHA256withRSA"

    invoke-virtual {p0, v0, v1}, Lmiui/security/TidaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.1"

    const-string v1, "SHA256withRSA"

    invoke-virtual {p0, v0, v1}, Lmiui/security/TidaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.11"

    const-string v1, "SHA256withRSA"

    invoke-virtual {p0, v0, v1}, Lmiui/security/TidaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v0, "Signature.ECDSA"

    const-class v1, Lmiui/security/TidaSignature$SHA1withECDSA;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmiui/security/TidaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v0, "Alg.Alias.Signature.1.2.840.10045.4.3.2"

    const-string v1, "SHA256withECDSA"

    invoke-virtual {p0, v0, v1}, Lmiui/security/TidaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.10045.2.1"

    const-string v1, "SHA256withECDSA"

    invoke-virtual {p0, v0, v1}, Lmiui/security/TidaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "Alg.Alias.Signature.SHA1withECDSA"

    const-string v1, "ECDSA"

    invoke-virtual {p0, v0, v1}, Lmiui/security/TidaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "Alg.Alias.Signature.ECDSAwithSHA1"

    const-string v1, "ECDSA"

    invoke-virtual {p0, v0, v1}, Lmiui/security/TidaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "Signature.SHA256withECDSA"

    const-class v1, Lmiui/security/TidaSignature$SHA256withECDSA;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmiui/security/TidaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "KeyPairGenerator.RSA"

    const-class v1, Lmiui/security/TidaKeyPairGenerator$RSA;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmiui/security/TidaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v0, "KeyPairGenerator.EC"

    const-class v1, Lmiui/security/TidaKeyPairGenerator$EC;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmiui/security/TidaProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method
