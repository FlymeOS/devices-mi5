.class public Lcom/android/vendorsettings/applications/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# static fields
.field static Oc:Ljava/lang/Object;

.field static Od:Lcom/android/vendorsettings/applications/RunningState;


# instance fields
.field final Ir:Landroid/os/HandlerThread;

.field final MT:Landroid/app/ActivityManager;

.field final Nj:I

.field OA:I

.field OB:J

.field OC:I

.field OD:J

.field final OE:Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;

.field private final OF:Lcom/android/vendorsettings/applications/RunningState$UserManagerBroadcastReceiver;

.field final Oe:Landroid/content/Context;

.field final Of:Z

.field Og:Lcom/android/vendorsettings/applications/RunningState$OnRefreshUiListener;

.field final Oh:Lcom/android/b/a/z;

.field final Oi:Landroid/util/SparseArray;

.field final Oj:Landroid/util/SparseArray;

.field final Ok:Lcom/android/vendorsettings/applications/RunningState$ServiceProcessComparator;

.field final Ol:Ljava/util/ArrayList;

.field final Om:Landroid/util/SparseArray;

.field final On:Ljava/util/ArrayList;

.field final Oo:Ljava/util/ArrayList;

.field final Op:Landroid/util/SparseArray;

.field final Oq:Landroid/util/SparseArray;

.field final Or:Landroid/util/SparseArray;

.field Os:I

.field final Ot:Ljava/util/Comparator;

.field Ou:Z

.field Ov:Ljava/util/ArrayList;

.field Ow:Ljava/util/ArrayList;

.field Ox:Ljava/util/ArrayList;

.field Oy:I

.field Oz:J

.field final aN:Landroid/os/UserManager;

.field final i:Landroid/content/pm/PackageManager;

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field mItems:Ljava/util/ArrayList;

.field final mLock:Ljava/lang/Object;

