.class public Lcom/android/vendorsettings/DeviceAdminSettings;
.super Lcom/android/vendorsettings/BaseListFragment;
.source "DeviceAdminSettings.java"


# instance fields
.field private aN:Landroid/os/UserManager;

.field private ds:Landroid/app/admin/DevicePolicyManager;

.field private final li:Landroid/util/SparseArray;

.field private lj:Ljava/lang/String;

.field private lk:Landroid/util/SparseArray;

.field private final ll:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/vendorsettings/BaseListFragment;-><init>()V

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->li:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->lk:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Lcom/android/vendorsettings/cn;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/cn;-><init>(Lcom/android/vendorsettings/DeviceAdminSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->ll:Landroid/content/BroadcastReceiver;

    .line 180
    return-void
.end method

.method private a(Landroid/content/pm/ResolveInfo;)Landroid/app/admin/DeviceAdminInfo;
    .locals 4

    .prologue
    .line 468
    :try_start_0
    new-instance v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 474
    :goto_0
    return-object v0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    const-string v1, "DeviceAdminSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 471
    :catch_1
    move-exception v0

    .line 472
    const-string v1, "DeviceAdminSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/vendorsettings/DeviceAdminSettings;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->li:Landroid/util/SparseArray;

    return-object v0
.end method

.method private a(Ljava/util/Collection;I)V
    .locals 8

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 395
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x8080

    invoke-virtual {v0, v1, v2, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 399
    if-nez v0, :cond_5

    .line 400
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 402
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 403
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->li:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 404
    if-nez v0, :cond_4

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v0

    .line 407
    :goto_1
    const/4 v0, 0x0

    move v3, v0

    :goto_2
    if-ge v3, v4, :cond_2

    .line 408
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 409
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    if-eqz p1, :cond_0

    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 414
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/DeviceAdminSettings;->a(Landroid/content/pm/ResolveInfo;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 417
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 421
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 422
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->li:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 424
    :cond_3
    return-void

    :cond_4
    move-object v2, v0

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method private a(Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 2

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/DeviceAdminSettings;->e(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->lj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/vendorsettings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/DeviceAdminSettings;->c(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)I
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/DeviceAdminSettings;->e(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v0

    return v0
.end method

.method private b(Ljava/util/List;I)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 434
    if-eqz p1, :cond_3

    .line 435
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 436
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 437
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v2

    .line 438
    :goto_0
    if-ge v3, v5, :cond_2

    .line 439
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 440
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x8080

    invoke-virtual {v4, v0, v1, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    .line 443
    if-eqz v7, :cond_1

    .line 444
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move v1, v2

    .line 445
    :goto_1
    if-ge v1, v8, :cond_1

    .line 446
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/DeviceAdminSettings;->a(Landroid/content/pm/ResolveInfo;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 438
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 453
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 454
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->li:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 457
    :cond_3
    return-void
.end method

.method private b(Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->lk:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/android/vendorsettings/DeviceAdminSettings;->e(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 353
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private c(Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->ds:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/vendorsettings/DeviceAdminSettings;->e(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActiveAsUser(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/DeviceAdminSettings;->a(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    return v0
.end method

.method private d(Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->ds:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/vendorsettings/DeviceAdminSettings;->e(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/DeviceAdminSettings;->b(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    return v0
.end method

.method private e(Landroid/app/admin/DeviceAdminInfo;)I
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/android/vendorsettings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/DeviceAdminSettings;->d(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    return v0
.end method

.method private z(I)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->ds:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v0

    .line 376
    invoke-direct {p0, v0, p1}, Lcom/android/vendorsettings/DeviceAdminSettings;->b(Ljava/util/List;I)V

    .line 379
    invoke-direct {p0, v0, p1}, Lcom/android/vendorsettings/DeviceAdminSettings;->a(Ljava/util/Collection;I)V

    .line 380
    return-void
.end method


# virtual methods
.method dr()V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->li:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 139
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->aN:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    .line 140
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 141
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 142
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 143
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/DeviceAdminSettings;->z(I)V

    .line 141
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/vendorsettings/co;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/co;-><init>(Lcom/android/vendorsettings/DeviceAdminSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/iC;->a(Landroid/view/View;Z)V

    .line 103
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->ds:Landroid/app/admin/DevicePolicyManager;

    .line 94
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->aN:Landroid/os/UserManager;

    .line 95
    const v0, 0x7f040066

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 152
    instance-of v1, v0, Landroid/app/admin/DeviceAdminInfo;

    if-nez v1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 156
    :cond_0
    check-cast v0, Landroid/app/admin/DeviceAdminInfo;

    .line 157
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 158
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/DeviceAdminSettings;->e(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v2

    .line 159
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/DeviceAdminSettings;->b(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 160
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 161
    const-class v4, Lcom/android/vendorsettings/DeviceAdminAdd;

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 162
    const-string v4, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 163
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 165
    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    const v3, 0x7f0c0815

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/vendorsettings/DeviceAdminSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 168
    const v0, 0x104000a

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 169
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->ll:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    invoke-super {p0}, Lcom/android/vendorsettings/BaseListFragment;->onPause()V

    .line 130
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-super {p0}, Lcom/android/vendorsettings/BaseListFragment;->onResume()V

    .line 108
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->ll:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->ds:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->lj:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->lj:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->ds:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->lj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iput-object v4, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->lj:Ljava/lang/String;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->lk:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 117
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->aN:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    .line 118
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 119
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 120
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 121
    iget-object v4, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->lk:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/vendorsettings/DeviceAdminSettings;->ds:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminSettings;->dr()V

    .line 124
    return-void
.end method
