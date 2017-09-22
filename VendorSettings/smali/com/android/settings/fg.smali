.class Lcom/android/settings/fg;
.super Landroid/os/AsyncTask;
.source "MiuiSecurityTrustedCredentials.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final sz:Lcom/android/settings/fh;


# direct methods
.method private constructor <init>(Lcom/android/settings/fh;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 379
    iput-object p1, p0, Lcom/android/settings/fg;->sz:Lcom/android/settings/fh;

    .line 380
    iput-object p2, p0, Lcom/android/settings/fg;->mActivity:Landroid/app/Activity;

    .line 381
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fh;Landroid/app/Activity;Lcom/android/settings/ff;)V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fg;-><init>(Lcom/android/settings/fh;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fg;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v1

    .line 385
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 387
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/fg;->sz:Lcom/android/settings/fh;

    invoke-static {v2}, Lcom/android/settings/fh;->b(Lcom/android/settings/fh;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    iget-object v2, p0, Lcom/android/settings/fg;->sz:Lcom/android/settings/fh;

    invoke-static {v2}, Lcom/android/settings/fh;->g(Lcom/android/settings/fh;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 389
    invoke-interface {v0, v2}, Landroid/security/IKeyChainService;->installCaCertificate([B)V

    .line 390
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 395
    :try_start_2
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 406
    :goto_0
    return-object v0

    .line 392
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/settings/fg;->sz:Lcom/android/settings/fh;

    invoke-static {v2}, Lcom/android/settings/fh;->h(Lcom/android/settings/fh;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 395
    :try_start_4
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v0
    :try_end_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    .line 399
    :catch_1
    move-exception v0

    .line 401
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 402
    :catch_2
    move-exception v0

    .line 403
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 404
    :catch_3
    move-exception v0

    .line 405
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 406
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 375
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/fg;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/settings/fg;->sz:Lcom/android/settings/fh;

    invoke-static {v0}, Lcom/android/settings/fh;->c(Lcom/android/settings/fh;)Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fg;->sz:Lcom/android/settings/fh;

    invoke-static {v0, v1, v2}, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->a(Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;ZLcom/android/settings/fh;)V

    .line 411
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 375
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/fg;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
