.class Lcom/android/settings/im;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# instance fields
.field final synthetic BB:Lcom/android/settings/il;

.field private mContext:Landroid/content/Context;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private sO:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/settings/il;)V
    .locals 2

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/settings/im;->BB:Lcom/android/settings/il;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 418
    iget-object v0, p1, Lcom/android/settings/il;->Br:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/im;->mContext:Landroid/content/Context;

    .line 419
    iget-object v0, p1, Lcom/android/settings/il;->Br:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->b(Lcom/android/settings/TrustedCredentialsSettings;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/il;->b(Lcom/android/settings/il;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    return-void
.end method


# virtual methods
.method protected a(Landroid/util/SparseArray;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 497
    iget-object v0, p0, Lcom/android/settings/im;->BB:Lcom/android/settings/il;

    invoke-static {v0}, Lcom/android/settings/il;->a(Lcom/android/settings/il;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 498
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v0, v1

    .line 499
    :goto_0
    if-ge v0, v2, :cond_0

    .line 500
    iget-object v3, p0, Lcom/android/settings/im;->BB:Lcom/android/settings/il;

    invoke-static {v3}, Lcom/android/settings/il;->a(Lcom/android/settings/il;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/settings/im;->BB:Lcom/android/settings/il;

    invoke-static {v0}, Lcom/android/settings/il;->c(Lcom/android/settings/il;)Lcom/android/settings/iq;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/iq;->notifyDataSetChanged()V

    .line 503
    iget-object v0, p0, Lcom/android/settings/im;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/android/settings/im;->sO:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/android/settings/im;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 506
    iget-object v0, p0, Lcom/android/settings/im;->BB:Lcom/android/settings/il;

    iget-object v0, v0, Lcom/android/settings/il;->Br:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->b(Lcom/android/settings/TrustedCredentialsSettings;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/im;->BB:Lcom/android/settings/il;

    invoke-static {v1}, Lcom/android/settings/il;->b(Lcom/android/settings/il;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    return-void
.end method

.method protected varargs c([Ljava/lang/Void;)Landroid/util/SparseArray;
    .locals 21

    .prologue
    .line 430
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 433
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/im;->BB:Lcom/android/settings/il;

    iget-object v2, v2, Lcom/android/settings/il;->Br:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v2}, Lcom/android/settings/TrustedCredentialsSettings;->a(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v16

    .line 434
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    .line 437
    new-instance v18, Landroid/util/SparseArray;

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 439
    const/4 v3, 0x0

    .line 440
    const/4 v4, 0x0

    .line 441
    const/4 v2, 0x0

    move v15, v3

    move v3, v2

    :goto_0
    move/from16 v0, v17

    if-ge v3, v0, :cond_1

    .line 442
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 443
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 444
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/im;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v2

    .line 447
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/im;->BB:Lcom/android/settings/il;

    iget-object v5, v5, Lcom/android/settings/il;->Br:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v5}, Lcom/android/settings/TrustedCredentialsSettings;->d(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 448
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    .line 449
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/im;->BB:Lcom/android/settings/il;

    invoke-static {v5}, Lcom/android/settings/il;->b(Lcom/android/settings/il;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->a(Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object v2

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/im;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 451
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 485
    :goto_1
    return-object v2

    .line 453
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v15

    .line 454
    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 441
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v15, v5

    goto :goto_0

    .line 456
    :cond_1
    const/4 v2, 0x0

    move v14, v2

    :goto_2
    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 457
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 458
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 459
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/List;

    move-object v10, v0

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/im;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 461
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 480
    :catch_0
    move-exception v2

    .line 481
    const-string v3, "TrustedCredentialsSettings"

    const-string v4, "Remote exception while loading aliases."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    goto :goto_1

    .line 463
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/im;->BB:Lcom/android/settings/il;

    iget-object v2, v2, Lcom/android/settings/il;->Br:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v2}, Lcom/android/settings/TrustedCredentialsSettings;->d(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    .line 465
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 466
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v20

    .line 467
    const/4 v2, 0x0

    move v12, v2

    move v13, v4

    :goto_3
    move/from16 v0, v20

    if-ge v12, v0, :cond_3

    .line 468
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/ParcelableString;

    iget-object v6, v2, Lcom/android/internal/util/ParcelableString;->string:Ljava/lang/String;

    .line 469
    const/4 v2, 0x1

    invoke-interface {v3, v6, v2}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v2

    .line 471
    invoke-static {v2}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 472
    new-instance v2, Lcom/android/settings/io;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/im;->BB:Lcom/android/settings/il;

    invoke-static {v4}, Lcom/android/settings/il;->c(Lcom/android/settings/il;)Lcom/android/settings/iq;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/im;->BB:Lcom/android/settings/il;

    invoke-static {v5}, Lcom/android/settings/il;->b(Lcom/android/settings/il;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v5

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/io;-><init>(Landroid/security/IKeyChainService;Lcom/android/settings/iq;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;ILcom/android/settings/id;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v5, 0x0

    add-int/lit8 v4, v13, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/im;->publishProgress([Ljava/lang/Object;)V

    .line 467
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    move v13, v4

    goto :goto_3

    .line 476
    :cond_3
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 477
    move-object/from16 v0, v19

    invoke-virtual {v11, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 456
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    move v4, v13

    goto/16 :goto_2

    :cond_4
    move-object v2, v11

    .line 479
    goto/16 :goto_1

    .line 483
    :catch_1
    move-exception v2

    .line 484
    const-string v3, "TrustedCredentialsSettings"

    const-string v4, "InterruptedException while loading aliases."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    goto/16 :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 412
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/im;->c([Ljava/lang/Void;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 412
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/settings/im;->a(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/settings/im;->BB:Lcom/android/settings/il;

    iget-object v0, v0, Lcom/android/settings/il;->Br:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->c(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 424
    iget-object v0, p0, Lcom/android/settings/im;->BB:Lcom/android/settings/il;

    invoke-static {v0}, Lcom/android/settings/il;->b(Lcom/android/settings/il;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->g(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/im;->mProgressBar:Landroid/widget/ProgressBar;

    .line 425
    iget-object v0, p0, Lcom/android/settings/im;->BB:Lcom/android/settings/il;

    invoke-static {v0}, Lcom/android/settings/il;->c(Lcom/android/settings/il;)Lcom/android/settings/iq;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/im;->BB:Lcom/android/settings/il;

    invoke-static {v2}, Lcom/android/settings/il;->b(Lcom/android/settings/il;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/settings/iq;->i(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/im;->sO:Landroid/view/View;

    .line 426
    iget-object v0, p0, Lcom/android/settings/im;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/android/settings/im;->sO:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 428
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 489
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 490
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 491
    iget-object v2, p0, Lcom/android/settings/im;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 492
    iget-object v2, p0, Lcom/android/settings/im;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/android/settings/im;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 495
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 412
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/im;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
