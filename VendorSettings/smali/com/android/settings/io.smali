.class Lcom/android/settings/io;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final BA:Lcom/android/settings/iq;

.field private final BD:Landroid/security/IKeyChainService;

.field private final Bz:Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field public mProfileId:I

.field private final sD:Ljava/lang/String;

.field private final sE:Ljava/security/cert/X509Certificate;

.field private final sF:Landroid/net/http/SslCertificate;

.field private final sG:Ljava/lang/String;

.field private final sH:Ljava/lang/String;

.field private sI:Z


# direct methods
.method private constructor <init>(Landroid/security/IKeyChainService;Lcom/android/settings/iq;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;I)V
    .locals 4

    .prologue
    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    iput p6, p0, Lcom/android/settings/io;->mProfileId:I

    .line 540
    iput-object p1, p0, Lcom/android/settings/io;->BD:Landroid/security/IKeyChainService;

    .line 541
    iput-object p2, p0, Lcom/android/settings/io;->BA:Lcom/android/settings/iq;

    .line 542
    iput-object p3, p0, Lcom/android/settings/io;->Bz:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    .line 543
    iput-object p4, p0, Lcom/android/settings/io;->sD:Ljava/lang/String;

    .line 544
    iput-object p5, p0, Lcom/android/settings/io;->sE:Ljava/security/cert/X509Certificate;

    .line 546
    new-instance v0, Landroid/net/http/SslCertificate;

    invoke-direct {v0, p5}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object v0, p0, Lcom/android/settings/io;->sF:Landroid/net/http/SslCertificate;

    .line 548
    iget-object v0, p0, Lcom/android/settings/io;->sF:Landroid/net/http/SslCertificate;

    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lcom/android/settings/io;->sF:Landroid/net/http/SslCertificate;

    invoke-virtual {v1}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v1

    .line 550
    iget-object v2, p0, Lcom/android/settings/io;->sF:Landroid/net/http/SslCertificate;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v2

    .line 554
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 555
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 556
    iput-object v1, p0, Lcom/android/settings/io;->sG:Ljava/lang/String;

    .line 557
    iput-object v0, p0, Lcom/android/settings/io;->sH:Ljava/lang/String;

    .line 572
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/io;->Bz:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    iget-object v1, p0, Lcom/android/settings/io;->BD:Landroid/security/IKeyChainService;

    iget-object v2, p0, Lcom/android/settings/io;->sD:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->a(Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/io;->sI:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :goto_1
    return-void

    .line 559
    :cond_0
    iput-object v1, p0, Lcom/android/settings/io;->sG:Ljava/lang/String;

    .line 560
    iput-object v2, p0, Lcom/android/settings/io;->sH:Ljava/lang/String;

    goto :goto_0

    .line 563
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 564
    iput-object v0, p0, Lcom/android/settings/io;->sG:Ljava/lang/String;

    .line 565
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/io;->sH:Ljava/lang/String;

    goto :goto_0

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/android/settings/io;->sF:Landroid/net/http/SslCertificate;

    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/io;->sG:Ljava/lang/String;

    .line 568
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/io;->sH:Ljava/lang/String;

    goto :goto_0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    const-string v1, "TrustedCredentialsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception while checking if alias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/io;->sD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is deleted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/io;->sI:Z

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/security/IKeyChainService;Lcom/android/settings/iq;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;ILcom/android/settings/id;)V
    .locals 0

    .prologue
    .line 520
    invoke-direct/range {p0 .. p6}, Lcom/android/settings/io;-><init>(Landroid/security/IKeyChainService;Lcom/android/settings/iq;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/io;Z)Z
    .locals 0

    .prologue
    .line 520
    iput-boolean p1, p0, Lcom/android/settings/io;->sI:Z

    return p1
.end method

.method static synthetic d(Lcom/android/settings/io;)Z
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/android/settings/io;->sI:Z

    return v0
.end method

.method static synthetic e(Lcom/android/settings/io;)Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/settings/io;->Bz:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/io;)Lcom/android/settings/iq;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/settings/io;->BA:Lcom/android/settings/iq;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/io;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/settings/io;->sG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings/io;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/settings/io;->sH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/io;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/settings/io;->sD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/android/settings/io;)Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/settings/io;->sE:Ljava/security/cert/X509Certificate;

    return-object v0
.end method


# virtual methods
.method public c(Lcom/android/settings/io;)I
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/settings/io;->sG:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/io;->sG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 581
    if-eqz v0, :cond_0

    .line 584
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/io;->sH:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/io;->sH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 520
    check-cast p1, Lcom/android/settings/io;

    invoke-virtual {p0, p1}, Lcom/android/settings/io;->c(Lcom/android/settings/io;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 587
    instance-of v0, p1, Lcom/android/settings/io;

    if-nez v0, :cond_0

    .line 588
    const/4 v0, 0x0

    .line 591
    :goto_0
    return v0

    .line 590
    :cond_0
    check-cast p1, Lcom/android/settings/io;

    .line 591
    iget-object v0, p0, Lcom/android/settings/io;->sD:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/io;->sD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/settings/io;->sD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