.field mResumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/applications/RunningState;->Oc:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/android/b/a/z;

    invoke-direct {v0}, Lcom/android/b/a/z;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Oh:Lcom/android/b/a/z;

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Oi:Landroid/util/SparseArray;

    .line 104
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Oj:Landroid/util/SparseArray;

    .line 108
    new-instance v0, Lcom/android/vendorsettings/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/applications/RunningState$ServiceProcessComparator;-><init>(Lcom/android/vendorsettings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Ok:Lcom/android/vendorsettings/applications/RunningState$ServiceProcessComparator;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Ol:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Om:Landroid/util/SparseArray;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->On:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Oo:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Op:Landroid/util/SparseArray;

    .line 131
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Oq:Landroid/util/SparseArray;

    .line 144
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Or:Landroid/util/SparseArray;

    .line 146
    iput v1, p0, Lcom/android/vendorsettings/applications/RunningState;->Os:I

    .line 148
    new-instance v0, Lcom/android/vendorsettings/applications/RunningState$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/applications/RunningState$1;-><init>(Lcom/android/vendorsettings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Ot:Ljava/util/Comparator;

    .line 209
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Ov:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Ow:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Ox:Ljava/util/ArrayList;

    .line 260
    new-instance v0, Lcom/android/vendorsettings/applications/RunningState$2;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/applications/RunningState$2;-><init>(Lcom/android/vendorsettings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->mHandler:Landroid/os/Handler;

    .line 325
    new-instance v0, Lcom/android/vendorsettings/applications/RunningState$UserManagerBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/vendorsettings/applications/RunningState$UserManagerBroadcastReceiver;-><init>(Lcom/android/vendorsettings/applications/RunningState;Lcom/android/vendorsettings/applications/RunningState$1;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->OF:Lcom/android/vendorsettings/applications/RunningState$UserManagerBroadcastReceiver;

    .line 803
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Oe:Landroid/content/Context;

    .line 804
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Oe:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->MT:Landroid/app/ActivityManager;

    .line 805
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Oe:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->i:Landroid/content/pm/PackageManager;

    .line 806
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Oe:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->aN:Landroid/os/UserManager;

    .line 807
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Nj:I

    .line 808
    iget v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Nj:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Of:Z

    .line 809
    iput-boolean v1, p0, Lcom/android/vendorsettings/applications/RunningState;->mResumed:Z

    .line 810
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RunningState:Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Ir:Landroid/os/HandlerThread;

    .line 811
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Ir:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 812
    new-instance v0, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningState;->Ir:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;-><init>(Lcom/android/vendorsettings/applications/RunningState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->OE:Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;

    .line 813
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->OF:Lcom/android/vendorsettings/applications/RunningState$UserManagerBroadcastReceiver;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningState;->Oe:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/RunningState$UserManagerBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 814
    return-void

    :cond_0
    move v0, v1

    .line 808
    goto :goto_0
.end method

.method static a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 777
    if-eqz p2, :cond_2

    iget v0, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 779
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 780
    if-eqz v0, :cond_2

    move-object p1, v0

    .line 790
    :cond_1
    :goto_0
    return-object p1

    .line 786
    :cond_2
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 787
    if-ltz v0, :cond_1

    .line 788
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/RunningState;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/RunningState;->reset()V

    return-void
.end method

.method private a(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 869
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 879
    :cond_0
    :goto_0
    return v0

    .line 872
    :cond_1
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0xaa

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-eqz v1, :cond_0

    .line 879
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 31

    .prologue
    .line 921
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 923
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Os:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Os:I

    .line 925
    const/4 v9, 0x0

    .line 929
    const/16 v4, 0xc8

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v12

    .line 931
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 932
    :goto_0
    const/4 v5, 0x0

    move v6, v4

    :goto_1
    if-ge v5, v6, :cond_2

    .line 933
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 937
    iget-boolean v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v7, :cond_1

    iget v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez v7, :cond_1

    .line 938
    invoke-interface {v12, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 939
    add-int/lit8 v4, v5, -0x1

    .line 940
    add-int/lit8 v5, v6, -0x1

    .line 932
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    move v5, v4

    goto :goto_1

    .line 931
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 945
    :cond_1
    iget v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_5e

    .line 947
    invoke-interface {v12, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 948
    add-int/lit8 v4, v5, -0x1

    .line 949
    add-int/lit8 v5, v6, -0x1

    .line 950
    goto :goto_2

    .line 956
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v13

    .line 958
    if-eqz v13, :cond_3

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    move v7, v4

    .line 959
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Or:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 960
    const/4 v4, 0x0

    move v5, v4

    :goto_4
    if-ge v5, v7, :cond_4

    .line 961
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 962
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/vendorsettings/applications/RunningState;->Or:Landroid/util/SparseArray;

    iget v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    new-instance v14, Lcom/android/vendorsettings/applications/RunningState$AppProcessInfo;

    invoke-direct {v14, v4}, Lcom/android/vendorsettings/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual {v8, v10, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 960
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_4

    .line 958
    :cond_3
    const/4 v4, 0x0

    move v7, v4

    goto :goto_3

    .line 967
    :cond_4
    const/4 v4, 0x0

    move v8, v4

    :goto_5
    if-ge v8, v6, :cond_6

    .line 968
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 969
    iget-wide v14, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-nez v5, :cond_5

    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-lez v5, :cond_5

    .line 970
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/vendorsettings/applications/RunningState;->Or:Landroid/util/SparseArray;

    iget v10, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vendorsettings/applications/RunningState$AppProcessInfo;

    .line 971
    if-eqz v5, :cond_5

    .line 972
    const/4 v10, 0x1

    iput-boolean v10, v5, Lcom/android/vendorsettings/applications/RunningState$AppProcessInfo;->OJ:Z

    .line 973
    iget-boolean v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v4, :cond_5

    .line 974
    const/4 v4, 0x1

    iput-boolean v4, v5, Lcom/android/vendorsettings/applications/RunningState$AppProcessInfo;->OK:Z

    .line 967
    :cond_5
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_5

    .line 981
    :cond_6
    const/4 v4, 0x0

    move v10, v4

    :goto_6
    if-ge v10, v6, :cond_10

    .line 982
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 989
    iget-wide v14, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-nez v5, :cond_9

    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-lez v5, :cond_9

    .line 990
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/vendorsettings/applications/RunningState;->Or:Landroid/util/SparseArray;

    iget v8, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vendorsettings/applications/RunningState$AppProcessInfo;

    .line 991
    if-eqz v5, :cond_9

    iget-boolean v8, v5, Lcom/android/vendorsettings/applications/RunningState$AppProcessInfo;->OK:Z

    if-nez v8, :cond_9

    .line 997
    iget-object v8, v5, Lcom/android/vendorsettings/applications/RunningState$AppProcessInfo;->OI:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v14, 0x12c

    if-ge v8, v14, :cond_9

    .line 1001
    const/4 v8, 0x0

    .line 1002
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/vendorsettings/applications/RunningState;->Or:Landroid/util/SparseArray;

    iget-object v5, v5, Lcom/android/vendorsettings/applications/RunningState$AppProcessInfo;->OI:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vendorsettings/applications/RunningState$AppProcessInfo;

    .line 1003
    :goto_7
    if-eqz v5, :cond_5d

    .line 1004
    iget-boolean v14, v5, Lcom/android/vendorsettings/applications/RunningState$AppProcessInfo;->OJ:Z

    if-nez v14, :cond_7

    iget-object v14, v5, Lcom/android/vendorsettings/applications/RunningState$AppProcessInfo;->OI:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/vendorsettings/applications/RunningState;->a(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1005
    :cond_7
    const/4 v5, 0x1

    .line 1010
    :goto_8
    if-eqz v5, :cond_9

    .line 981
    :goto_9
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_6

    .line 1008
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/vendorsettings/applications/RunningState;->Or:Landroid/util/SparseArray;

    iget-object v5, v5, Lcom/android/vendorsettings/applications/RunningState$AppProcessInfo;->OI:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vendorsettings/applications/RunningState$AppProcessInfo;

    goto :goto_7

    .line 1017
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/vendorsettings/applications/RunningState;->Oi:Landroid/util/SparseArray;

    iget v8, v4, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 1018
    if-nez v5, :cond_5c

    .line 1019
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1020
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/vendorsettings/applications/RunningState;->Oi:Landroid/util/SparseArray;

    iget v14, v4, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v8, v14, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v8, v5

    .line 1022
    :goto_a
    iget-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    .line 1023
    if-nez v5, :cond_a

    .line 1024
    const/4 v9, 0x1

    .line 1025
    new-instance v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    iget v14, v4, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    iget-object v15, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v14, v15}, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1026
    iget-object v14, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v8, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    move v8, v9

    .line 1029
    iget v9, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OO:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/vendorsettings/applications/RunningState;->Os:I

    if-eq v9, v14, :cond_e

    .line 1030
    iget-wide v14, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-nez v9, :cond_f

    iget v9, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 1031
    :goto_b
    iget v14, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mPid:I

    if-eq v9, v14, :cond_d

    .line 1032
    const/4 v8, 0x1

    .line 1033
    iget v14, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mPid:I

    if-eq v14, v9, :cond_d

    .line 1034
    iget v14, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mPid:I

    if-eqz v14, :cond_b

    .line 1035
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/vendorsettings/applications/RunningState;->Oj:Landroid/util/SparseArray;

    iget v15, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->remove(I)V

    .line 1037
    :cond_b
    if-eqz v9, :cond_c

    .line 1038
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/vendorsettings/applications/RunningState;->Oj:Landroid/util/SparseArray;

    invoke-virtual {v14, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1040
    :cond_c
    iput v9, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mPid:I

    .line 1043
    :cond_d
    iget-object v9, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pa:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 1044
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/vendorsettings/applications/RunningState;->Os:I

    iput v9, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OO:I

    .line 1046
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v4}, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->a(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v4

    or-int v9, v8, v4

    goto/16 :goto_9

    .line 1030
    :cond_f
    const/4 v9, 0x0

    goto :goto_b

    .line 1051
    :cond_10
    const/4 v4, 0x0

    move v8, v4

    move v6, v9

    :goto_c
    if-ge v8, v7, :cond_15

    .line 1052
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1053
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/vendorsettings/applications/RunningState;->Oj:Landroid/util/SparseArray;

    iget v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    .line 1054
    if-nez v5, :cond_12

    .line 1058
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/vendorsettings/applications/RunningState;->Om:Landroid/util/SparseArray;

    iget v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    .line 1059
    if-nez v5, :cond_11

    .line 1060
    const/4 v6, 0x1

    .line 1061
    new-instance v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    iget v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget-object v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v9, v10}, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1062
    iget v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v9, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mPid:I

    .line 1063
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/vendorsettings/applications/RunningState;->Om:Landroid/util/SparseArray;

    iget v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v9, v10, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1065
    :cond_11
    iget-object v9, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pa:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 1068
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/vendorsettings/applications/RunningState;->a(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 1069
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/vendorsettings/applications/RunningState;->Ol:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 1070
    const/4 v6, 0x1

    .line 1071
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/vendorsettings/applications/RunningState;->Ol:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    :cond_13
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/vendorsettings/applications/RunningState;->Os:I

    iput v9, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OO:I

    .line 1074
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pf:Z

    .line 1075
    invoke-virtual {v5, v11}, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->b(Landroid/content/pm/PackageManager;)V

    .line 1080
    :goto_d
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/vendorsettings/applications/RunningState;->Os:I

    iput v9, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pd:I

    .line 1081
    iput-object v4, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pe:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1051
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_c

    .line 1077
    :cond_14
    const/4 v9, 0x0

    iput-boolean v9, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pf:Z

    goto :goto_d

    .line 1086
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Om:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 1087
    const/4 v4, 0x0

    move v8, v6

    move v6, v4

    :goto_e
    if-ge v6, v7, :cond_1a

    .line 1088
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Om:Landroid/util/SparseArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    .line 1089
    iget v5, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pd:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/vendorsettings/applications/RunningState;->Os:I

    if-ne v5, v9, :cond_19

    .line 1090
    iget-object v5, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pe:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 1091
    if-eqz v9, :cond_18

    .line 1092
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/vendorsettings/applications/RunningState;->Oj:Landroid/util/SparseArray;

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    .line 1093
    if-nez v5, :cond_16

    .line 1094
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/vendorsettings/applications/RunningState;->Om:Landroid/util/SparseArray;

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    .line 1096
    :cond_16
    if-eqz v5, :cond_17

    .line 1097
    iget-object v5, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pa:Landroid/util/SparseArray;

    iget v9, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v5, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1105
    :cond_17
    :goto_f
    add-int/lit8 v4, v6, 0x1

    move v5, v7

    move v6, v8

    :goto_10
    move v7, v5

    move v8, v6

    move v6, v4

    .line 1111
    goto :goto_e

    .line 1103
    :cond_18
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pb:Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    goto :goto_f

    .line 1107
    :cond_19
    const/4 v5, 0x1

    .line 1108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Om:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/vendorsettings/applications/RunningState;->Om:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 1109
    add-int/lit8 v4, v7, -0x1

    move/from16 v28, v6

    move v6, v5

    move v5, v4

    move/from16 v4, v28

    goto :goto_10

    .line 1114
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Ol:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1115
    const/4 v5, 0x0

    move v7, v8

    :goto_11
    if-ge v5, v6, :cond_1c

    .line 1116
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Ol:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    .line 1117
    iget-boolean v8, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pf:Z

    if-eqz v8, :cond_1b

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/vendorsettings/applications/RunningState;->Om:Landroid/util/SparseArray;

    iget v4, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5b

    .line 1118
    :cond_1b
    const/4 v7, 0x1

    .line 1119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Ol:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1120
    add-int/lit8 v4, v5, -0x1

    .line 1121
    add-int/lit8 v5, v6, -0x1

    move v6, v7

    .line 1115
    :goto_12
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    move v6, v5

    move v5, v4

    goto :goto_11

    .line 1128
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Oj:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1129
    const/4 v4, 0x0

    move v6, v4

    move v5, v7

    :goto_13
    if-ge v6, v8, :cond_1d

    .line 1130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Oj:Landroid/util/SparseArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    .line 1131
    iget v7, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OO:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/vendorsettings/applications/RunningState;->Os:I

    if-ne v7, v9, :cond_5a

    .line 1132
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/vendorsettings/applications/RunningState;->Os:I

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v11, v7}, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v4

    or-int/2addr v4, v5

    .line 1129
    :goto_14
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    goto :goto_13

    .line 1137
    :cond_1d
    const/4 v6, 0x0

    .line 1138
    const/4 v4, 0x0

    move v8, v4

    move v7, v5

    :goto_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Oi:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v8, v4, :cond_25

    .line 1139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Oi:Landroid/util/SparseArray;

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/HashMap;

    .line 1140
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1141
    :cond_1e
    :goto_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1142
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    .line 1143
    iget v10, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OO:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/vendorsettings/applications/RunningState;->Os:I

    if-ne v10, v12, :cond_21

    .line 1144
    invoke-virtual {v4, v11}, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->b(Landroid/content/pm/PackageManager;)V

    .line 1145
    iget v10, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mPid:I

    if-nez v10, :cond_1f

    .line 1148
    iget-object v10, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pa:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    .line 1164
    :cond_1f
    iget-object v4, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OZ:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1165
    :cond_20
    :goto_17
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1166
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;

    .line 1167
    iget v4, v4, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->OO:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/vendorsettings/applications/RunningState;->Os:I

    if-eq v4, v12, :cond_20

    .line 1168
    const/4 v7, 0x1

    .line 1169
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_17

    .line 1151
    :cond_21
    const/4 v7, 0x1

    .line 1152
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 1153
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v10

    if-nez v10, :cond_23

    .line 1154
    if-nez v6, :cond_22

    .line 1155
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1157
    :cond_22
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/vendorsettings/applications/RunningState;->Oi:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    :cond_23
    iget v10, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mPid:I

    if-eqz v10, :cond_1e

    .line 1160
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/vendorsettings/applications/RunningState;->Oj:Landroid/util/SparseArray;

    iget v4, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_16

    .line 1138
    :cond_24
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto/16 :goto_15

    .line 1175
    :cond_25
    if-eqz v6, :cond_26

    .line 1176
    const/4 v4, 0x0

    move v5, v4

    :goto_18
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v5, v4, :cond_26

    .line 1177
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1178
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/vendorsettings/applications/RunningState;->Oi:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 1176
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_18

    .line 1182
    :cond_26
    if-eqz v7, :cond_3c

    .line 1184
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1185
    const/4 v4, 0x0

    move v6, v4

    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Oi:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v6, v4, :cond_2b

    .line 1186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Oi:Landroid/util/SparseArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    .line 1187
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1188
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pg:Z

    .line 1189
    const-wide v12, 0x7fffffffffffffffL

    iput-wide v12, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OP:J

    .line 1190
    iget-object v5, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OZ:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_27
    :goto_1b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;

    .line 1191
    iget-object v10, v5, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pi:Landroid/content/pm/ServiceInfo;

    if-eqz v10, :cond_28

    iget-object v10, v5, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Pi:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_28

    .line 1194
    const/4 v10, 0x1

    iput-boolean v10, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1196
    :cond_28
    iget-object v10, v5, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Ph:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v10, :cond_27

    iget-object v10, v5, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Ph:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v10, v10, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v10, :cond_27

    .line 1198
    const/4 v10, 0x0

    iput-boolean v10, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pg:Z

    .line 1199
    iget-wide v12, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OP:J

    iget-object v10, v5, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Ph:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-wide v14, v10, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    cmp-long v10, v12, v14

    if-lez v10, :cond_27

    .line 1200
    iget-object v5, v5, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->Ph:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-wide v12, v5, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    iput-wide v12, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OP:J

    goto :goto_1b

    .line 1204
    :cond_29
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 1185
    :cond_2a
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto/16 :goto_19

    .line 1208
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Ok:Lcom/android/vendorsettings/applications/RunningState$ServiceProcessComparator;

    invoke-static {v11, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1210
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1211
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->On:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1213
    const/4 v4, 0x0

    move v6, v4

    :goto_1c
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v6, v4, :cond_34

    .line 1214
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    .line 1215
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OS:Z

    .line 1217
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/vendorsettings/applications/RunningState;->On:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1219
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/vendorsettings/applications/RunningState;->On:Ljava/util/ArrayList;

    invoke-virtual {v4, v12, v5}, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1221
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    iget v5, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v5, :cond_2c

    .line 1223
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/vendorsettings/applications/RunningState;->On:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    :cond_2c
    const/4 v8, 0x0

    .line 1229
    const/4 v5, 0x0

    .line 1230
    iget-object v9, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OZ:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v9, v5

    :goto_1d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;

    .line 1231
    iput-boolean v9, v5, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->OS:Z

    .line 1232
    const/4 v9, 0x1

    .line 1233
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1234
    iget-object v15, v5, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    if-eqz v15, :cond_2e

    .line 1235
    if-eqz v8, :cond_2d

    iget-object v15, v5, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    if-eq v8, v15, :cond_2d

    .line 1238
    :cond_2d
    iget-object v5, v5, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    :goto_1e
    move-object v8, v5

    .line 1242
    goto :goto_1d

    :cond_2e
    move-object v5, v8

    .line 1240
    goto :goto_1e

    .line 1247
    :cond_2f
    new-instance v8, Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    iget v5, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v8, v5}, Lcom/android/vendorsettings/applications/RunningState$MergedItem;-><init>(I)V

    .line 1248
    iget-object v5, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OZ:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;

    .line 1249
    iget-object v14, v8, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->LZ:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    iput-object v8, v5, Lcom/android/vendorsettings/applications/RunningState$ServiceItem;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    goto :goto_1f

    .line 1252
    :cond_30
    iput-object v4, v8, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OU:Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    .line 1253
    iget-object v4, v8, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OW:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v4, v10

    .line 1254
    :goto_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/vendorsettings/applications/RunningState;->On:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_31

    .line 1255
    iget-object v5, v8, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OW:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/vendorsettings/applications/RunningState;->On:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1254
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 1259
    :cond_31
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v4}, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->i(Landroid/content/Context;Z)Z

    .line 1262
    iget v4, v8, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->mUserId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/vendorsettings/applications/RunningState;->Nj:I

    if-eq v4, v5, :cond_33

    iget v4, v8, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->mUserId:I

    const/16 v5, 0x3e7

    if-ne v4, v5, :cond_32

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Nj:I

    if-nez v4, :cond_32

    sget-object v4, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    iget-object v5, v8, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OM:Landroid/content/pm/PackageItemInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    const-string v4, "com.xiaomi.xmsf"

    iget-object v5, v8, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OM:Landroid/content/pm/PackageItemInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1213
    :cond_32
    :goto_21
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto/16 :goto_1c

    .line 1271
    :cond_33
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 1277
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Ol:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1278
    const/4 v4, 0x0

    move v5, v4

    :goto_22
    if-ge v5, v6, :cond_39

    .line 1279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Ol:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    .line 1280
    iget-object v8, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pb:Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    if-nez v8, :cond_37

    iget-object v8, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OZ:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-gtz v8, :cond_37

    .line 1281
    iget-object v8, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    if-nez v8, :cond_35

    .line 1282
    new-instance v8, Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    iget v9, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v8, v9}, Lcom/android/vendorsettings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v8, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    .line 1283
    iget-object v8, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    iput-object v4, v8, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OU:Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    .line 1285
    :cond_35
    iget-object v8, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v9}, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->i(Landroid/content/Context;Z)Z

    .line 1288
    iget-object v8, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    iget v8, v8, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->mUserId:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/vendorsettings/applications/RunningState;->Nj:I

    if-eq v8, v9, :cond_38

    iget-object v8, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    iget v8, v8, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->mUserId:I

    const/16 v9, 0x3e7

    if-ne v8, v9, :cond_36

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/vendorsettings/applications/RunningState;->Nj:I

    if-nez v8, :cond_36

    sget-object v8, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    iget-object v9, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    iget-object v9, v9, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OM:Landroid/content/pm/PackageItemInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_36

    const-string v8, "com.xiaomi.xmsf"

    iget-object v9, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    iget-object v9, v9, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OM:Landroid/content/pm/PackageItemInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 1300
    :cond_36
    :goto_23
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/vendorsettings/applications/RunningState;->On:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    :cond_37
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_22

    .line 1298
    :cond_38
    const/4 v8, 0x0

    iget-object v9, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    invoke-virtual {v13, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_23

    .line 1306
    :cond_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Op:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1307
    const/4 v4, 0x0

    move v5, v4

    :goto_24
    if-ge v5, v6, :cond_3b

    .line 1308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Op:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    .line 1309
    iget v8, v4, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OO:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/vendorsettings/applications/RunningState;->Os:I

    if-ne v8, v9, :cond_3a

    .line 1310
    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8}, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->i(Landroid/content/Context;Z)Z

    .line 1307
    :cond_3a
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_24

    .line 1314
    :cond_3b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/vendorsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1315
    :try_start_0
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/vendorsettings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 1316
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/vendorsettings/applications/RunningState;->Ov:Ljava/util/ArrayList;

    .line 1317
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1322
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Oo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Oo:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/vendorsettings/applications/RunningState;->On:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1324
    const/4 v9, 0x0

    .line 1325
    const/4 v8, 0x0

    .line 1326
    const/4 v6, 0x0

    .line 1327
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Om:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 1328
    const/4 v4, 0x0

    move v10, v4

    :goto_25
    if-ge v10, v11, :cond_40

    .line 1329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Om:Landroid/util/SparseArray;

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    .line 1330
    iget v5, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OO:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/vendorsettings/applications/RunningState;->Os:I

    if-eq v5, v12, :cond_3f

    .line 1333
    iget-object v5, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pe:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0x190

    if-lt v5, v12, :cond_3d

    .line 1335
    add-int/lit8 v5, v9, 0x1

    .line 1336
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/vendorsettings/applications/RunningState;->Oo:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    move v6, v5

    move v5, v8

    .line 1328
    :goto_26
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    move v9, v6

    move v8, v5

    move v6, v4

    goto :goto_25

    .line 1317
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1337
    :cond_3d
    iget-object v5, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pe:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0xc8

    if-gt v5, v12, :cond_3e

    .line 1339
    add-int/lit8 v5, v8, 0x1

    .line 1340
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/vendorsettings/applications/RunningState;->Oo:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    move v6, v9

    goto :goto_26

    .line 1342
    :cond_3e
    const-string v5, "RunningState"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown non-service process: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v4, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    move v5, v8

    move v6, v9

    goto :goto_26

    .line 1346
    :cond_3f
    add-int/lit8 v4, v6, 0x1

    move v5, v8

    move v6, v9

    goto :goto_26

    .line 1350
    :cond_40
    const-wide/16 v16, 0x0

    .line 1351
    const-wide/16 v14, 0x0

    .line 1352
    const-wide/16 v12, 0x0

    .line 1353
    const/4 v11, 0x0

    .line 1354
    const/16 v18, 0x0

    .line 1355
    const/4 v10, 0x0

    .line 1357
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Oo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 1358
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v23, v0

    .line 1359
    const/4 v4, 0x0

    move v5, v4

    :goto_27
    move/from16 v0, v19

    if-ge v5, v0, :cond_41

    .line 1360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Oo:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    iget v4, v4, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mPid:I

    aput v4, v23, v5

    .line 1359
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_27

    .line 1362
    :cond_41
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v24

    .line 1364
    const/4 v5, 0x0

    .line 1365
    const/4 v4, 0x0

    move/from16 v21, v4

    move/from16 v19, v7

    move v7, v5

    :goto_28
    :try_start_3
    move-object/from16 v0, v23

    array-length v4, v0

    move/from16 v0, v21

    if-ge v0, v4, :cond_4b

    .line 1366
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Oo:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    move-object v5, v0

    .line 1367
    aget-wide v26, v24, v21

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Os:I

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v5, v0, v1, v2, v4}, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->a(Landroid/content/Context;JI)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    or-int v20, v19, v4

    .line 1368
    :try_start_4
    iget v4, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->OO:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vendorsettings/applications/RunningState;->Os:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v4, v0, :cond_42

    .line 1369
    iget-wide v4, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mSize:J

    add-long/2addr v4, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    move-object/from16 v28, v11

    move-wide/from16 v29, v4

    move v4, v7

    move v5, v10

    move-wide/from16 v10, v29

    move-object/from16 v7, v28

    .line 1365
    :goto_29
    add-int/lit8 v16, v21, 0x1

    move/from16 v21, v16

    move/from16 v19, v20

    move-wide/from16 v16, v14

    move-wide v14, v12

    move-wide v12, v10

    move-object v11, v7

    move v10, v5

    move v7, v4

    goto :goto_28

    .line 1370
    :cond_42
    iget-object v4, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pe:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v19, 0x190

    move/from16 v0, v19

    if-lt v4, v0, :cond_4a

    .line 1372
    iget-wide v0, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v26, v0

    add-long v16, v16, v26

    .line 1374
    if-eqz v11, :cond_44

    .line 1375
    new-instance v19, Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    iget v4, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mUserId:I

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Lcom/android/vendorsettings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    .line 1376
    iget-object v4, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    iput-object v5, v4, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OU:Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    .line 1377
    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->mUserId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/vendorsettings/applications/RunningState;->Nj:I

    if-eq v4, v5, :cond_43

    const/4 v4, 0x1

    :goto_2a
    or-int/2addr v10, v4

    .line 1378
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v4, v19

    move v5, v10

    move-object v10, v11

    .line 1396
    :goto_2b
    const/4 v11, 0x1

    :try_start_5
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v11}, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->i(Landroid/content/Context;Z)Z

    .line 1397
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->ar(Landroid/content/Context;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1398
    add-int/lit8 v4, v7, 0x1

    move-object v7, v10

    move-wide v10, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    .line 1399
    goto :goto_29

    .line 1377
    :cond_43
    const/4 v4, 0x0

    goto :goto_2a

    .line 1380
    :cond_44
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Ow:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v7, v4, :cond_45

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Ow:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    iget-object v4, v4, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OU:Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    if-eq v4, v5, :cond_49

    .line 1382
    :cond_45
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1383
    const/4 v4, 0x0

    move/from16 v22, v4

    :goto_2c
    move/from16 v0, v22

    if-ge v0, v7, :cond_47

    .line 1384
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Ow:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    .line 1385
    iget v11, v4, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->mUserId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vendorsettings/applications/RunningState;->Nj:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v11, v0, :cond_46

    const/4 v11, 0x1

    :goto_2d
    or-int/2addr v10, v11

    .line 1386
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1383
    add-int/lit8 v4, v22, 0x1

    move/from16 v22, v4

    goto :goto_2c

    .line 1385
    :cond_46
    const/4 v11, 0x0

    goto :goto_2d

    .line 1388
    :cond_47
    new-instance v4, Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    iget v11, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v4, v11}, Lcom/android/vendorsettings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v4, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    .line 1389
    iget-object v11, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->NG:Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    iput-object v5, v11, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OU:Lcom/android/vendorsettings/applications/RunningState$ProcessItem;

    .line 1390
    iget v5, v4, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->mUserId:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/vendorsettings/applications/RunningState;->Nj:I

    if-eq v5, v11, :cond_48

    const/4 v5, 0x1

    :goto_2e
    or-int/2addr v10, v5

    .line 1391
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    move v5, v10

    move-object/from16 v10, v19

    goto :goto_2b

    .line 1390
    :cond_48
    const/4 v5, 0x0

    goto :goto_2e

    .line 1393
    :cond_49
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Ow:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    move v5, v10

    move-object v10, v11

    goto/16 :goto_2b

    .line 1399
    :cond_4a
    iget-object v4, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->Pe:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v19, 0xc8

    move/from16 v0, v19

    if-gt v4, v0, :cond_59

    .line 1401
    iget-wide v4, v5, Lcom/android/vendorsettings/applications/RunningState$ProcessItem;->mSize:J
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    add-long/2addr v4, v14

    move-wide/from16 v14, v16

    move/from16 v28, v10

    move-object/from16 v29, v11

    move-wide v10, v12

    move-wide v12, v4

    move/from16 v5, v28

    move v4, v7

    move-object/from16 v7, v29

    goto/16 :goto_29

    :cond_4b
    move v4, v10

    move-object v7, v11

    move-wide/from16 v20, v16

    move-wide/from16 v16, v14

    move/from16 v11, v19

    move-wide v14, v12

    .line 1407
    :goto_2f
    if-nez v7, :cond_4e

    .line 1409
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/vendorsettings/applications/RunningState;->Ow:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v9, :cond_4e

    .line 1410
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1411
    const/4 v5, 0x0

    move v12, v5

    move v7, v4

    :goto_30
    if-ge v12, v9, :cond_4d

    .line 1412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Ow:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    .line 1413
    iget v5, v4, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->mUserId:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/vendorsettings/applications/RunningState;->Nj:I

    if-eq v5, v13, :cond_4c

    const/4 v5, 0x1

    :goto_31
    or-int/2addr v7, v5

    .line 1414
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1411
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_30

    .line 1404
    :catch_0
    move-exception v4

    :goto_32
    move v4, v10

    move-wide/from16 v20, v16

    move-wide/from16 v16, v14

    move-wide v14, v12

    move-object/from16 v28, v11

    move v11, v7

    move-object/from16 v7, v28

    goto :goto_2f

    .line 1413
    :cond_4c
    const/4 v5, 0x0

    goto :goto_31

    :cond_4d
    move v4, v7

    move-object v7, v10

    .line 1419
    :cond_4e
    if-eqz v7, :cond_58

    .line 1422
    if-nez v4, :cond_50

    move-object v5, v7

    .line 1458
    :cond_4f
    :goto_33
    const/4 v4, 0x0

    move v10, v4

    :goto_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Ov:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_55

    .line 1459
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Ov:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->ar(Landroid/content/Context;)Z

    .line 1458
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_34

    .line 1428
    :cond_50
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1429
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1430
    const/4 v4, 0x0

    move v10, v4

    :goto_35
    if-ge v10, v12, :cond_53

    .line 1431
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    .line 1434
    iget v13, v4, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->mUserId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vendorsettings/applications/RunningState;->Nj:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v13, v0, :cond_52

    iget v13, v4, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->mUserId:I

    const/16 v18, 0x3e7

    move/from16 v0, v18

    if-ne v13, v0, :cond_51

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/vendorsettings/applications/RunningState;->Nj:I

    if-eqz v13, :cond_52

    .line 1430
    :cond_51
    :goto_36
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_35

    .line 1442
    :cond_52
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 1447
    :cond_53
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Oq:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1448
    const/4 v4, 0x0

    move v10, v4

    :goto_37
    if-ge v10, v12, :cond_4f

    .line 1449
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Oq:Landroid/util/SparseArray;

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vendorsettings/applications/RunningState$MergedItem;

    .line 1450
    iget v13, v4, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->OO:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vendorsettings/applications/RunningState;->Os:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v13, v0, :cond_54

    .line 1451
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v13}, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->i(Landroid/content/Context;Z)Z

    .line 1452
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/vendorsettings/applications/RunningState$MergedItem;->ar(Landroid/content/Context;)Z

    .line 1448
    :cond_54
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_37

    .line 1462
    :cond_55
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/vendorsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1463
    :try_start_9
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/vendorsettings/applications/RunningState;->Oy:I

    .line 1464
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/vendorsettings/applications/RunningState;->OA:I

    .line 1465
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/vendorsettings/applications/RunningState;->OC:I

    .line 1466
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/vendorsettings/applications/RunningState;->Oz:J

    .line 1467
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/vendorsettings/applications/RunningState;->OB:J

    .line 1468
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/vendorsettings/applications/RunningState;->OD:J

    .line 1469
    if-eqz v7, :cond_57

    .line 1470
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/vendorsettings/applications/RunningState;->Ow:Ljava/util/ArrayList;

    .line 1471
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/vendorsettings/applications/RunningState;->Ox:Ljava/util/ArrayList;

    .line 1472
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/vendorsettings/applications/RunningState;->Ou:Z

    if-eqz v4, :cond_57

    .line 1473
    const/4 v4, 0x1

    .line 1476
    :goto_38
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/vendorsettings/applications/RunningState;->mHaveData:Z

    if-nez v5, :cond_56

    .line 1477
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/vendorsettings/applications/RunningState;->mHaveData:Z

    .line 1478
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/vendorsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 1480
    :cond_56
    monitor-exit v10

    .line 1482
    return v4

    .line 1480
    :catchall_1
    move-exception v4

    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v4

    .line 1404
    :catch_1
    move-exception v4

    move-object/from16 v11, v19

    move/from16 v7, v20

    goto/16 :goto_32

    :catch_2
    move-exception v4

    move-object v11, v10

    move/from16 v7, v20

    move v10, v5

    goto/16 :goto_32

    :catch_3
    move-exception v4

    move/from16 v7, v19

    goto/16 :goto_32

    :catch_4
    move-exception v4

    move/from16 v7, v20

    goto/16 :goto_32

    :cond_57
    move v4, v11

    goto :goto_38

    :cond_58
    move-object/from16 v5, v18

    goto/16 :goto_33

    :cond_59
    move v4, v7

    move v5, v10

    move-object v7, v11

    move-wide v10, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    goto/16 :goto_29

    :cond_5a
    move v4, v5

    goto/16 :goto_14

    :cond_5b
    move v4, v5

    move v5, v6

    move v6, v7

    goto/16 :goto_12

    :cond_5c
    move-object v8, v5

    goto/16 :goto_a

    :cond_5d
    move v5, v8

    goto/16 :goto_8

    :cond_5e
    move v4, v5

    move v5, v6

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/applications/RunningState;->a(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method static aq(Landroid/content/Context;)Lcom/android/vendorsettings/applications/RunningState;
    .locals 2

    .prologue
    .line 794
    sget-object v1, Lcom/android/vendorsettings/applications/RunningState;->Oc:Ljava/lang/Object;

    monitor-enter v1

    .line 795
    :try_start_0
    sget-object v0, Lcom/android/vendorsettings/applications/RunningState;->Od:Lcom/android/vendorsettings/applications/RunningState;

    if-nez v0, :cond_0

    .line 796
    new-instance v0, Lcom/android/vendorsettings/applications/RunningState;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/vendorsettings/applications/RunningState;->Od:Lcom/android/vendorsettings/applications/RunningState;

    .line 798
    :cond_0
    sget-object v0, Lcom/android/vendorsettings/applications/RunningState;->Od:Lcom/android/vendorsettings/applications/RunningState;

    monitor-exit v1

    return-object v0

    .line 799
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Oi:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 884
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Oj:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 885
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Ol:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 886
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Om:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 887
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->On:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 888
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Oo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 889
    return-void
.end method


# virtual methods
.method aw(Z)V
    .locals 2

    .prologue
    .line 1486
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1487
    :try_start_0
    iput-boolean p1, p0, Lcom/android/vendorsettings/applications/RunningState;->Ou:Z

    .line 1488
    monitor-exit v1

    .line 1489
    return-void

    .line 1488
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method c(Lcom/android/vendorsettings/applications/RunningState$OnRefreshUiListener;)V
    .locals 4

    .prologue
    .line 817
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 818
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/RunningState;->mResumed:Z

    .line 819
    iput-object p1, p0, Lcom/android/vendorsettings/applications/RunningState;->Og:Lcom/android/vendorsettings/applications/RunningState$OnRefreshUiListener;

    .line 820
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->OF:Lcom/android/vendorsettings/applications/RunningState$UserManagerBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/RunningState$UserManagerBroadcastReceiver;->lB()Z

    move-result v0

    .line 821
    iget-object v2, p0, Lcom/android/vendorsettings/applications/RunningState;->Oh:Lcom/android/b/a/z;

    iget-object v3, p0, Lcom/android/vendorsettings/applications/RunningState;->Oe:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/b/a/z;->e(Landroid/content/res/Resources;)Z

    move-result v2

    .line 823
    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    .line 824
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/RunningState;->mHaveData:Z

    .line 825
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->OE:Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 826
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->OE:Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 827
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->OE:Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->OE:Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 830
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->OE:Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 832
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 833
    monitor-exit v1

    .line 834
    return-void

    .line 833
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasData()Z
    .locals 2

    .prologue
    .line 844
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 845
    :try_start_0
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/RunningState;->mHaveData:Z

    monitor-exit v1

    return v0

    .line 846
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method lA()Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 1498
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1499
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Ox:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1500
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method lx()V
    .locals 3

    .prologue
    .line 837
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 838
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->OE:Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 839
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->OE:Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 840
    monitor-exit v1

    .line 841
    return-void

    .line 840
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method ly()V
    .locals 4

    .prologue
    .line 850
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 851
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 853
    :try_start_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 854
    :catch_0
    move-exception v0

    goto :goto_0

    .line 857
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 858
    return-void

    .line 857
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method lz()Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 1492
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1493
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Ov:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1494
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method pause()V
    .locals 3

    .prologue
    .line 861
    iget-object v1, p0, Lcom/android/vendorsettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 862
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/RunningState;->mResumed:Z

    .line 863
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->Og:Lcom/android/vendorsettings/applications/RunningState$OnRefreshUiListener;

    .line 864
    iget-object v0, p0, Lcom/android/vendorsettings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 865
    monitor-exit v1

    .line 866
    return-void

    .line 865
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
