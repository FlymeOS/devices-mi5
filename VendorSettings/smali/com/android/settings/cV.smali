.class Lcom/android/settings/cV;
.super Lmiui/app/ProgressDialog;
.source "EncryptionSettings.java"


# instance fields
.field final synthetic mH:Lcom/android/settings/EncryptionSettings;

.field private mJ:Z


# direct methods
.method private constructor <init>(Lcom/android/settings/EncryptionSettings;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 283
    iput-object p1, p0, Lcom/android/settings/cV;->mH:Lcom/android/settings/EncryptionSettings;

    .line 284
    invoke-virtual {p1}, Lcom/android/settings/EncryptionSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 285
    iput-boolean v1, p0, Lcom/android/settings/cV;->mJ:Z

    .line 286
    invoke-virtual {p0, v1}, Lcom/android/settings/cV;->setProgressStyle(I)V

    .line 287
    invoke-virtual {p0, v1}, Lcom/android/settings/cV;->setCancelable(Z)V

    .line 288
    invoke-virtual {p0, v1}, Lcom/android/settings/cV;->setCanceledOnTouchOutside(Z)V

    .line 289
    invoke-virtual {p1, p2}, Lcom/android/settings/EncryptionSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/cV;->setMessage(Ljava/lang/CharSequence;)V

    .line 290
    new-instance v0, Lcom/android/settings/cW;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/cW;-><init>(Lcom/android/settings/cV;Lcom/android/settings/EncryptionSettings;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/cV;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 298
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/EncryptionSettings;ILcom/android/settings/cT;)V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0, p1, p2}, Lcom/android/settings/cV;-><init>(Lcom/android/settings/EncryptionSettings;I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/cV;Z)Z
    .locals 0

    .prologue
    .line 280
    iput-boolean p1, p0, Lcom/android/settings/cV;->mJ:Z

    return p1
.end method

.method private dQ()V
    .locals 4

    .prologue
    .line 312
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 313
    new-instance v1, Lcom/android/settings/cX;

    invoke-direct {v1, p0}, Lcom/android/settings/cX;-><init>(Lcom/android/settings/cV;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 319
    return-void
.end method


# virtual methods
.method public dR()V
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/android/settings/cV;->mJ:Z

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/cV;->dismiss()V

    .line 325
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 302
    monitor-enter p0

    .line 303
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/cV;->mJ:Z

    if-nez v0, :cond_0

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/cV;->mJ:Z

    .line 305
    invoke-super {p0}, Lmiui/app/ProgressDialog;->show()V

    .line 307
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    invoke-direct {p0}, Lcom/android/settings/cV;->dQ()V

    .line 309
    return-void

    .line 307
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
