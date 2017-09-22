.class Lcom/android/settings/fh;
.super Ljava/lang/Object;
.source "MiuiSecurityTrustedCredentials.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final sA:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private final sB:Lcom/android/settings/fi;

.field private final sC:Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

.field private final sD:Ljava/lang/String;

.field private final sE:Ljava/security/cert/X509Certificate;

.field private final sF:Landroid/net/http/SslCertificate;

.field private final sG:Ljava/lang/String;

.field private final sH:Ljava/lang/String;

.field private sI:Z


# direct methods
.method private constructor <init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/settings/fi;Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 4

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/android/settings/fh;->sA:Lcom/android/org/conscrypt/TrustedCertificateStore;

    .line 317
    iput-object p2, p0, Lcom/android/settings/fh;->sB:Lcom/android/settings/fi;

    .line 318
    iput-object p3, p0, Lcom/android/settings/fh;->sC:Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    .line 319
    iput-object p4, p0, Lcom/android/settings/fh;->sD:Ljava/lang/String;

    .line 320
    iput-object p5, p0, Lcom/android/settings/fh;->sE:Ljava/security/cert/X509Certificate;

    .line 322
    new-instance v0, Landroid/net/http/SslCertificate;

    invoke-direct {v0, p5}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object v0, p0, Lcom/android/settings/fh;->sF:Landroid/net/http/SslCertificate;

    .line 324
    iget-object v0, p0, Lcom/android/settings/fh;->sF:Landroid/net/http/SslCertificate;

    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/android/settings/fh;->sF:Landroid/net/http/SslCertificate;

    invoke-virtual {v1}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v1

    .line 326
    iget-object v2, p0, Lcom/android/settings/fh;->sF:Landroid/net/http/SslCertificate;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 331
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 332
    iput-object v1, p0, Lcom/android/settings/fh;->sG:Ljava/lang/String;

    .line 333
    iput-object v0, p0, Lcom/android/settings/fh;->sH:Ljava/lang/String;

    .line 347
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fh;->sC:Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    iget-object v1, p0, Lcom/android/settings/fh;->sA:Lcom/android/org/conscrypt/TrustedCertificateStore;

    iget-object v2, p0, Lcom/android/settings/fh;->sD:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->a(Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fh;->sI:Z

    .line 348
    return-void

    .line 335
    :cond_0
    iput-object v1, p0, Lcom/android/settings/fh;->sG:Ljava/lang/String;

    .line 336
    iput-object v2, p0, Lcom/android/settings/fh;->sH:Ljava/lang/String;

    goto :goto_0

    .line 339
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 340
    iput-object v0, p0, Lcom/android/settings/fh;->sG:Ljava/lang/String;

    .line 341
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fh;->sH:Ljava/lang/String;

    goto :goto_0

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fh;->sF:Landroid/net/http/SslCertificate;

    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fh;->sG:Ljava/lang/String;

    .line 344
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fh;->sH:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/settings/fi;Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;Lcom/android/settings/ff;)V
    .locals 0

    .prologue
    .line 299
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/fh;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/settings/fi;Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/fh;Z)Z
    .locals 0

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/android/settings/fh;->sI:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/fh;)Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/android/settings/fh;->sI:Z

    return v0
.end method

.method static synthetic c(Lcom/android/settings/fh;)Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/settings/fh;->sC:Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/fh;)Lcom/android/settings/fi;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/settings/fh;->sB:Lcom/android/settings/fi;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/fh;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/settings/fh;->sG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/fh;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/settings/fh;->sH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/fh;)Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/settings/fh;->sE:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings/fh;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/settings/fh;->sD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/fh;)Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/settings/fh;->sF:Landroid/net/http/SslCertificate;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/settings/fh;)I
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/settings/fh;->sG:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/fh;->sG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 351
    if-eqz v0, :cond_0

    .line 354
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fh;->sH:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/fh;->sH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 299
    check-cast p1, Lcom/android/settings/fh;

    invoke-virtual {p0, p1}, Lcom/android/settings/fh;->a(Lcom/android/settings/fh;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 357
    instance-of v0, p1, Lcom/android/settings/fh;

    if-nez v0, :cond_0

    .line 358
    const/4 v0, 0x0

    .line 361
    :goto_0
    return v0

    .line 360
    :cond_0
    check-cast p1, Lcom/android/settings/fh;

    .line 361
    iget-object v0, p0, Lcom/android/settings/fh;->sD:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/fh;->sD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/settings/fh;->sD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
