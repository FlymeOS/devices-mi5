.class public Lcom/android/vendorsettings/users/UserSettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/vendorsettings/search/k;
.implements Lcom/android/vendorsettings/users/EditUserInfoController$OnContentChangedCallback;


# static fields
.field public static final ig:Lcom/android/vendorsettings/search/l;


# instance fields
.field private aua:Lcom/android/vendorsettings/users/EditUserInfoController;

.field private auo:Landroid/preference/PreferenceGroup;

.field private aup:Lcom/android/vendorsettings/users/UserPreference;

.field private auq:Lcom/android/vendorsettings/hk;

.field private aur:Landroid/preference/Preference;

.field private aus:I

.field private aut:I

.field private auu:Z

.field private auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

.field private final auw:Ljava/lang/Object;

.field private aux:Landroid/util/SparseArray;

.field private auy:Landroid/graphics/drawable/Drawable;

.field private auz:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private sR:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1094
    new-instance v0, Lcom/android/vendorsettings/users/UserSettings$14;

    invoke-direct {v0}, Lcom/android/vendorsettings/users/UserSettings$14;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/users/UserSettings;->ig:Lcom/android/vendorsettings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aus:I

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aut:I

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auw:Ljava/lang/Object;

    .line 143
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aux:Landroid/util/SparseArray;

    .line 145
    new-instance v0, Lcom/android/vendorsettings/users/EditUserInfoController;

    invoke-direct {v0}, Lcom/android/vendorsettings/users/EditUserInfoController;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aua:Lcom/android/vendorsettings/users/EditUserInfoController;

    .line 151
    new-instance v0, Lcom/android/vendorsettings/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/users/UserSettings$1;-><init>(Lcom/android/vendorsettings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    .line 168
    new-instance v0, Lcom/android/vendorsettings/users/UserSettings$2;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/users/UserSettings$2;-><init>(Lcom/android/vendorsettings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auz:Landroid/content/BroadcastReceiver;

    .line 1044
    return-void
.end method

.method private C(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 870
    new-instance v0, Lcom/android/vendorsettings/users/UserSettings$13;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/users/UserSettings$13;-><init>(Lcom/android/vendorsettings/users/UserSettings;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/users/UserSettings$13;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 888
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 988
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/vendorsettings/c/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/vendorsettings/c/a;

    move-result-object v0

    .line 989
    return-object v0
.end method

.method private a(Landroid/content/pm/UserInfo;)V
    .locals 1

    .prologue
    .line 891
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/vendorsettings/iC;->a(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/users/UserSettings;->b(Landroid/content/pm/UserInfo;)V

    .line 894
    :cond_0
    return-void
.end method

.method private a(Landroid/preference/Preference;Landroid/content/pm/UserInfo;)V
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aux:Landroid/util/SparseArray;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 910
    if-eqz v0, :cond_0

    .line 911
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/users/UserSettings;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 913
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/users/UserSettings;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vu()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/users/UserSettings;I)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/users/UserSettings;->db(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/users/UserSettings;IZ)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/users/UserSettings;->n(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/users/UserSettings;Landroid/content/pm/UserInfo;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/users/UserSettings;->a(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/users/UserSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/users/UserSettings;->bT(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/users/UserSettings;Z)Z
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/vendorsettings/users/UserSettings;->auu:Z

    return p1
.end method

.method static synthetic b(Lcom/android/vendorsettings/users/UserSettings;I)I
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/android/vendorsettings/users/UserSettings;->aus:I

    return p1
.end method

.method static synthetic b(Lcom/android/vendorsettings/users/UserSettings;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aux:Landroid/util/SparseArray;

    return-object v0
.end method

.method private b(Landroid/content/pm/UserInfo;)V
    .locals 3

    .prologue
    .line 897
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Lcom/android/vendorsettings/iC;->as(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 898
    iget-object v1, p0, Lcom/android/vendorsettings/users/UserSettings;->sR:Landroid/os/UserManager;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 899
    return-void
.end method

.method private bT(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aup:Lcom/android/vendorsettings/users/UserPreference;

    const v1, 0x7f0c0958

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/vendorsettings/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 348
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 349
    iget-object v1, p0, Lcom/android/vendorsettings/users/UserSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 350
    if-eqz v1, :cond_0

    .line 351
    iget-object v2, p0, Lcom/android/vendorsettings/users/UserSettings;->aup:Lcom/android/vendorsettings/users/UserPreference;

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/users/UserSettings;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/vendorsettings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 352
    iget-object v2, p0, Lcom/android/vendorsettings/users/UserSettings;->aux:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/vendorsettings/users/UserSettings;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/users/UserSettings;I)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/users/UserSettings;->dc(I)V

    return-void
.end method

.method private c(Landroid/content/pm/UserInfo;)Z
    .locals 1

    .prologue
    .line 984
    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cZ(I)V
    .locals 3

    .prologue
    .line 382
    iget-object v1, p0, Lcom/android/vendorsettings/users/UserSettings;->auw:Ljava/lang/Object;

    monitor-enter v1

    .line 383
    :try_start_0
    iget v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aus:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auu:Z

    if-nez v0, :cond_0

    .line 384
    packed-switch p1, :pswitch_data_0

    .line 397
    :cond_0
    :goto_0
    monitor-exit v1

    .line 398
    return-void

    .line 386
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 389
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/users/UserSettings;->dc(I)V

    goto :goto_0

    .line 392
    :cond_1
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/users/UserSettings;->showDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic d(Lcom/android/vendorsettings/users/UserSettings;)Landroid/os/UserManager;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->sR:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/users/UserSettings;I)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/users/UserSettings;->dd(I)V

    return-void
.end method

.method private da(I)V
    .locals 3

    .prologue
    .line 401
    iget-object v1, p0, Lcom/android/vendorsettings/users/UserSettings;->auw:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_0
    iget v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aus:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auu:Z

    if-nez v0, :cond_0

    .line 403
    iput p1, p0, Lcom/android/vendorsettings/users/UserSettings;->aus:I

    .line 404
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/users/UserSettings;->showDialog(I)V

    .line 406
    :cond_0
    monitor-exit v1

    .line 407
    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private db(I)V
    .locals 1

    .prologue
    .line 477
    iput p1, p0, Lcom/android/vendorsettings/users/UserSettings;->aut:I

    .line 478
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/users/UserSettings;->showDialog(I)V

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/users/UserSettings;->showDialog(I)V

    goto :goto_0
.end method

.method private dc(I)V
    .locals 2

    .prologue
    .line 664
    iget-object v1, p0, Lcom/android/vendorsettings/users/UserSettings;->auw:Ljava/lang/Object;

    monitor-enter v1

    .line 665
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auu:Z

    .line 667
    new-instance v0, Lcom/android/vendorsettings/users/UserSettings$12;

    invoke-direct {v0, p0, p1}, Lcom/android/vendorsettings/users/UserSettings$12;-><init>(Lcom/android/vendorsettings/users/UserSettings;I)V

    invoke-virtual {v0}, Lcom/android/vendorsettings/users/UserSettings$12;->start()V

    .line 689
    monitor-exit v1

    .line 690
    return-void

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private dd(I)V
    .locals 1

    .prologue
    .line 694
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :goto_0
    return-void

    .line 695
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/android/vendorsettings/users/UserSettings;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vr()V

    return-void
.end method

.method static synthetic e(Lcom/android/vendorsettings/users/UserSettings;I)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/users/UserSettings;->cZ(I)V

    return-void
.end method

.method static synthetic f(Lcom/android/vendorsettings/users/UserSettings;)I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aut:I

    return v0
.end method

.method static synthetic g(Lcom/android/vendorsettings/users/UserSettings;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vo()V

    return-void
.end method

.method static synthetic h(Lcom/android/vendorsettings/users/UserSettings;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vt()V

    return-void
.end method

.method static synthetic i(Lcom/android/vendorsettings/users/UserSettings;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auw:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j(Lcom/android/vendorsettings/users/UserSettings;)I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aus:I

    return v0
.end method

.method static synthetic k(Lcom/android/vendorsettings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vq()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/android/vendorsettings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vp()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method private n(IZ)V
    .locals 7

    .prologue
    .line 443
    const/16 v0, -0xb

    if-ne p1, v0, :cond_1

    .line 444
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 445
    const-string v0, "guest_user"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/hn;

    const-class v1, Lcom/android/vendorsettings/users/UserDetailsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0979

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 452
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auG:Z

    if-eqz v0, :cond_2

    .line 453
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 454
    const-string v0, "user_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    const-string v0, "new_user"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 456
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/hn;

    const-class v1, Lcom/android/vendorsettings/users/RestrictedProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c09d7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 460
    :cond_2
    iget v0, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 462
    invoke-static {p0}, Lcom/android/vendorsettings/OwnerInfoSettings;->e(Landroid/app/Fragment;)V

    goto :goto_0

    .line 463
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auG:Z

    if-eqz v0, :cond_0

    .line 464
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 465
    const-string v0, "user_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 466
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/hn;

    const-class v1, Lcom/android/vendorsettings/users/UserDetailsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    iget-object v4, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method private setUserName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->sR:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auq:Lcom/android/vendorsettings/hk;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/hk;->setSummary(Ljava/lang/CharSequence;)V

    .line 918
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 919
    return-void
.end method

.method private vm()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auH:Z

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aup:Lcom/android/vendorsettings/users/UserPreference;

    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vw()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 324
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aup:Lcom/android/vendorsettings/users/UserPreference;

    const v1, 0x7f0c097a

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/users/UserPreference;->setTitle(I)V

    .line 343
    :goto_0
    return-void

    .line 328
    :cond_0
    new-instance v0, Lcom/android/vendorsettings/users/UserSettings$3;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/users/UserSettings$3;-><init>(Lcom/android/vendorsettings/users/UserSettings;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/users/UserSettings$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private vn()Z
    .locals 2

    .prologue
    .line 357
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 358
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    return v0
.end method

.method private vo()V
    .locals 3

    .prologue
    .line 362
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/users/UserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 366
    return-void
.end method

.method private vp()Landroid/content/pm/UserInfo;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 410
    iget-object v1, p0, Lcom/android/vendorsettings/users/UserSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c096d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->createSecondaryUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 413
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    .line 414
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 415
    iget-object v4, p0, Lcom/android/vendorsettings/users/UserSettings;->sR:Landroid/os/UserManager;

    const-string v5, "no_modify_accounts"

    invoke-virtual {v4, v5, v6, v3}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 418
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_mode"

    invoke-static {v4, v5, v0, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 420
    iget-object v2, p0, Lcom/android/vendorsettings/users/UserSettings;->sR:Landroid/os/UserManager;

    const-string v4, "no_share_location"

    invoke-virtual {v2, v4, v6, v3}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 421
    invoke-direct {p0, v1}, Lcom/android/vendorsettings/users/UserSettings;->b(Landroid/content/pm/UserInfo;)V

    .line 423
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 424
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v4

    .line 425
    if-eqz v4, :cond_0

    .line 426
    array-length v5, v4

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 427
    invoke-virtual {v2, v6, v3}, Landroid/accounts/AccountManager;->addSharedAccount(Landroid/accounts/Account;Landroid/os/UserHandle;)Z

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_0
    return-object v1
.end method

.method private vq()Landroid/content/pm/UserInfo;
    .locals 3

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c096c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->createSecondaryUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_0

    .line 437
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/users/UserSettings;->b(Landroid/content/pm/UserInfo;)V

    .line 439
    :cond_0
    return-object v0
.end method

.method private vr()V
    .locals 2

    .prologue
    .line 639
    iget v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aus:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 640
    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vs()V

    .line 651
    :goto_0
    return-void

    .line 642
    :cond_0
    new-instance v0, Lcom/android/vendorsettings/users/UserSettings$11;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/users/UserSettings$11;-><init>(Lcom/android/vendorsettings/users/UserSettings;)V

    invoke-virtual {v0}, Lcom/android/vendorsettings/users/UserSettings$11;->start()V

    goto :goto_0
.end method

.method private vs()V
    .locals 2

    .prologue
    .line 655
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 656
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :goto_0
    return-void

    .line 658
    :catch_0
    move-exception v0

    .line 659
    const-string v0, "UserSettings"

    const-string v1, "Unable to remove self user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private vt()V
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auH:Z

    if-nez v0, :cond_0

    .line 709
    :goto_0
    return-void

    .line 708
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vs()V

    goto :goto_0
.end method

.method private vu()V
    .locals 15

    .prologue
    const v14, 0x7fffffff

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 712
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {v0, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 714
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 716
    invoke-static {v1}, Lcom/android/vendorsettings/iC;->Y(Landroid/content/Context;)Z

    move-result v9

    .line 717
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 718
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 719
    iget-object v3, p0, Lcom/android/vendorsettings/users/UserSettings;->aup:Lcom/android/vendorsettings/users/UserPreference;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "second_user_id"

    const/16 v5, -0x2710

    invoke-static {v3, v4, v5, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    .line 726
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 730
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v12, :cond_2

    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    const/16 v3, 0x63

    if-eq v0, v3, :cond_2

    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    const/16 v3, 0x3e7

    if-eq v0, v3, :cond_2

    .line 737
    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 738
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aup:Lcom/android/vendorsettings/users/UserPreference;

    .line 766
    :goto_2
    invoke-direct {p0, v6}, Lcom/android/vendorsettings/users/UserSettings;->c(Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 767
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 768
    const v3, 0x7f0c0955

    invoke-virtual {v0, v3}, Lcom/android/vendorsettings/users/UserPreference;->setSummary(I)V

    .line 775
    :cond_3
    :goto_3
    iget-object v3, v6, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 776
    iget-object v3, p0, Lcom/android/vendorsettings/users/UserSettings;->aux:Landroid/util/SparseArray;

    iget v4, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_d

    .line 778
    iget v3, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vw()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/vendorsettings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 739
    :cond_4
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-nez v0, :cond_2

    .line 751
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auG:Z

    if-eqz v0, :cond_7

    if-nez v9, :cond_5

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    move v4, v7

    .line 753
    :goto_4
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auG:Z

    if-eqz v0, :cond_8

    if-nez v9, :cond_8

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-nez v0, :cond_8

    move v5, v7

    .line 755
    :goto_5
    new-instance v0, Lcom/android/vendorsettings/users/UserPreference;

    iget v3, v6, Landroid/content/pm/UserInfo;->id:I

    if-eqz v4, :cond_9

    move-object v4, p0

    :goto_6
    if-eqz v5, :cond_a

    move-object v5, p0

    :goto_7
    invoke-direct/range {v0 .. v5}, Lcom/android/vendorsettings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 758
    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/users/UserPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 759
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/vendorsettings/users/UserPreference;->setKey(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    iget v3, v6, Landroid/content/pm/UserInfo;->id:I

    if-nez v3, :cond_6

    .line 762
    const v3, 0x7f0c0957

    invoke-virtual {v0, v3}, Lcom/android/vendorsettings/users/UserPreference;->setSummary(I)V

    .line 764
    :cond_6
    iget-object v3, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/vendorsettings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    move v4, v8

    .line 751
    goto :goto_4

    :cond_8
    move v5, v8

    .line 753
    goto :goto_5

    :cond_9
    move-object v4, v2

    .line 755
    goto :goto_6

    :cond_a
    move-object v5, v2

    goto :goto_7

    .line 770
    :cond_b
    const v3, 0x7f0c0954

    invoke-virtual {v0, v3}, Lcom/android/vendorsettings/users/UserPreference;->setSummary(I)V

    goto/16 :goto_3

    .line 772
    :cond_c
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 773
    const v3, 0x7f0c0951

    invoke-virtual {v0, v3}, Lcom/android/vendorsettings/users/UserPreference;->setSummary(I)V

    goto/16 :goto_3

    .line 781
    :cond_d
    invoke-direct {p0, v0, v6}, Lcom/android/vendorsettings/users/UserSettings;->a(Landroid/preference/Preference;Landroid/content/pm/UserInfo;)V

    goto/16 :goto_1

    .line 785
    :cond_e
    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vw()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/vendorsettings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 790
    :cond_f
    iget-boolean v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auu:Z

    if-eqz v0, :cond_10

    .line 791
    new-instance v0, Lcom/android/vendorsettings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v3, -0xa

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/vendorsettings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 793
    invoke-virtual {v0, v8}, Lcom/android/vendorsettings/users/UserPreference;->setEnabled(Z)V

    .line 794
    const v1, 0x7f0c096c

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/users/UserPreference;->setTitle(I)V

    .line 795
    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vw()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 796
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    :cond_10
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auH:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auI:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vy()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 801
    :cond_11
    new-instance v0, Lcom/android/vendorsettings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v3, -0xb

    iget-object v4, p0, Lcom/android/vendorsettings/users/UserSettings;->auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    iget-boolean v4, v4, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auG:Z

    if-eqz v4, :cond_14

    if-eqz v9, :cond_14

    move-object v4, p0

    :goto_8
    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/vendorsettings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 805
    const v1, 0x7f0c0979

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/users/UserPreference;->setTitle(I)V

    .line 806
    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vw()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 807
    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/users/UserPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 808
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    :cond_12
    sget-object v0, Lcom/android/vendorsettings/users/UserPreference;->aul:Ljava/util/Comparator;

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 814
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 817
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 818
    invoke-direct {p0, v10}, Lcom/android/vendorsettings/users/UserSettings;->C(Ljava/util/List;)V

    .line 821
    :cond_13
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 822
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 828
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auF:Z

    if-eqz v0, :cond_15

    .line 829
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auo:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 830
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auo:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceGroup;->setOrder(I)V

    .line 831
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auo:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 832
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auo:Landroid/preference/PreferenceGroup;

    move-object v1, v0

    .line 836
    :goto_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/users/UserPreference;

    .line 837
    invoke-virtual {v0, v14}, Lcom/android/vendorsettings/users/UserPreference;->setOrder(I)V

    .line 838
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_a

    :cond_14
    move-object v4, v2

    .line 801
    goto :goto_8

    :cond_15
    move-object v1, v3

    .line 834
    goto :goto_9

    .line 842
    :cond_16
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auE:Z

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v0

    .line 844
    iget-object v1, p0, Lcom/android/vendorsettings/users/UserSettings;->aur:Landroid/preference/Preference;

    invoke-virtual {v1, v14}, Landroid/preference/Preference;->setOrder(I)V

    .line 845
    iget-object v1, p0, Lcom/android/vendorsettings/users/UserSettings;->aur:Landroid/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 846
    iget-object v1, p0, Lcom/android/vendorsettings/users/UserSettings;->aur:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 847
    if-nez v0, :cond_17

    .line 848
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aur:Landroid/preference/Preference;

    const v1, 0x7f0c095b

    new-array v2, v7, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vv()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p0, v1, v2}, Lcom/android/vendorsettings/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 850
    :cond_17
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aur:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private vv()I
    .locals 4

    .prologue
    .line 857
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 858
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 860
    const/4 v0, 0x0

    .line 861
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 862
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 865
    goto :goto_0

    .line 866
    :cond_0
    sub-int v0, v2, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private vw()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auy:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 903
    const/16 v0, -0x2710

    invoke-static {v0}, Lcom/android/vendorsettings/iC;->as(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/users/UserSettings;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auy:Landroid/graphics/drawable/Drawable;

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auy:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private vx()V
    .locals 4

    .prologue
    .line 961
    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vy()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 962
    if-eqz v0, :cond_1

    .line 963
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/users/UserSettings;->dd(I)V

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0979

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 968
    if-eqz v0, :cond_0

    .line 969
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/users/UserSettings;->dd(I)V

    goto :goto_0
.end method

.method private vy()Landroid/content/pm/UserInfo;
    .locals 3

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 975
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 976
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 980
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ay()I
    .locals 1

    .prologue
    .line 1031
    const v0, 0x7f0c09bc

    return v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aup:Lcom/android/vendorsettings/users/UserPreference;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1037
    return-void
.end method

.method public f(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aup:Lcom/android/vendorsettings/users/UserPreference;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1042
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    const-class v0, Lcom/android/vendorsettings/users/UserSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hV()V
    .locals 0

    .prologue
    .line 487
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->hV()V

    .line 489
    invoke-virtual {p0, p0}, Lcom/android/vendorsettings/users/UserSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 490
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 370
    invoke-super {p0, p1, p2, p3}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 372
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 373
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/users/UserSettings;->dc(I)V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aua:Lcom/android/vendorsettings/users/EditUserInfoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/vendorsettings/users/EditUserInfoController;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 994
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/vendorsettings/users/UserPreference;

    if-eqz v0, :cond_0

    .line 995
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/users/UserPreference;

    invoke-virtual {v0}, Lcom/android/vendorsettings/users/UserPreference;->getUserId()I

    move-result v0

    .line 996
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1005
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 998
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/users/UserSettings;->da(I)V

    goto :goto_0

    .line 1001
    :pswitch_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/users/UserSettings;->n(IZ)V

    goto :goto_0

    .line 996
    nop

    :pswitch_data_0
    .packed-switch 0x7f1301d3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 195
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 197
    if-eqz p1, :cond_2

    .line 198
    const-string v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aut:I

    .line 201
    :cond_0
    const-string v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    const-string v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aus:I

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aua:Lcom/android/vendorsettings/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/users/EditUserInfoController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 206
    :cond_2
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 207
    invoke-static {v1}, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->cl(Landroid/content/Context;)Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    .line 208
    const-string v0, "user"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->sR:Landroid/os/UserManager;

    .line 209
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_4

    .line 245
    :cond_3
    :goto_0
    return-void

    .line 213
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 215
    const v0, 0x7f0800b6

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/users/UserSettings;->addPreferencesFromResource(I)V

    .line 216
    const-string v0, "user_list"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auo:Landroid/preference/PreferenceGroup;

    .line 217
    new-instance v0, Lcom/android/vendorsettings/users/UserPreference;

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/vendorsettings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aup:Lcom/android/vendorsettings/users/UserPreference;

    .line 220
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aup:Lcom/android/vendorsettings/users/UserPreference;

    const-string v3, "user_me"

    invoke-virtual {v0, v3}, Lcom/android/vendorsettings/users/UserPreference;->setKey(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aup:Lcom/android/vendorsettings/users/UserPreference;

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/users/UserPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auG:Z

    if-eqz v0, :cond_5

    .line 223
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aup:Lcom/android/vendorsettings/users/UserPreference;

    const v3, 0x7f0c0957

    invoke-virtual {v0, v3}, Lcom/android/vendorsettings/users/UserPreference;->setSummary(I)V

    .line 225
    :cond_5
    const-string v0, "user_add"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aur:Landroid/preference/Preference;

    .line 227
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auE:Z

    if-eqz v0, :cond_6

    .line 228
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aur:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auF:Z

    if-nez v0, :cond_6

    .line 231
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aur:Landroid/preference/Preference;

    const v3, 0x7f0c0950

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 234
    :cond_6
    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vm()V

    .line 235
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/users/UserSettings;->setHasOptionsMenu(Z)V

    .line 236
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 237
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    iget-object v4, p0, Lcom/android/vendorsettings/users/UserSettings;->auz:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v8, p0, Lcom/android/vendorsettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    move-object v3, v1

    move-object v7, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    .line 242
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10

    .prologue
    const v9, 0x104000a

    const/4 v8, 0x0

    const/high16 v7, 0x1040000

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 494
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 495
    if-nez v3, :cond_0

    move-object v0, v1

    .line 634
    :goto_0
    return-object v0

    .line 496
    :cond_0
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 634
    goto :goto_0

    .line 498
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/vendorsettings/users/UserSettings;->aus:I

    new-instance v2, Lcom/android/vendorsettings/users/UserSettings$4;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/users/UserSettings$4;-><init>(Lcom/android/vendorsettings/users/UserSettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/vendorsettings/users/UserDialogs;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 509
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0968

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 514
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 516
    const-string v0, "key_add_user_long_message_displayed"

    invoke-interface {v4, v0, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 518
    if-eqz v6, :cond_1

    const v0, 0x7f0c0962

    move v2, v0

    .line 521
    :goto_1
    if-ne p1, v5, :cond_2

    const/4 v0, 0x1

    .line 523
    :goto_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0960

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/vendorsettings/users/UserSettings$5;

    invoke-direct {v3, p0, v0, v6, v4}, Lcom/android/vendorsettings/users/UserSettings$5;-><init>(Lcom/android/vendorsettings/users/UserSettings;IZLandroid/content/SharedPreferences;)V

    invoke-virtual {v2, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 518
    :cond_1
    const v0, 0x7f0c0961

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v5

    .line 521
    goto :goto_2

    .line 541
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0963

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0964

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0966

    new-instance v3, Lcom/android/vendorsettings/users/UserSettings$6;

    invoke-direct {v3, p0}, Lcom/android/vendorsettings/users/UserSettings$6;-><init>(Lcom/android/vendorsettings/users/UserSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0967

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 555
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0965

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/vendorsettings/users/UserSettings$7;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/users/UserSettings$7;-><init>(Lcom/android/vendorsettings/users/UserSettings;)V

    invoke-virtual {v0, v9, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 568
    :pswitch_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 569
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 570
    const-string v1, "title"

    const v4, 0x7f0c095e

    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v1, "summary"

    const v4, 0x7f0c095c

    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 573
    const-string v4, "title"

    const v6, 0x7f0c095f

    invoke-virtual {p0, v6}, Lcom/android/vendorsettings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const-string v4, "summary"

    const v6, 0x7f0c095d

    invoke-virtual {p0, v6}, Lcom/android/vendorsettings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 578
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f040186

    new-array v4, v5, [Ljava/lang/String;

    const-string v7, "title"

    aput-object v7, v4, v8

    const/4 v7, 0x1

    const-string v8, "summary"

    aput-object v8, v4, v7

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 582
    const v1, 0x7f0c095a

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 583
    new-instance v1, Lcom/android/vendorsettings/users/UserSettings$8;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/users/UserSettings$8;-><init>(Lcom/android/vendorsettings/users/UserSettings;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 592
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 595
    :pswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0952

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0953

    new-instance v3, Lcom/android/vendorsettings/users/UserSettings$9;

    invoke-direct {v3, p0}, Lcom/android/vendorsettings/users/UserSettings$9;-><init>(Lcom/android/vendorsettings/users/UserSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 609
    :pswitch_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c097b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c097c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c097d

    new-instance v3, Lcom/android/vendorsettings/users/UserSettings$10;

    invoke-direct {v3, p0}, Lcom/android/vendorsettings/users/UserSettings$10;-><init>(Lcom/android/vendorsettings/users/UserSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 624
    :pswitch_8
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aua:Lcom/android/vendorsettings/users/EditUserInfoController;

    iget-object v1, p0, Lcom/android/vendorsettings/users/UserSettings;->aup:Lcom/android/vendorsettings/users/UserPreference;

    invoke-virtual {v1}, Lcom/android/vendorsettings/users/UserPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v1, p0, Lcom/android/vendorsettings/users/UserSettings;->aup:Lcom/android/vendorsettings/users/UserPreference;

    invoke-virtual {v1}, Lcom/android/vendorsettings/users/UserPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0c01e3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    move-object v1, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/users/EditUserInfoController;->a(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/vendorsettings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 578
    :array_0
    .array-data 4
        0x7f130061
        0x7f130079
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 282
    .line 283
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 284
    iget-object v1, p0, Lcom/android/vendorsettings/users/UserSettings;->auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    iget-boolean v1, v1, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auG:Z

    if-nez v1, :cond_2

    const-string v1, "no_remove_user"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 285
    iget-object v1, p0, Lcom/android/vendorsettings/users/UserSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c096a

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 288
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    move v1, v2

    .line 290
    :goto_0
    iget-object v4, p0, Lcom/android/vendorsettings/users/UserSettings;->auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    iget-boolean v4, v4, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auG:Z

    if-eqz v4, :cond_0

    const-string v4, "no_add_user"

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    const/4 v0, 0x2

    add-int/lit8 v4, v1, 0x1

    const v4, 0x7f0c096b

    invoke-interface {p1, v3, v0, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 293
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 294
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "add_users_when_locked"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 297
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 298
    return-void

    :cond_1
    move v2, v3

    .line 294
    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 259
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 261
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/users/UserSettings;->auz:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 1009
    iget-object v1, p0, Lcom/android/vendorsettings/users/UserSettings;->auw:Ljava/lang/Object;

    monitor-enter v1

    .line 1010
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auu:Z

    .line 1011
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aus:I

    .line 1012
    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vu()V

    .line 1013
    monitor-exit v1

    .line 1014
    return-void

    .line 1013
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 302
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 303
    if-ne v0, v2, :cond_0

    .line 304
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/users/UserSettings;->da(I)V

    .line 313
    :goto_0
    return v2

    .line 306
    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 307
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    .line 308
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "add_users_when_locked"

    if-eqz v3, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 310
    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    move v0, v2

    .line 308
    goto :goto_1

    .line 313
    :cond_3
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auq:Lcom/android/vendorsettings/hk;

    if-ne p1, v0, :cond_1

    .line 1019
    check-cast p2, Ljava/lang/String;

    .line 1020
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auq:Lcom/android/vendorsettings/hk;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1022
    invoke-direct {p0, p2}, Lcom/android/vendorsettings/users/UserSettings;->setUserName(Ljava/lang/String;)V

    .line 1024
    :cond_0
    const/4 v0, 0x1

    .line 1026
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 923
    iget-object v2, p0, Lcom/android/vendorsettings/users/UserSettings;->aup:Lcom/android/vendorsettings/users/UserPreference;

    if-ne p1, v2, :cond_3

    .line 924
    iget-object v2, p0, Lcom/android/vendorsettings/users/UserSettings;->auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    iget-boolean v2, v2, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auH:Z

    if-eqz v2, :cond_0

    .line 925
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/users/UserSettings;->showDialog(I)V

    .line 957
    :goto_0
    return v0

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 930
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/users/UserSettings;->n(IZ)V

    :cond_1
    :goto_1
    move v0, v1

    .line 957
    goto :goto_0

    .line 932
    :cond_2
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/users/UserSettings;->showDialog(I)V

    goto :goto_1

    .line 934
    :cond_3
    instance-of v2, p1, Lcom/android/vendorsettings/users/UserPreference;

    if-eqz v2, :cond_6

    .line 935
    check-cast p1, Lcom/android/vendorsettings/users/UserPreference;

    invoke-virtual {p1}, Lcom/android/vendorsettings/users/UserPreference;->getUserId()I

    move-result v0

    .line 936
    const/16 v2, -0xb

    if-ne v0, v2, :cond_4

    .line 937
    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vx()V

    goto :goto_1

    .line 940
    :cond_4
    iget-object v2, p0, Lcom/android/vendorsettings/users/UserSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {v2, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 941
    invoke-direct {p0, v2}, Lcom/android/vendorsettings/users/UserSettings;->c(Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 942
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/vendorsettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    iget v2, v2, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v3, v4, v5, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 945
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/users/UserSettings;->dd(I)V

    goto :goto_1

    .line 948
    :cond_6
    iget-object v2, p0, Lcom/android/vendorsettings/users/UserSettings;->aur:Landroid/preference/Preference;

    if-ne p1, v2, :cond_1

    .line 951
    iget-object v2, p0, Lcom/android/vendorsettings/users/UserSettings;->auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    iget-boolean v2, v2, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->auF:Z

    if-eqz v2, :cond_7

    .line 952
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/users/UserSettings;->showDialog(I)V

    goto :goto_1

    .line 954
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/users/UserSettings;->cZ(I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 251
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->auv:Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/vendorsettings/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vm()V

    .line 254
    invoke-direct {p0}, Lcom/android/vendorsettings/users/UserSettings;->vu()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 269
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aua:Lcom/android/vendorsettings/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/users/EditUserInfoController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 270
    const-string v0, "adding_user"

    iget v1, p0, Lcom/android/vendorsettings/users/UserSettings;->aut:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 271
    const-string v0, "removing_user"

    iget v1, p0, Lcom/android/vendorsettings/users/UserSettings;->aus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings;->aua:Lcom/android/vendorsettings/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/vendorsettings/users/EditUserInfoController;->ve()V

    .line 277
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 278
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 190
    const/16 v0, 0x60

    return v0
.end method
