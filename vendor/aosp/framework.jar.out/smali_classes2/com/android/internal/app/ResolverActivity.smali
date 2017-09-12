.class public Lcom/android/internal/app/ResolverActivity;
.super Lmiui/app/AlertActivity;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;,
        Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;,
        Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;,
        Lcom/android/internal/app/ResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivity$ItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$PageGridAdapter;,
        Lcom/android/internal/app/ResolverActivity$ViewHolder;,
        Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;,
        Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivity$TargetInfo;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;,
        Lcom/android/internal/app/ResolverActivity$ActionTitle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTRA_RESOLVE_INFOS:Ljava/lang/String; = "rlist"

.field private static final MAX_PER_SCREEN:I = 0x8

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"


# instance fields
.field private mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

.field private mAlwaysUseOption:Z

.field private mComponentOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mIconDpi:I

.field private mIconSize:I

.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchedFromUid:I

.field private mMaskColor:I

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProfileSwitchMessageId:I

.field private mProfileView:Landroid/view/View;

.field private mRegistered:Z

.field private mResolverComparator:Lcom/android/internal/app/ResolverComparator;

.field private mResolvingHome:Z

.field private mSafeForwardingMode:Z

.field private mScreenView:Lmiui/widget/ScreenView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lmiui/app/AlertActivity;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 1782
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mComponentOrders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mMaskColor:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    return-object p1
.end method

.method private getReferrerPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    .line 356
    .local v0, "referrer":Landroid/net/Uri;
    if-eqz v0, :cond_0

    const-string v1, "android-app"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 359
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasManagedProfile()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 508
    const-string v6, "user"

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 509
    .local v4, "userManager":Landroid/os/UserManager;
    if-nez v4, :cond_1

    .line 523
    :cond_0
    :goto_0
    return v5

    .line 514
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 515
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 516
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 517
    const/4 v5, 0x1

    goto :goto_0

    .line 520
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private inflateGridView(I)Landroid/widget/GridView;
    .locals 6
    .param p1, "page"    # I

    .prologue
    .line 822
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1103000f

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 823
    .local v0, "grid":Landroid/widget/GridView;
    new-instance v2, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;

    invoke-direct {v2, p0, p0, p1}, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 824
    new-instance v1, Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ResolverActivity$ItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;I)V

    .line 825
    .local v1, "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 826
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 827
    return-object v0
.end method

.method private initGridViews()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v7, -0x2

    .line 796
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v6}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .line 797
    .local v0, "count":I
    div-int/lit8 v1, v0, 0x8

    .line 798
    .local v1, "divider":I
    rem-int/lit8 v6, v0, 0x8

    if-nez v6, :cond_1

    move v4, v1

    .line 799
    .local v4, "page":I
    :goto_0
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 800
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lmiui/widget/ScreenView;->setSeekBarVisibility(I)V

    .line 802
    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->inflateGridView(I)Landroid/widget/GridView;

    move-result-object v2

    .line 803
    .local v2, "grid":Landroid/widget/GridView;
    invoke-virtual {v2}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v2}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v7

    invoke-virtual {v2}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 804
    invoke-virtual {v2}, Landroid/widget/GridView;->getCount()I

    move-result v6

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 805
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v6, v2}, Lmiui/widget/ScreenView;->addView(Landroid/view/View;)V

    .line 819
    .end local v2    # "grid":Landroid/widget/GridView;
    :cond_0
    return-void

    .line 798
    .end local v4    # "page":I
    :cond_1
    add-int/lit8 v4, v1, 0x1

    goto :goto_0

    .line 807
    .restart local v4    # "page":I
    :cond_2
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x51

    invoke-direct {v5, v7, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 810
    .local v5, "seekbarParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v6, v5}, Lmiui/widget/ScreenView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 811
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v6, v9}, Lmiui/widget/ScreenView;->setSeekBarVisibility(I)V

    .line 813
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 814
    add-int/lit8 v6, v3, 0x1

    invoke-direct {p0, v6}, Lcom/android/internal/app/ResolverActivity;->inflateGridView(I)Landroid/widget/GridView;

    move-result-object v2

    .line 815
    .restart local v2    # "grid":Landroid/widget/GridView;
    invoke-virtual {v2, v10}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 816
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v6, v2}, Lmiui/widget/ScreenView;->addView(Landroid/view/View;)V

    .line 813
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method static final isSpecificUriMatch(I)Z
    .locals 1
    .param p0, "match"    # I

    .prologue
    .line 1777
    const/high16 v0, 0xfff0000

    and-int/2addr p0, v0

    .line 1778
    const/high16 v0, 0x300000

    if-lt p0, v0, :cond_0

    const/high16 v0, 0x500000

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 181
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 182
    return-object v0
