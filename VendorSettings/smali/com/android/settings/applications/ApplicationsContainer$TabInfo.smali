.class public Lcom/android/settings/applications/ApplicationsContainer$TabInfo;
.super Ljava/lang/Object;
.source "ApplicationsContainer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final HA:Lcom/android/b/a/a;

.field public final HS:Lcom/android/settings/applications/ApplicationsContainer;

.field public final HT:I

.field public final HU:I

.field public final HV:Lcom/android/settings/applications/ManageAppClickListener;

.field public final HW:Ljava/lang/CharSequence;

.field public HX:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

.field private HY:Landroid/view/View;

.field private HZ:Z

.field public final Hd:Ljava/lang/CharSequence;

.field final Ia:Ljava/lang/Runnable;

.field private bz:Landroid/widget/ListView;

.field public mInflater:Landroid/view/LayoutInflater;

.field public final mLabel:Ljava/lang/CharSequence;

.field public mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ApplicationsContainer;Lcom/android/b/a/a;Ljava/lang/CharSequence;ILcom/android/settings/applications/ManageAppClickListener;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    new-instance v0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo$1;-><init>(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->Ia:Ljava/lang/Runnable;

    .line 381
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HS:Lcom/android/settings/applications/ApplicationsContainer;

    .line 382
    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HA:Lcom/android/b/a/a;

    .line 383
    iput-object p3, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mLabel:Ljava/lang/CharSequence;

    .line 384
    iput p4, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HT:I

    .line 385
    packed-switch p4, :pswitch_data_0

    .line 388
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HU:I

    .line 390
    :goto_0
    iput-object p5, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HV:Lcom/android/settings/applications/ManageAppClickListener;

    .line 391
    const v0, 0x7f0c05c3

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/ApplicationsContainer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->Hd:Ljava/lang/CharSequence;

    .line 392
    const v0, 0x7f0c05c2

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/ApplicationsContainer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HW:Ljava/lang/CharSequence;

    .line 393
    return-void

    .line 386
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HU:I

    goto :goto_0

    .line 387
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HU:I

    goto :goto_0

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->bz:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/view/View;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HY:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public al(Z)V
    .locals 0

    .prologue
    .line 474
    iput-boolean p1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HZ:Z

    .line 475
    return-void
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 396
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    .line 424
    :goto_0
    return-object v0

    .line 400
    :cond_0
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    .line 401
    const v0, 0x7f0400a4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    .line 402
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    const v1, 0x7f130124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HY:Landroid/view/View;

    .line 403
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HY:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 407
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 408
    if-eqz v1, :cond_1

    .line 409
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 411
    :cond_1
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 412
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 413
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 414
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 415
    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->bz:Landroid/widget/ListView;

    .line 416
    new-instance v0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HA:Lcom/android/b/a/a;

    iget v2, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HU:I

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;-><init>(Lcom/android/b/a/a;Lcom/android/settings/applications/ApplicationsContainer$TabInfo;I)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HX:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    .line 417
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->bz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HX:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 418
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->bz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HX:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 420
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HS:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsContainer;->kf()I

    move-result v0

    iget v1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HT:I

    if-ne v0, v1, :cond_2

    .line 421
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HS:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/ApplicationsContainer;->a(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)V

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    goto :goto_0
.end method

.method isUpdate()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HZ:Z

    return v0
.end method

.method public kh()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HX:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HX:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->destroy()V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HS:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsContainer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/RunningState;->aq(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->pause()V

    .line 435
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 437
    if-eqz v0, :cond_1

    .line 438
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 441
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HZ:Z

    .line 442
    return-void
.end method

.method ki()V
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HY:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HS:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-virtual {v1}, Lcom/android/settings/applications/ApplicationsContainer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 489
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HY:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 490
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    .prologue
    .line 483
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HV:Lcom/android/settings/applications/ManageAppClickListener;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/android/settings/applications/ManageAppClickListener;->a(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 484
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HX:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HX:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->pause()V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HS:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsContainer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/RunningState;->aq(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v0

    .line 466
    iget v1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HT:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HT:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 468
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->pause()V

    .line 470
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HZ:Z

    .line 471
    return-void
.end method

.method public resume(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 445
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HX:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HX:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->resume(I)V

    .line 447
    iput-boolean v3, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HZ:Z

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HS:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsContainer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/RunningState;->aq(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v0

    .line 451
    iget v1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HT:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HT:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 453
    :cond_1
    iget-boolean v1, v0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    if-nez v1, :cond_2

    .line 454
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HS:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState;->c(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V

    .line 456
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->HZ:Z

    .line 458
    :cond_3
    return-void
.end method
