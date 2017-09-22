.class Lcom/android/vendorsettings/applications/RunningState$ProcessItem;
.super Lcom/android/vendorsettings/applications/RunningState$BaseItem;
.source "RunningState.java"


# instance fields
.field NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

.field OP:J

.field final OZ:Ljava/util/HashMap;

.field final Pa:Landroid/util/SparseArray;

.field Pb:Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

.field Pc:I

.field Pd:I

.field Pe:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field Pf:Z

.field Pg:Z

.field mIsSystem:Z

.field mPid:I

.field final mProcessName:Ljava/lang/String;

.field final mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 415
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/android/vendorsettings/applications/RunningState$BaseItem;-><init>(ZI)V

    .line 390
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OZ:Ljava/util/HashMap;

    .line 392
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pa:Landroid/util/SparseArray;

    .line 416
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c05ec

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mDescription:Ljava/lang/String;

    .line 418
    iput p2, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mUid:I

    .line 419
    iput-object p3, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    .line 420
    return-void
.end method


# virtual methods
.method a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pa:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 617
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 618
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pa:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    .line 619
    invoke-virtual {v0, p1, p2}, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 620
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    iget v3, v0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v3, :cond_0

    .line 622
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 625
    :cond_1
    return-void
.end method

.method a(Landroid/content/Context;JI)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 577
    const-wide/16 v0, 0x400

    mul-long/2addr v0, p2

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mSize:J

    .line 578
    iget v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OO:I

    if-ne v0, p4, :cond_0

    .line 579
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mSize:J

    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 581
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 582
    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OQ:Ljava/lang/String;

    .line 589
    :cond_0
    return v2
.end method

.method a(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 513
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 516
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OZ:Ljava/util/HashMap;

    iget-object v2, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;

    .line 517
    if-nez v0, :cond_8

    .line 519
    new-instance v2, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;

    iget v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v2, v0}, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;-><init>(I)V

    .line 520
    iput-object p2, v2, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Ph:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 522
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    const/16 v7, 0x2000

    iget v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-interface {v0, v6, v7, v8}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iput-object v0, v2, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pi:Landroid/content/pm/ServiceInfo;

    .line 526
    iget-object v0, v2, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pi:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_1

    .line 527
    const-string v0, "RunningService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getServiceInfo returned null for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :cond_0
    :goto_0
    return v4

    .line 531
    :catch_0
    move-exception v0

    .line 534
    :cond_1
    iget-object v0, v2, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pi:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, v2, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Ph:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v6, v2, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pi:Landroid/content/pm/ServiceInfo;

    invoke-static {v5, v0, v6}, Lcom/android/vendorsettings/applications/RunningState;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v2, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->ON:Ljava/lang/CharSequence;

    .line 540
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->ON:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->ON:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 541
    iget-object v0, v2, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pi:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, v2, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->OM:Landroid/content/pm/PackageItemInfo;

    .line 542
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OZ:Ljava/util/HashMap;

    iget-object v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    move v2, v3

    .line 544
    :goto_2
    iget v6, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OO:I

    iput v6, v0, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->OO:I

    .line 545
    iput-object p2, v0, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Ph:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 546
    iget-wide v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    iget-wide v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 547
    :goto_3
    iget-wide v8, v0, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->OP:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_2

    .line 548
    iput-wide v6, v0, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->OP:J

    move v2, v3

    .line 551
    :cond_2
    iget-object v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v6, :cond_5

    .line 552
    iget-boolean v6, v0, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pj:Z

    if-eqz v6, :cond_7

    .line 553
    iput-boolean v4, v0, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pj:Z

    .line 557
    :goto_4
    :try_start_1
    iget-object v2, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 558
    iget v4, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 559
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c05e8

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->mDescription:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    move v4, v3

    .line 573
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 540
    goto :goto_1

    .line 546
    :cond_4
    const-wide/16 v6, -0x1

    goto :goto_3

    .line 561
    :catch_1
    move-exception v2

    .line 562
    iput-object v1, v0, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->mDescription:Ljava/lang/String;

    goto :goto_5

    .line 565
    :cond_5
    iget-boolean v1, v0, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pj:Z

    if-nez v1, :cond_6

    .line 566
    iput-boolean v3, v0, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pj:Z

    .line 569
    :goto_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c05e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->mDescription:Ljava/lang/String;

    goto :goto_5

    :cond_6
    move v3, v2

    goto :goto_6

    :cond_7
    move v3, v2

    goto :goto_4

    :cond_8
    move v2, v4

    goto :goto_2
.end method

.method a(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 593
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pa:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v3, v0

    move v1, v0

    .line 595
    :goto_0
    if-ge v3, v4, :cond_1

    .line 596
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pa:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    .line 597
    iget-object v5, v0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pb:Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    if-eq v5, p0, :cond_0

    .line 599
    iput-object p0, v0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pb:Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    move v1, v2

    .line 601
    :cond_0
    iput p3, v0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OO:I

    .line 602
    invoke-virtual {v0, p2}, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->b(Landroid/content/pm/PackageManager;)V

    .line 603
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v0

    or-int/2addr v1, v0

    .line 595
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 606
    :cond_1
    iget v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pc:I

    iget-object v3, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pa:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 608
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pa:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pc:I

    .line 611
    :goto_1
    return v2

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method b(Landroid/content/pm/PackageManager;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 423
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 510
    :goto_0
    return-void

    .line 428
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    const/16 v2, 0x2000

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 430
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v3, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mUid:I

    if-ne v2, v3, :cond_1

    .line 431
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->ON:Ljava/lang/CharSequence;

    .line 432
    iget-object v2, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->ON:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 433
    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OM:Landroid/content/pm/PackageItemInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 441
    :cond_1
    iget v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 445
    if-nez v0, :cond_2

    .line 446
    const-string v0, "RunningState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackagesForUid return null for uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-array v0, v1, [Ljava/lang/String;

    .line 452
    :cond_2
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 454
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v0, v2

    const/16 v3, 0x2000

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 456
    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->ON:Ljava/lang/CharSequence;

    .line 457
    iget-object v3, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->ON:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 458
    iput-object v2, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OM:Landroid/content/pm/PackageItemInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 460
    :catch_1
    move-exception v2

    .line 466
    :cond_3
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 468
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 469
    iget v5, v4, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v5, :cond_4

    .line 470
    iget v5, v4, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v3, v5, v6}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 472
    if-eqz v3, :cond_4

    .line 473
    iput-object v3, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->ON:Ljava/lang/CharSequence;

    .line 474
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 475
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OM:Landroid/content/pm/PackageItemInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 479
    :catch_2
    move-exception v3

    .line 466
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 485
    :cond_5
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OZ:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 486
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OZ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pi:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 488
    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OM:Landroid/content/pm/PackageItemInfo;

    .line 489
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OM:Landroid/content/pm/PackageItemInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->ON:Ljava/lang/CharSequence;

    .line 490
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->ON:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 497
    :cond_6
    :try_start_3
    array-length v1, v0

    if-nez v1, :cond_7

    .line 498
    const-string v0, "RunningState"

    const-string v1, "pkgs is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 508
    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 502
    :cond_7
    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x2000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 504
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->ON:Ljava/lang/CharSequence;

    .line 505
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->ON:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 506
    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OM:Landroid/content/pm/PackageItemInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0
.end method