.end method

.method static resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 4
    .param p0, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p1, "rhs"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 838
    if-nez p0, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_3

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private setProfileSwitchMessageId(I)V
    .locals 5
    .param p1, "contentUserHint"    # I

    .prologue
    .line 383
    const/4 v4, -0x2

    if-eq p1, v4, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq p1, v4, :cond_0

    .line 385
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 386
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 387
    .local v1, "originUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    .line 389
    .local v0, "originIsManaged":Z
    :goto_0
    invoke-virtual {v3}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v2

    .line 390
    .local v2, "targetIsManaged":Z
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    .line 391
    const v4, 0x110700d1

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    .line 396
    .end local v0    # "originIsManaged":Z
    .end local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "targetIsManaged":Z
    .end local v3    # "userManager":Landroid/os/UserManager;
    :cond_0
    :goto_1
    return-void

    .line 387
    .restart local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "userManager":Landroid/os/UserManager;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 392
    .restart local v0    # "originIsManaged":Z
    .restart local v2    # "targetIsManaged":Z
    :cond_2
    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    .line 393
    const v4, 0x110700d2

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    goto :goto_1
.end method

.method private supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v2, 0x0

    .line 528
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 530
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    .line 532
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 531
    :catch_0
    move-exception v1

    .line 532
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method bindProfileView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 367
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    .line 368
    .local v0, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    if-eqz v0, :cond_1

    .line 369
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v4, 0x110b0027

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 371
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 372
    .local v2, "text":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v3

    if-nez v3, :cond_0

    .line 373
    new-instance v3, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 375
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 376
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "text":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 10
    .param p2, "initialIntents"    # [Landroid/content/Intent;
    .param p4, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p3, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 765
    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v0

    if-nez v0, :cond_1

    move v6, v8

    :goto_0
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 768
    iput-boolean p4, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    .line 770
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v7

    .line 771
    .local v7, "count":I
    if-gt v7, v8, :cond_0

    if-ne v7, v8, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x11030010

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 773
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x110b0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ScreenView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    .line 774
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v0, v8}, Lmiui/widget/ScreenView;->setScreenTransitionType(I)V

    .line 775
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initGridViews()V

    .line 776
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {p0, v0, p4}, Lcom/android/internal/app/ResolverActivity;->onPrepareAdapterView(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Z)V

    .line 777
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 778
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$3;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$3;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 793
    :goto_1
    return-void

    .end local v7    # "count":I
    :cond_1
    move v6, v9

    .line 765
    goto :goto_0

    .line 784
    .restart local v7    # "count":I
    :cond_2
    if-ne v7, v8, :cond_3

    .line 785
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0, v9, v9}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 786
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 787
    iput-boolean v9, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 788
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_1

    .line 791
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x11070038

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "launchedFromUid"    # I
    .param p6, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)",
            "Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;"
        }
    .end annotation

    .prologue
    .line 754
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V

    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 503
    invoke-super {p0}, Lmiui/app/AlertActivity;->finish()V

    .line 504
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/app/ResolverActivity;->overridePendingTransition(II)V

    .line 505
    return-void
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 429
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 434
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 430
    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method getLayoutResource()I
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    .line 559
    return-object p2
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_0
.end method

