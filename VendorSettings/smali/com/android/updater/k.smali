.class public Lcom/android/updater/k;
.super Landroid/content/BroadcastReceiver;
.source "ApplyUpdateFragment.java"


# instance fields
.field final synthetic aMP:Lcom/android/updater/ApplyUpdateFragment;


# direct methods
.method public constructor <init>(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/updater/k;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .prologue
    const/4 v9, 0x2

    const-wide/16 v10, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=UpdateInfoReceiver===action"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/updater/a/b;->log(Ljava/lang/String;)V

    .line 385
    const-string v0, "type"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 386
    const-string v0, "download"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 387
    const-string v0, "id"

    invoke-virtual {p2, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 388
    cmp-long v0, v6, v10

    if-eqz v0, :cond_2

    .line 389
    const-string v0, "status"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 390
    const-string v0, "total"

    invoke-virtual {p2, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 391
    const-string v0, "sofar"

    invoke-virtual {p2, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get download info: id="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " status="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " total="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " sofar="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/updater/a/b;->log(Ljava/lang/String;)V

    .line 395
    invoke-static {v4, v5}, Lcom/android/updater/ApplyUpdateFragment;->z(J)J

    .line 396
    invoke-static {v2, v3}, Lcom/android/updater/ApplyUpdateFragment;->A(J)J

    .line 399
    iget-object v0, p0, Lcom/android/updater/k;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    invoke-static {v0, v8}, Lcom/android/updater/ApplyUpdateFragment;->b(Lcom/android/updater/ApplyUpdateFragment;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/updater/k;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    invoke-static {v0}, Lcom/android/updater/ApplyUpdateFragment;->d(Lcom/android/updater/ApplyUpdateFragment;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/updater/k;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    invoke-static/range {v0 .. v5}, Lcom/android/updater/ApplyUpdateFragment;->a(Lcom/android/updater/ApplyUpdateFragment;ZJJ)V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/updater/k;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    iget-object v0, v0, Lcom/android/updater/ApplyUpdateFragment;->aMx:Lcom/android/updater/a/a;

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/updater/a/a;->a(IJJ)V

    .line 440
    :cond_1
    :goto_0
    return-void

    .line 405
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get invalid download info: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/updater/a/b;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get update info: type="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/updater/a/b;->log(Ljava/lang/String;)V

    .line 410
    const-string v0, "version"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 411
    const-string v0, "updater-state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 412
    const-string v0, "des_url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 413
    const-string v0, "check"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 414
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get update info: hasUpdate="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " version="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " durl="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/updater/a/b;->log(Ljava/lang/String;)V

    .line 416
    iget-object v7, p0, Lcom/android/updater/k;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    iget-object v7, v7, Lcom/android/updater/ApplyUpdateFragment;->aMK:Landroid/app/ProgressDialog;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/updater/k;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    iget-object v7, v7, Lcom/android/updater/ApplyUpdateFragment;->aMK:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 417
    iget-object v7, p0, Lcom/android/updater/k;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    iget-object v7, v7, Lcom/android/updater/ApplyUpdateFragment;->aMK:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 420
    :cond_4
    invoke-static {v6}, Lcom/android/updater/ApplyUpdateFragment;->cw(Ljava/lang/String;)Ljava/lang/String;

    .line 421
    invoke-static {v4}, Lcom/android/updater/ApplyUpdateFragment;->cx(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 424
    iget-object v3, p0, Lcom/android/updater/k;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    iget-object v3, v3, Lcom/android/updater/ApplyUpdateFragment;->aMx:Lcom/android/updater/a/a;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v7, v4, v6}, Lcom/android/updater/a/a;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v7, p0, Lcom/android/updater/k;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    if-nez v0, :cond_6

    move v3, v1

    :goto_2
    if-ne v5, v9, :cond_7

    move v0, v1

    :goto_3
    invoke-virtual {v7, v4, v3, v6, v0}, Lcom/android/updater/ApplyUpdateFragment;->a(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 427
    iget-object v0, p0, Lcom/android/updater/k;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    iget-object v3, p0, Lcom/android/updater/k;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    iget-object v3, v3, Lcom/android/updater/ApplyUpdateFragment;->aMx:Lcom/android/updater/a/a;

    invoke-virtual {v3}, Lcom/android/updater/a/a;->Bo()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/updater/k;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    iget-object v3, v3, Lcom/android/updater/ApplyUpdateFragment;->aMx:Lcom/android/updater/a/a;

    invoke-virtual {v3}, Lcom/android/updater/a/a;->getTotalBytes()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_8

    :goto_4
    invoke-static {v0, v2}, Lcom/android/updater/ApplyUpdateFragment;->a(Lcom/android/updater/ApplyUpdateFragment;I)I

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 413
    goto/16 :goto_1

    :cond_6
    move v3, v2

    .line 425
    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v2, v1

    .line 427
    goto :goto_4

    .line 429
    :cond_9
    const-string v0, "check"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    const v0, 0x7f0c0fe4

    .line 431
    iget-object v1, p0, Lcom/android/updater/k;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    invoke-static {v1}, Lcom/android/updater/ApplyUpdateFragment;->e(Lcom/android/updater/ApplyUpdateFragment;)I

    move-result v1

    if-ne v1, v9, :cond_b

    .line 432
    const v0, 0x7f0c0fe5

    .line 436
    :cond_a
    :goto_5
    iget-object v1, p0, Lcom/android/updater/k;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    iget-object v1, v1, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 437
    iget-object v0, p0, Lcom/android/updater/k;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    invoke-static {v0}, Lcom/android/updater/ApplyUpdateFragment;->f(Lcom/android/updater/ApplyUpdateFragment;)I

    goto/16 :goto_0

    .line 433
    :cond_b
    iget-object v1, p0, Lcom/android/updater/k;->aMP:Lcom/android/updater/ApplyUpdateFragment;

    invoke-static {v1}, Lcom/android/updater/ApplyUpdateFragment;->e(Lcom/android/updater/ApplyUpdateFragment;)I

    move-result v1

    if-le v1, v9, :cond_a

    .line 434
    const v0, 0x7f0c0fe6

    goto :goto_5
.end method
