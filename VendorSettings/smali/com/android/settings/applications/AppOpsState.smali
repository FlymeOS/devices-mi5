.class public Lcom/android/settings/applications/AppOpsState;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# static fields
.field public static final FJ:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final FK:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final FL:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final FM:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final FN:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final FO:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final FP:Ljava/util/Comparator;


# instance fields
.field final FH:[Ljava/lang/CharSequence;

.field final FI:[Ljava/lang/CharSequence;

.field final i:Landroid/content/pm/PackageManager;

.field final mAppOps:Landroid/app/AppOpsManager;

.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/16 v4, 0x9

    const/16 v3, 0x8

    const/4 v2, 0x7

    .line 99
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    new-array v2, v2, [Z

    fill-array-data v2, :array_1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->FJ:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 116
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    new-array v2, v3, [Z

    fill-array-data v2, :array_3

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->FK:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 135
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v4, [I

    fill-array-data v1, :array_4

    new-array v2, v4, [Z

    fill-array-data v2, :array_5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->FL:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 156
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_6

    const/16 v2, 0xd

    new-array v2, v2, [Z

    fill-array-data v2, :array_7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->FM:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 186
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v5, [I

    fill-array-data v1, :array_8

    new-array v2, v5, [Z

    fill-array-data v2, :array_9

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->FN:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 209
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->FJ:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->FK:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->FL:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->FM:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->FN:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->FO:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 423
    new-instance v0, Lcom/android/settings/applications/AppOpsState$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppOpsState$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->FP:Ljava/util/Comparator;

    return-void

    .line 99
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0xa
        0xc
        0x29
        0x2a
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 116
    :array_2
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x1d
        0x1e
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 135
    :array_4
    .array-data 4
        0xe
        0x10
        0x11
        0x12
        0x13
        0xf
        0x14
        0x15
        0x16
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 156
    nop

    :array_6
    .array-data 4
        0x3
        0x1a
        0x1b
        0x1c
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x2c
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 186
    nop

    :array_8
    .array-data 4
        0xb
        0x19
        0xd
        0x17
        0x18
        0x28
        0x2e
        0x2f
        0x31
        0x32
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsState;->mContext:Landroid/content/Context;

    .line 57
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->i:Landroid/content/pm/PackageManager;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->FH:[Ljava/lang/CharSequence;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->FI:[Ljava/lang/CharSequence;

    .line 61
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/AppOpsState$AppEntry;
    .locals 3

    .prologue
    .line 475
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppOpsState$AppEntry;

    .line 476
    if-nez v0, :cond_1

    .line 477
    if-nez p4, :cond_0

    .line 479
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState;->i:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2200

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 487
    :cond_0
    new-instance v0, Lcom/android/settings/applications/AppOpsState$AppEntry;

    invoke-direct {v0, p0, p4}, Lcom/android/settings/applications/AppOpsState$AppEntry;-><init>(Lcom/android/settings/applications/AppOpsState;Landroid/content/pm/ApplicationInfo;)V

    .line 488
    invoke-virtual {v0, p1}, Lcom/android/settings/applications/AppOpsState$AppEntry;->am(Landroid/content/Context;)V

    .line 489
    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    :cond_1
    :goto_0
    return-object v0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    const-string v0, "AppOpsState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find info for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 445
    if-eqz p5, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 446
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    .line 447
    invoke-virtual {v0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->jJ()Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v1

    if-ne v1, p3, :cond_2

    .line 448
    invoke-virtual {v0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    move v1, v2

    .line 449
    :goto_0
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 450
    :goto_1
    if-ne v1, v2, :cond_2

    .line 453
    invoke-virtual {v0, p4}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->a(Landroid/app/AppOpsManager$OpEntry;)V

    .line 467
    :goto_2
    return-void

    :cond_0
    move v1, v3

    .line 448
    goto :goto_0

    :cond_1
    move v2, v3

    .line 449
    goto :goto_1

    .line 458
    :cond_2
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/settings/applications/AppOpsState$AppEntry;->aB(I)Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_3

    .line 460
    invoke-virtual {v0, p4}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->a(Landroid/app/AppOpsManager$OpEntry;)V

    goto :goto_2

    .line 463
    :cond_3
    new-instance v0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    invoke-direct {v0, p2, p4, p3, p6}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;-><init>(Landroid/app/AppOpsManager$PackageOps;Landroid/app/AppOpsManager$OpEntry;Lcom/android/settings/applications/AppOpsState$AppEntry;I)V

    .line 466
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/android/settings/applications/AppOpsState$OpsTemplate;)Ljava/util/List;
    .locals 2

    .prologue
    .line 470
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/applications/AppOpsState;->a(Lcom/android/settings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/android/settings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;
    .locals 29

    .prologue
    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsState;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    .line 497
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 498
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 500
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 501
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 502
    const/16 v4, 0x3f

    new-array v0, v4, [I

    move-object/from16 v27, v0

    .line 503
    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->Ga:[I

    array-length v6, v6

    if-ge v4, v6, :cond_1

    .line 504
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->Gb:[Z

    aget-boolean v6, v6, v4

    if-eqz v6, :cond_0

    .line 505
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->Ga:[I

    aget v6, v6, v4

    invoke-static {v6}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v6

    .line 506
    if-eqz v6, :cond_0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 507
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->Ga:[I

    aget v6, v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->Ga:[I

    aget v6, v6, v4

    aput v4, v27, v6

    .line 503
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 515
    :cond_1
    if-eqz p3, :cond_3

    .line 516
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->Ga:[I

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1, v6}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v4

    move-object v13, v4

    .line 521
    :goto_1
    if-eqz v13, :cond_7

    .line 522
    const/4 v4, 0x0

    move v11, v4

    :goto_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    if-ge v11, v4, :cond_7

    .line 523
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    .line 524
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v4, v7}, Lcom/android/settings/applications/AppOpsState;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v7

    .line 525
    if-nez v7, :cond_4

    .line 522
    :cond_2
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto :goto_2

    .line 518
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->Ga:[I

    invoke-virtual {v4, v6}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v4

    move-object v13, v4

    goto :goto_1

    .line 528
    :cond_4
    const/4 v4, 0x0

    move v12, v4

    :goto_3
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_2

    .line 529
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    .line 530
    if-nez p3, :cond_5

    const/4 v9, 0x1

    :goto_4
    if-nez p3, :cond_6

    const/4 v10, 0x0

    :goto_5
    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/applications/AppOpsState;->a(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    .line 528
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_3

    .line 530
    :cond_5
    const/4 v9, 0x0

    goto :goto_4

    :cond_6
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v4

    aget v10, v27, v4

    goto :goto_5

    .line 537
    :cond_7
    if-eqz p3, :cond_9

    .line 538
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 540
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/AppOpsState;->i:Landroid/content/pm/PackageManager;

    const/16 v7, 0x1000

    move-object/from16 v0, p3

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 541
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v17, v4

    .line 549
    :goto_6
    const/4 v4, 0x0

    move/from16 v18, v4

    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_11

    .line 550
    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 551
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/android/settings/applications/AppOpsState;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v28

    .line 553
    if-nez v28, :cond_a

    .line 549
    :cond_8
    add-int/lit8 v4, v18, 0x1

    move/from16 v18, v4

    goto :goto_7

    .line 542
    :catch_0
    move-exception v6

    move-object/from16 v17, v4

    .line 543
    goto :goto_6

    .line 545
    :cond_9
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 546
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 547
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/AppOpsState;->i:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    move-object/from16 v17, v4

    goto :goto_6

    .line 556
    :cond_a
    const/4 v8, 0x0

    .line 557
    const/4 v7, 0x0

    .line 558
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 559
    const/4 v6, 0x0

    move/from16 v22, v6

    :goto_8
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v6, v6

    move/from16 v0, v22

    if-ge v0, v6, :cond_8

    .line 560
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v6, :cond_c

    .line 561
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v6, v6, v22

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_c

    .line 559
    :cond_b
    add-int/lit8 v6, v22, 0x1

    move/from16 v22, v6

    goto :goto_8

    .line 570
    :cond_c
    const/4 v6, 0x0

    move/from16 v21, v6

    :goto_9
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v21

    if-ge v0, v6, :cond_b

    .line 571
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v9, v9, v22

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 570
    :cond_d
    :goto_a
    add-int/lit8 v6, v21, 0x1

    move/from16 v21, v6

    goto :goto_9

    .line 576
    :cond_e
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Lcom/android/settings/applications/AppOpsState$AppEntry;->aA(I)Z

    move-result v6

    if-nez v6, :cond_d

    .line 579
    if-nez v8, :cond_12

    .line 580
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 581
    new-instance v6, Landroid/app/AppOpsManager$PackageOps;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v6, v8, v9, v7}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .line 585
    :goto_b
    new-instance v7, Landroid/app/AppOpsManager$OpEntry;

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    invoke-direct/range {v7 .. v16}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    .line 587
    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    if-nez p3, :cond_f

    const/4 v13, 0x1

    :goto_c
    if-nez p3, :cond_10

    const/4 v14, 0x0

    :goto_d
    move-object/from16 v8, p0

    move-object v9, v5

    move-object/from16 v10, v19

    move-object/from16 v11, v28

    move-object v12, v7

    invoke-direct/range {v8 .. v14}, Lcom/android/settings/applications/AppOpsState;->a(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    goto :goto_a

    :cond_f
    const/4 v13, 0x0

    goto :goto_c

    :cond_10
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v6

    aget v14, v27, v6

    goto :goto_d

    .line 596
    :cond_11
    sget-object v4, Lcom/android/settings/applications/AppOpsState;->FP:Ljava/util/Comparator;

    invoke-static {v5, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 599
    return-object v5

    :cond_12
    move-object/from16 v19, v7

    move-object/from16 v20, v8

    goto :goto_b
.end method