.method protected getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "defaultTitleRes"    # I

    .prologue
    .line 415
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v2, :cond_0

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 416
    .local v1, "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v0

    .line 417
    .local v0, "named":Z
    sget-object v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-ne v1, v2, :cond_1

    if-eqz p2, :cond_1

    .line 418
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 420
    :goto_1
    return-object v2

    .line 415
    .end local v0    # "named":Z
    .end local v1    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v1

    goto :goto_0

    .line 420
    .restart local v0    # "named":Z
    .restart local v1    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_1
    if-eqz v0, :cond_2

    iget v2, v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget v2, v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 440
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v3, :cond_1

    .line 441
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 442
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 456
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 446
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .line 447
    .local v2, "iconRes":I
    if-eqz v2, :cond_2

    .line 448
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 449
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 456
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconRes":I
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 453
    :catch_0
    move-exception v1

    .line 454
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResolverActivity"

    const-string v4, "Couldn\'t find resources for package"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 0
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 738
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 188
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .line 189
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 190
    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v7, :cond_0

    const-string v0, "android.intent.category.HOME"

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iput-boolean v7, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 198
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSafeForwardingMode(Z)V

    .line 200
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 201
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "defaultTitleRes"    # I
    .param p5, "initialIntents"    # [Landroid/content/Intent;
    .param p7, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    .line 216
    sget v4, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    .line 217
    invoke-super {p0, p1}, Lmiui/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 221
    invoke-virtual {p2}, Landroid/content/Intent;->getContentUserHint()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setProfileSwitchMessageId(I)V

    .line 224
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    iget v4, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 311
    :cond_1
    :goto_1
    return-void

    .line 226
    :catch_0
    move-exception v2

    .line 227
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    goto :goto_0

    .line 236
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 238
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 239
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 241
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 242
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v4

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    .line 243
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v4

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    .line 244
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110d0010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mMaskColor:I

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/MiuiSettings$System;->getActivityResolveOrder(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mComponentOrders:Ljava/util/List;

    .line 248
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v4, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 250
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "referrerPackage":Ljava/lang/String;
    new-instance v4, Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v4, p0, v5, v3}, Lcom/android/internal/app/ResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    .line 254
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, p5, p6, p7}, Lcom/android/internal/app/ResolverActivity;->configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x10100

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-static {p0, v4, v5}, Lmiui/securityspace/XSpaceResolverActivityHelper;->checkAndResolve(Landroid/app/Activity;Landroid/content/Intent;Lcom/android/internal/app/AlertController$AlertParams;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->setupAlert()V

    goto :goto_1

    .line 268
    :cond_3
    if-nez p3, :cond_4

    .line 269
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p4}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 271
    :cond_4
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p3, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->setupAlert()V

    .line 276
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x20000

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 278
    if-eqz p7, :cond_5

    .line 279
    const v4, 0x110b0029

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 280
    .local v0, "alwaysOption":Landroid/widget/CheckBox;
    if-eqz v0, :cond_7

    .line 281
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 282
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 288
    .end local v0    # "alwaysOption":Landroid/widget/CheckBox;
    :cond_5
    :goto_2
    const v4, 0x110b0026

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    .line 289
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v4, :cond_6

    .line 290
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    new-instance v5, Lcom/android/internal/app/ResolverActivity$2;

    invoke-direct {v5, p0}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    .line 308
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->onSetupVoiceInteraction()V

    goto/16 :goto_1

    .line 284
    .restart local v0    # "alwaysOption":Landroid/widget/CheckBox;
    :cond_7
    iput-boolean v6, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 211
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 495
    invoke-super {p0}, Lmiui/app/AlertActivity;->onDestroy()V

    .line 496
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->cancel()V

    .line 499
    :cond_0
    return-void
.end method

.method onPrepareAdapterView(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Z)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .param p2, "alwaysUseOption"    # Z

    .prologue
    .line 832
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 461
    invoke-super {p0}, Lmiui/app/AlertActivity;->onRestart()V

    .line 462
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 467
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    .line 470
    :cond_1
    return-void
.end method

