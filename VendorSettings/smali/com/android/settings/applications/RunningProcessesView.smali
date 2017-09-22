.class public Lcom/android/vendorsettings/applications/RunningProcessesView;
.super Landroid/widget/FrameLayout;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/vendorsettings/applications/RunningState$OnRefreshUiListener;


# instance fields
.field Hx:Lcom/android/vendorsettings/applications/RunningState;

.field LR:Lcom/android/vendorsettings/applications/LinearColorBar;

.field final MS:Ljava/util/HashMap;

.field MT:Landroid/app/ActivityManager;

.field MV:Ljava/lang/Runnable;

.field MW:J

.field MX:Lcom/android/vendorsettings/applications/RunningState$BaseItem;

.field MY:Lcom/android/internal/util/MemInfoReader;

.field final Nj:I

.field Nk:Landroid/app/Fragment;

.field Nl:Landroid/view/View;

.field Nm:Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;

.field Nn:Landroid/widget/TextView;

.field No:Landroid/widget/TextView;

.field Np:Landroid/widget/TextView;

.field Nq:Landroid/widget/TextView;

.field Nr:Landroid/widget/TextView;

.field Ns:Landroid/widget/TextView;

.field Nt:J

.field Nu:J

.field Nv:J

.field Nw:J

.field Nx:Z

.field bz:Landroid/widget/ListView;

.field mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 444
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->MS:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    .line 89
    iput-wide v2, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nt:J

    .line 90
    iput-wide v2, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nu:J

    .line 91
    iput-wide v2, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nv:J

    .line 92
    iput-wide v2, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nw:J

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nx:Z

    .line 97
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->MY:Lcom/android/internal/util/MemInfoReader;

    .line 445
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nj:I

    .line 446
    return-void
.end method