.method onSetupVoiceInteraction()V
    .locals 0

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->sendVoiceChoicesIfNeeded()V

    .line 319
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 474
    invoke-super {p0}, Lmiui/app/AlertActivity;->onStop()V

    .line 475
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 487
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 488
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 491
    :cond_1
    return-void
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .locals 38
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "alwaysCheck"    # Z

    .prologue
    .line 563
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v34

    .line 564
    .local v34, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v4

    .line 566
    .local v4, "intent":Landroid/content/Intent;
    :goto_0
    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-eqz v3, :cond_f

    .line 569
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 570
    .local v7, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 572
    .local v13, "action":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 573
    invoke-virtual {v7, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 575
    :cond_1
    invoke-virtual {v4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v15

    .line 576
    .local v15, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v15, :cond_3

    .line 577
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 578
    .local v14, "cat":Ljava/lang/String;
    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_1

    .line 564
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v13    # "action":Ljava/lang/String;
    .end local v14    # "cat":Ljava/lang/String;
    .end local v15    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v22    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 581
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    .restart local v13    # "action":Ljava/lang/String;
    .restart local v15    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 583
    move-object/from16 v0, v34

    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v5, 0xfff0000

    and-int v14, v3, v5

    .line 584
    .local v14, "cat":I
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .line 585
    .local v17, "data":Landroid/net/Uri;
    const/high16 v3, 0x600000

    if-ne v14, v3, :cond_4

    .line 586
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    .line 587
    .local v25, "mimeType":Ljava/lang/String;
    if-eqz v25, :cond_4

    .line 589
    :try_start_0
    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .end local v25    # "mimeType":Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v17, :cond_b

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 600
    const/high16 v3, 0x600000

    if-ne v14, v3, :cond_5

    const-string v3, "file"

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "content"

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 603
    :cond_5
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 607
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v27

    .line 608
    .local v27, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v27, :cond_7

    .line 609
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v36

    .line 610
    .local v36, "ssp":Ljava/lang/String;
    :cond_6
    if-eqz v36, :cond_7

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 611
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/PatternMatcher;

    .line 612
    .local v26, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 613
    invoke-virtual/range {v26 .. v26}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    invoke-virtual {v7, v3, v5}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 618
    .end local v26    # "p":Landroid/os/PatternMatcher;
    .end local v36    # "ssp":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v12

    .line 619
    .local v12, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v12, :cond_9

    .line 620
    :cond_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 621
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/IntentFilter$AuthorityEntry;

    .line 622
    .local v11, "a":Landroid/content/IntentFilter$AuthorityEntry;
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v3

    if-ltz v3, :cond_8

    .line 623
    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v31

    .line 624
    .local v31, "port":I
    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-ltz v31, :cond_d

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v7, v5, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    .end local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v31    # "port":I
    :cond_9
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v27

    .line 631
    if-eqz v27, :cond_b

    .line 632
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v29

    .line 633
    .local v29, "path":Ljava/lang/String;
    :cond_a
    if-eqz v29, :cond_b

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 634
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/PatternMatcher;

    .line 635
    .restart local v26    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 636
    invoke-virtual/range {v26 .. v26}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    invoke-virtual {v7, v3, v5}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 644
    .end local v12    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v26    # "p":Landroid/os/PatternMatcher;
    .end local v27    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v29    # "path":Ljava/lang/String;
    :cond_b
    if-eqz v7, :cond_f

    .line 645
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    .line 646
    .local v10, "N":I
    new-array v0, v10, [Landroid/content/ComponentName;

    move-object/from16 v35, v0

    .line 647
    .local v35, "set":[Landroid/content/ComponentName;
    const/4 v8, 0x0

    .line 648
    .local v8, "bestMatch":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_4
    move/from16 v0, v21

    if-ge v0, v10, :cond_e

    .line 649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v32

    .line 650
    .local v32, "r":Landroid/content/pm/ResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, v32

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v35, v21

    .line 652
    move-object/from16 v0, v32

    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v3, v8, :cond_c

    move-object/from16 v0, v32

    iget v8, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 648
    :cond_c
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 590
    .end local v8    # "bestMatch":I
    .end local v10    # "N":I
    .end local v21    # "i":I
    .end local v32    # "r":Landroid/content/pm/ResolveInfo;
    .end local v35    # "set":[Landroid/content/ComponentName;
    .restart local v25    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 591
    .local v19, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v3, "ResolverActivity"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 592
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 624
    .end local v19    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v25    # "mimeType":Ljava/lang/String;
    .restart local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v12    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v27    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .restart local v31    # "port":I
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 654
    .end local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v12    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v27    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v31    # "port":I
    .restart local v8    # "bestMatch":I
    .restart local v10    # "N":I
    .restart local v21    # "i":I
    .restart local v35    # "set":[Landroid/content/ComponentName;
    :cond_e
    if-eqz p2, :cond_17

    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v37

    .line 656
    .local v37, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v30

    .line 659
    .local v30, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v7, v8, v1, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 661
    move-object/from16 v0, v34

    iget-boolean v3, v0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v3, :cond_11

    .line 663
    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v28

    .line 664
    .local v28, "packageName":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 665
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    .line 700
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "bestMatch":I
    .end local v10    # "N":I
    .end local v13    # "action":Ljava/lang/String;
    .end local v14    # "cat":I
    .end local v15    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "data":Landroid/net/Uri;
    .end local v21    # "i":I
    .end local v28    # "packageName":Ljava/lang/String;
    .end local v30    # "pm":Landroid/content/pm/PackageManager;
    .end local v35    # "set":[Landroid/content/ComponentName;
    .end local v37    # "userId":I
    :cond_f
    :goto_5
    if-eqz p1, :cond_10

    .line 701
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 703
    :cond_10
    const/4 v3, 0x1

    return v3

    .line 669
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    .restart local v8    # "bestMatch":I
    .restart local v10    # "N":I
    .restart local v13    # "action":Ljava/lang/String;
    .restart local v14    # "cat":I
    .restart local v15    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "data":Landroid/net/Uri;
    .restart local v21    # "i":I
    .restart local v30    # "pm":Landroid/content/pm/PackageManager;
    .restart local v35    # "set":[Landroid/content/ComponentName;
    .restart local v37    # "userId":I
    :cond_11
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    .line 670
    .local v16, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    .line 671
    .restart local v28    # "packageName":Ljava/lang/String;
    if-eqz v17, :cond_13

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    .line 673
    .local v18, "dataScheme":Ljava/lang/String;
    :goto_6
    if-eqz v18, :cond_14

    const-string v3, "http"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "https"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_12
    const/16 v23, 0x1

    .line 677
    .local v23, "isHttpOrHttps":Z
    :goto_7
    if-eqz v13, :cond_15

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v24, 0x1

    .line 678
    .local v24, "isViewAction":Z
    :goto_8
    if-eqz v15, :cond_16

    const-string v3, "android.intent.category.BROWSABLE"

    invoke-interface {v15, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/16 v20, 0x1

    .line 681
    .local v20, "hasCategoryBrowsable":Z
    :goto_9
    if-eqz v23, :cond_f

    if-eqz v24, :cond_f

    if-eqz v20, :cond_f

    .line 682
    const/4 v3, 0x2

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move/from16 v2, v37

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    goto :goto_5

    .line 671
    .end local v18    # "dataScheme":Ljava/lang/String;
    .end local v20    # "hasCategoryBrowsable":Z
    .end local v23    # "isHttpOrHttps":Z
    .end local v24    # "isViewAction":Z
    :cond_13
    const/16 v18, 0x0

    goto :goto_6

    .line 673
    .restart local v18    # "dataScheme":Ljava/lang/String;
    :cond_14
    const/16 v23, 0x0

    goto :goto_7

    .line 677
    .restart local v23    # "isHttpOrHttps":Z
    :cond_15
    const/16 v24, 0x0

    goto :goto_8

    .line 678
    .restart local v24    # "isViewAction":Z
    :cond_16
    const/16 v20, 0x0

    goto :goto_9

    .line 689
    .end local v16    # "cn":Landroid/content/ComponentName;
    .end local v18    # "dataScheme":Ljava/lang/String;
    .end local v23    # "isHttpOrHttps":Z
    .end local v24    # "isViewAction":Z
    .end local v28    # "packageName":Ljava/lang/String;
    .end local v30    # "pm":Landroid/content/pm/PackageManager;
    .end local v37    # "userId":I
    :cond_17
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-interface/range {v3 .. v9}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 693
    :catch_1
    move-exception v33

    .line 694
    .local v33, "re":Landroid/os/RemoteException;
    const-string v3, "ResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error calling setLastChosenActivity\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "index"    # I

    .prologue
    .line 339
    new-instance v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;-><init>(Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 6
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    const/4 v5, 0x0

    .line 709
    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 710
    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 712
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    if-nez v3, :cond_2

    .line 713
    invoke-interface {p1, p0, v5}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->start(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 714
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 734
    :cond_1
    :goto_0
    return-void

    .line 719
    :cond_2
    const/4 v3, 0x0

    const/16 v4, -0x2710

    :try_start_0
    invoke-interface {p1, p0, v3, v4}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 720
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 722
    :catch_0
    move-exception v0

    .line 725
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 730
    .local v2, "launchedFromPackage":Ljava/lang/String;
    :goto_1
    const-string v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch as uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", while running in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 727
    .end local v2    # "launchedFromPackage":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 728
    .local v1, "e2":Landroid/os/RemoteException;
    const-string v2, "??"

    .restart local v2    # "launchedFromPackage":Ljava/lang/String;
    goto :goto_1
.end method

.method sendVoiceChoicesIfNeeded()V
    .locals 6

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v3

    if-nez v3, :cond_0

    .line 336
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    new-array v2, v3, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 329
    .local v2, "options":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, v2

    .local v0, "N":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 330
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/app/ResolverActivity;->optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    move-result-object v3

    aput-object v3, v2, v1

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 333
    :cond_1
    new-instance v3, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    new-instance v4, Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v3, v4}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    goto :goto_0
.end method

.method protected final setAdditionalTargets([Landroid/content/Intent;)V
    .locals 5
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 343
    if-eqz p1, :cond_0

    .line 344
    move-object v0, p1

    .local v0, "arr$":[Landroid/content/Intent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 345
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    .end local v0    # "arr$":[Landroid/content/Intent;
    .end local v1    # "i$":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "len$":I
    :cond_0
    return-void
.end method

.method public setSafeForwardingMode(Z)V
    .locals 0
    .param p1, "safeForwarding"    # Z

    .prologue
    .line 411
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    .line 412
    return-void
.end method

.method shouldGetActivityMetadata()Z
    .locals 1

    .prologue
    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 745
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 748
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 749
    return-void
.end method

.method startSelected(IZZ)V
    .locals 8
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    .prologue
    const/4 v7, 0x1

    .line 537
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 541
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 542
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10404c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 549
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    .line 550
    .local v1, "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_0
.end method