.method private a(Lcom/android/vendorsettings/applications/RunningState$MergedItem;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 423
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nk:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 425
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 426
    iget-object v0, p1, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OU:Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    if-eqz v0, :cond_0

    .line 427
    const-string v0, "uid"

    iget-object v1, p1, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OU:Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    iget v1, v1, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 428
    const-string v0, "process"

    iget-object v1, p1, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OU:Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    iget-object v1, v1, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_0
    const-string v0, "user_id"

    iget v1, p1, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 431
    const-string v0, "background"

    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nm:Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v1, v1, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->Nh:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 433
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nk:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/hn;

    .line 434
    const-class v1, Lcom/android/vendorsettings/applications/RunningServiceDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c05fb

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 437
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Fragment;Ljava/lang/Runnable;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 489
    iput-object p1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nk:Landroid/app/Fragment;

    .line 490
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    invoke-virtual {v1, p0}, Lcom/android/vendorsettings/applications/RunningState;->c(Lcom/android/vendorsettings/applications/RunningState$OnRefreshUiListener;)V

    .line 491
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/vendorsettings/applications/RunningState;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/RunningProcessesView;->at(Z)V

    .line 498
    :goto_0
    return v0

    .line 497
    :cond_0
    iput-object p2, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->MV:Ljava/lang/Runnable;

    .line 498
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aG(I)V
    .locals 1

    .prologue
    .line 516
    packed-switch p1, :pswitch_data_0

    .line 529
    :goto_0
    return-void

    .line 518
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningProcessesView;->ln()V

    goto :goto_0

    .line 521
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/RunningProcessesView;->at(Z)V

    .line 522
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningProcessesView;->ln()V

    goto :goto_0

    .line 525
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/RunningProcessesView;->at(Z)V

    .line 526
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningProcessesView;->ln()V

    goto :goto_0

    .line 516
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method at(Z)V
    .locals 18

    .prologue
    .line 335
    if-eqz p1, :cond_0

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nm:Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;

    .line 337
    invoke-virtual {v2}, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->lo()V

    .line 338
    invoke-virtual {v2}, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->notifyDataSetChanged()V

    .line 341
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->MV:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->MV:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 343
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->MV:Ljava/lang/Runnable;

    .line 346
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->MY:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    iget-object v6, v2, Lcom/android/vendorsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 359
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nx:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nm:Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v3, v3, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->Nh:Z

    if-eq v2, v3, :cond_2

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nm:Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v2, v2, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;->Nh:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nx:Z

    .line 361
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nx:Z

    if-eqz v2, :cond_5

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Np:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c05f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->No:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c05f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->MY:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v8

    .line 377
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nx:Z

    if-eqz v2, :cond_6

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->MY:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->MY:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    iget-wide v4, v4, Lcom/android/vendorsettings/applications/RunningState;->Oz:J

    .line 386
    :goto_1
    sub-long v10, v8, v4

    sub-long/2addr v10, v2

    .line 388
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nt:J

    cmp-long v7, v12, v8

    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nu:J

    cmp-long v7, v12, v10

    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nv:J

    cmp-long v7, v12, v4

    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nw:J

    cmp-long v7, v12, v2

    if-eqz v7, :cond_4

    .line 390
    :cond_3
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nt:J

    .line 391
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nu:J

    .line 392
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nv:J

    .line 393
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nw:J

    .line 394
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v7

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 397
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nq:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c05fa

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v12, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 401
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nr:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c05fa

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v12, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 405
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Ns:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c05fa

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->LR:Lcom/android/vendorsettings/applications/LinearColorBar;

    long-to-float v10, v10

    long-to-float v11, v8

    div-float/2addr v10, v11

    long-to-float v4, v4

    long-to-float v5, v8

    div-float/2addr v4, v5

    long-to-float v2, v2

    long-to-float v3, v8

    div-float/2addr v2, v3

    invoke-virtual {v7, v10, v4, v2}, Lcom/android/vendorsettings/applications/LinearColorBar;->a(FFF)V

    .line 411
    :cond_4
    monitor-exit v6

    .line 412
    return-void

    .line 367
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Np:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c05f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->No:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/vendorsettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c05f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 411
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 381
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->MY:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->MY:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    iget-wide v4, v4, Lcom/android/vendorsettings/applications/RunningState;->Oz:J

    add-long/2addr v2, v4

    .line 383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    iget-wide v4, v4, Lcom/android/vendorsettings/applications/RunningState;->OD:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method ln()V
    .locals 4

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->MS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 503
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;

    .line 505
    iget-object v2, v0, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 507
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/vendorsettings/applications/RunningProcessesView$ActiveItem;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 512
    :cond_1
    return-void
.end method

.method public lp()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 449
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->MT:Landroid/app/ActivityManager;

    .line 450
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/applications/RunningState;->aq(Landroid/content/Context;)Lcom/android/vendorsettings/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    .line 451
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 453
    const v1, 0x7f040124

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 454
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->bz:Landroid/widget/ListView;

    .line 455
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 456
    if-eqz v1, :cond_0

    .line 457
    iget-object v2, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->bz:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->bz:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 460
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->bz:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 461
    new-instance v1, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    invoke-direct {v1, p0, v2}, Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;-><init>(Lcom/android/vendorsettings/applications/RunningProcessesView;Lcom/android/vendorsettings/applications/RunningState;)V

    iput-object v1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nm:Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;

    .line 462
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->bz:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nm:Lcom/android/vendorsettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 463
    const v1, 0x7f040122

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nl:Landroid/view/View;

    .line 464
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->bz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nl:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 465
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nl:Landroid/view/View;

    const v1, 0x7f1301f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/LinearColorBar;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->LR:Lcom/android/vendorsettings/applications/LinearColorBar;

    .line 466
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->LR:Lcom/android/vendorsettings/applications/LinearColorBar;

    const v2, 0x7f0e0040

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    const v3, 0x7f0e0041

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    const v4, 0x7f0e0042

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/vendorsettings/applications/LinearColorBar;->a(III)V

    .line 470
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nl:Landroid/view/View;

    const v1, 0x7f130284

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nn:Landroid/widget/TextView;

    .line 471
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nl:Landroid/view/View;

    const v1, 0x7f130282

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->No:Landroid/widget/TextView;

    .line 472
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nl:Landroid/view/View;

    const v1, 0x7f130280

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Np:Landroid/widget/TextView;

    .line 473
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nl:Landroid/view/View;

    const v1, 0x7f130285

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nq:Landroid/widget/TextView;

    .line 474
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nl:Landroid/view/View;

    const v1, 0x7f130283

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nr:Landroid/widget/TextView;

    .line 475
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nl:Landroid/view/View;

    const v1, 0x7f130281

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Ns:Landroid/widget/TextView;

    .line 477
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 478
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->MT:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 479
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->MW:J

    .line 480
    return-void
.end method

.method public lq()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 483
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/RunningState;->pause()V

    .line 484
    iput-object v1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->MV:Ljava/lang/Runnable;

    .line 485
    iput-object v1, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->Nk:Landroid/app/Fragment;

    .line 486
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 415
    check-cast p1, Landroid/widget/ListView;

    .line 416
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    .line 417
    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->MX:Lcom/android/vendorsettings/applications/RunningState$BaseItem;

    .line 418
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/applications/RunningProcessesView;->a(Lcom/android/vendorsettings/applications/RunningState$MergedItem;)V

    .line 419
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningProcessesView;->MS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    return-void
.end method
