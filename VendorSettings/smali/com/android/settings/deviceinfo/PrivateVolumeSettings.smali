.class public Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "PrivateVolumeSettings.java"


# static fields
.field private static final VW:[I

.field private static final VX:[I


# instance fields
.field private VY:Ljava/lang/String;

.field private VZ:Landroid/os/storage/VolumeInfo;

.field private Vq:Landroid/os/storage/VolumeInfo;

.field private Vr:Landroid/os/storage/StorageManager;

.field private Vs:Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;

.field private Vx:J

.field private Wa:Lcom/android/b/d/a;

.field private Wb:Landroid/content/pm/UserInfo;

.field public Wc:Ljava/util/List;

.field private Wd:Ljava/util/List;

.field private We:Ljava/util/List;

.field private Wf:I

.field private Wg:I

.field private Wh:Landroid/preference/Preference;

.field private final Wi:Lcom/android/b/d/g;

.field private final Wj:Landroid/os/storage/StorageEventListener;

.field private Wk:Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;

.field private Wl:Landroid/preference/PreferenceCategory;

.field private sR:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0c0434

    aput v2, v0, v1

    sput-object v0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->VW:[I

    .line 117
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->VX:[I

    return-void

    :array_0
    .array-data 4
        0x7f0c0434
        0x7f0c0437
        0x7f0c0438
        0x7f0c043a
        0x7f0c0439
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 142
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wc:Ljava/util/List;

    .line 144
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wd:Ljava/util/List;

    .line 145
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->We:Ljava/util/List;

    .line 633
    new-instance v0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$1;-><init>(Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wi:Lcom/android/b/d/g;

    .line 725
    new-instance v0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$2;-><init>(Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wj:Landroid/os/storage/StorageEventListener;

    .line 901
    return-void
.end method

.method private static varargs a(Lcom/android/b/d/d;I[Ljava/lang/String;)J
    .locals 8

    .prologue
    .line 711
    const-wide/16 v2, 0x0

    .line 712
    iget-object v0, p0, Lcom/android/b/d/d;->aKu:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 713
    if-eqz v0, :cond_1

    .line 714
    array-length v5, p2

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, p2, v4

    .line 715
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 716
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 714
    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 720
    :cond_1
    const-string v0, "StorageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MeasurementDetails mediaSize array does not have key for user "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_2
    return-wide v2
.end method

.method static synthetic a(Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/VolumeInfo;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vq:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vq:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method private a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;
    .locals 4

    .prologue
    .line 363
    iget v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wf:I

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->We:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->We:Ljava/util/List;

    iget v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wf:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 370
    :goto_0
    invoke-virtual {v0, p2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 371
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 372
    invoke-direct {p0, p1, v0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 373
    iget v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wf:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wf:I

    .line 374
    return-object v0

    .line 366
    :cond_0
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x101008c

    invoke-direct {v0, v1, v2, v3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 368
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->We:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V
    .locals 2

    .prologue
    .line 386
    iget v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wg:I

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 387
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wd:Ljava/util/List;

    iget v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wg:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;

    .line 393
    :goto_0
    if-eqz p3, :cond_2

    .line 394
    invoke-virtual {v0, p3}, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 430
    :goto_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-eq p4, v1, :cond_0

    .line 431
    const v1, 0x7f020202

    iput v1, v0, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->color:I

    .line 432
    const v1, 0x7f020206

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->setIcon(I)V

    .line 436
    :cond_0
    const v1, 0x7f0c0433

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 437
    iput p4, v0, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->userHandle:I

    .line 438
    invoke-direct {p0, p1, v0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 439
    iget v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wg:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wg:I

    .line 440
    return-void

    .line 389
    :cond_1
    invoke-direct {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->pc()Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 398
    :cond_2
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 400
    :pswitch_1
    const v1, 0x7f0201fb

    iput v1, v0, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->color:I

    .line 401
    const v1, 0x7f0201f9

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->setIcon(I)V

    .line 402
    const v1, 0x7f0c0434

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto :goto_1

    .line 405
    :pswitch_2
    const v1, 0x7f0201fe

    iput v1, v0, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->color:I

    .line 406
    const v1, 0x7f020204

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->setIcon(I)V

    .line 407
    const v1, 0x7f0c0437

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto :goto_1

    .line 410
    :pswitch_3
    const v1, 0x7f0201fc

    iput v1, v0, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->color:I

    .line 411
    const v1, 0x7f0201fa

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->setIcon(I)V

    .line 412
    const v1, 0x7f0c0438

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto :goto_1

    .line 415
    :pswitch_4
    const v1, 0x7f020201

    iput v1, v0, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->color:I

    .line 416
    const v1, 0x7f020205

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->setIcon(I)V

    .line 417
    const v1, 0x7f0c0439

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto :goto_1

    .line 420
    :pswitch_5
    const v1, 0x7f0201fd

    iput v1, v0, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->color:I

    .line 421
    const v1, 0x7f020203

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->setIcon(I)V

    .line 422
    const v1, 0x7f0c043a

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 423
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0434
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 1

    .prologue
    .line 357
    const v0, 0x7fffffff

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 358
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 359
    return-void
.end method

.method private a(Landroid/preference/PreferenceGroup;ZI)V
    .locals 4

    .prologue
    .line 378
    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->VX:[I

    .line 379
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 380
    aget v2, v0, v1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, p3}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 378
    :cond_0
    sget-object v0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->VW:[I

    goto :goto_0

    .line 382
    :cond_1
    return-void
.end method

.method private a(Lcom/android/b/d/d;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 642
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vs:Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v0}, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;->clear()V

    move v1, v2

    .line 643
    :goto_0
    iget v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wg:I

    if-ge v1, v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wd:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;

    .line 645
    iget v3, v0, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->userHandle:I

    .line 646
    invoke-virtual {v0}, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->getTitleRes()I

    move-result v4

    .line 647
    sparse-switch v4, :sswitch_data_0

    .line 643
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 651
    :sswitch_0
    iget-object v4, p1, Lcom/android/b/d/d;->aKt:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 656
    :sswitch_1
    new-array v4, v9, [Ljava/lang/String;

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v5, v4, v2

    sget-object v5, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v5, v4, v7

    sget-object v5, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {p1, v3, v4}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/b/d/d;I[Ljava/lang/String;)J

    move-result-wide v4

    .line 659
    invoke-direct {p0, v0, v4, v5}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 662
    :sswitch_2
    new-array v4, v7, [Ljava/lang/String;

    sget-object v5, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {p1, v3, v4}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/b/d/d;I[Ljava/lang/String;)J

    move-result-wide v4

    .line 664
    invoke-direct {p0, v0, v4, v5}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 669
    :sswitch_3
    iget-object v3, p1, Lcom/android/b/d/d;->aKv:Landroid/util/SparseLongArray;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 674
    :sswitch_4
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    sget-object v5, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v5, v4, v2

    sget-object v5, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v5, v4, v7

    sget-object v5, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v5, v4, v8

    sget-object v5, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v5, v4, v9

    const/4 v5, 0x4

    sget-object v6, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {p1, v3, v4}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/b/d/d;I[Ljava/lang/String;)J

    move-result-wide v4

    .line 678
    invoke-direct {p0, v0, v4, v5}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 683
    :sswitch_5
    iget-wide v4, p1, Lcom/android/b/d/d;->cacheSize:J

    invoke-direct {p0, v0, v4, v5}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 686
    :sswitch_6
    iget-object v4, p1, Lcom/android/b/d/d;->aKw:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    .line 687
    invoke-direct {p0, v0, v4, v5}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_1

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vs:Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v0}, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;->commit()V

    .line 693
    return-void

    .line 647
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x7f0c0434 -> :sswitch_0
        0x7f0c0437 -> :sswitch_1
        0x7f0c0438 -> :sswitch_4
        0x7f0c0439 -> :sswitch_3
        0x7f0c043a -> :sswitch_5
        0x7f0c0478 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic a(Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;Lcom/android/b/d/d;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Lcom/android/b/d/d;)V

    return-void
.end method

.method private a(Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;J)V
    .locals 6

    .prologue
    .line 698
    invoke-direct {p0, p2, p3}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->h(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 699
    invoke-virtual {p1}, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->getOrder()I

    move-result v0

    .line 700
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vs:Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;

    long-to-float v2, p2

    iget-wide v4, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vx:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    iget v3, p1, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;->b(IFI)V

    .line 702
    return-void
.end method

.method private a(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .locals 2

    .prologue
    .line 705
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v1, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/os/storage/VolumeInfo;)Z
    .locals 1

    .prologue
    .line 934
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 939
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 937
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 934
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->VY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Landroid/os/storage/VolumeInfo;)Z
    .locals 1

    .prologue
    .line 92
    invoke-static {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method private bv(I)Landroid/preference/Preference;
    .locals 2

    .prologue
    .line 448
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 449
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(I)V

    .line 450
    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/StorageManager;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vr:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method private c(Landroid/preference/PreferenceGroup;)V
    .locals 3

    .prologue
    const v2, 0x7f0c1035

    .line 334
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 335
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 336
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 337
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 338
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 339
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 340
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 341
    return-void
.end method

.method private h(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/text/ExtraTextUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private pb()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 157
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vq:Landroid/os/storage/VolumeInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pc()Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;
    .locals 2

    .prologue
    .line 443
    new-instance v0, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;)V

    .line 444
    return-object v0
.end method

.method private y(Ljava/util/List;)V
    .locals 5

    .prologue
    .line 344
    const/16 v1, 0x63

    .line 345
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 346
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 348
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    const/16 v4, 0x3e7

    if-eq v3, v4, :cond_1

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, v1, :cond_0

    .line 350
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 353
    :cond_2
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-class v0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 172
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->sR:Landroid/os/UserManager;

    .line 173
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vr:Landroid/os/storage/StorageManager;

    .line 177
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.os.storage.extra.VOLUME_ID"

    const-string v3, "private"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->VY:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vr:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->VY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vq:Landroid/os/storage/VolumeInfo;

    .line 181
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vr:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->VZ:Landroid/os/storage/VolumeInfo;

    .line 183
    new-instance v0, Lcom/android/b/d/a;

    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vq:Landroid/os/storage/VolumeInfo;

    iget-object v3, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->VZ:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/b/d/a;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wa:Lcom/android/b/d/a;

    .line 184
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wa:Lcom/android/b/d/a;

    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wi:Lcom/android/b/d/g;

    invoke-virtual {v0, v2}, Lcom/android/b/d/a;->a(Lcom/android/b/d/g;)V

    .line 186
    invoke-direct {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->pb()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 206
    :goto_0
    return-void

    .line 191
    :cond_0
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->addPreferencesFromResource(I)V

    .line 192
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 194
    const-string v0, "storage_internal"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wl:Landroid/preference/PreferenceCategory;

    .line 198
    new-instance v0, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vs:Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;

    .line 199
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->sR:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wb:Landroid/content/pm/UserInfo;

    .line 201
    const v0, 0x7f0c0457

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->bv(I)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wh:Landroid/preference/Preference;

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 484
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 485
    const v0, 0x7f140007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 486
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 476
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 477
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wa:Lcom/android/b/d/a;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wa:Lcom/android/b/d/a;

    invoke-virtual {v0}, Lcom/android/b/d/a;->onDestroy()V

    .line 480
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 524
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 525
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 526
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 549
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 528
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-static {p0, v0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$RenameFragment;->b(Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)V

    move v0, v6

    .line 529
    goto :goto_0

    .line 531
    :pswitch_1
    new-instance v1, Lcom/android/vendorsettings/deviceinfo/StorageSettings$MountTask;

    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-direct {v1, v0, v2}, Lcom/android/vendorsettings/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    new-array v0, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings$MountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v6

    .line 532
    goto :goto_0

    .line 534
    :pswitch_2
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-class v0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeUnmount;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0450

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v0, v6

    .line 537
    goto :goto_0

    .line 539
    :pswitch_3
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-class v0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0451

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v0, v6

    .line 542
    goto :goto_0

    .line 544
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/vendorsettings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 545
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V

    move v0, v6

    .line 547
    goto :goto_0

    .line 526
    nop

    :pswitch_data_0
    .packed-switch 0x7f1303e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 470
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 471
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vr:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wj:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 472
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10

    .prologue
    const/4 v8, -0x1

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 556
    instance-of v0, p2, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;

    iget v0, v0, Lcom/android/vendorsettings/deviceinfo/StorageItemPreference;->userHandle:I

    move v7, v0

    .line 558
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v0

    .line 560
    sparse-switch v0, :sswitch_data_0

    .line 616
    :goto_1
    const/4 v0, 0x0

    .line 617
    if-eqz v3, :cond_2

    .line 619
    if-ne v7, v8, :cond_1

    .line 620
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v0, v9

    .line 630
    :goto_3
    return v0

    :cond_0
    move v7, v8

    .line 556
    goto :goto_0

    .line 562
    :sswitch_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 563
    const-string v0, "classname"

    const-class v1, Lcom/android/vendorsettings/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v0, "volumeUuid"

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v0, "volumeName"

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/vendorsettings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0c0b26

    const/4 v6, 0x0

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/vendorsettings/iC;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    goto :goto_1

    .line 573
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.action.BROWSE_DOCUMENT_ROOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    const-string v1, "com.android.providers.media.documents"

    const-string v2, "images_root"

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 575
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 579
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.action.BROWSE_DOCUMENT_ROOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    const-string v1, "com.android.providers.media.documents"

    const-string v2, "videos_root"

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 581
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 585
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.action.BROWSE_DOCUMENT_ROOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    const-string v1, "com.android.providers.media.documents"

    const-string v2, "audio_root"

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 587
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    :sswitch_4
    move v0, v9

    .line 594
    goto/16 :goto_3

    .line 600
    :sswitch_5
    invoke-static {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->e(Landroid/app/Fragment;)V

    move v0, v9

    .line 601
    goto/16 :goto_3

    .line 605
    :sswitch_6
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->VZ:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    goto/16 :goto_1

    .line 622
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 624
    :catch_0
    move-exception v0

    .line 625
    const-string v0, "StorageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No activity found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 630
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_3

    .line 560
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c043a -> :sswitch_5
        0x7f0c0457 -> :sswitch_6
        0x7f0c0476 -> :sswitch_0
        0x7f0c0477 -> :sswitch_1
        0x7f0c0478 -> :sswitch_2
        0x7f0c0479 -> :sswitch_3
        0x7f0c047b -> :sswitch_4
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 490
    invoke-direct {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->pb()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 492
    :cond_0
    const v0, 0x7f1303e8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 493
    const v0, 0x7f1303e9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 494
    const v0, 0x7f1303ea

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 495
    const v0, 0x7f1303eb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 496
    const v0, 0x7f1303ec

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 500
    const-string v0, "private"

    iget-object v8, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 502
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 503
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 504
    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 512
    :goto_1
    const v0, 0x7f0c0452

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 515
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 517
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    if-ne v3, v1, :cond_4

    iget-object v3, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 507
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_4
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 508
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 509
    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    move v0, v2

    .line 506
    goto :goto_3

    :cond_3
    move v0, v2

    .line 507
    goto :goto_4

    :cond_4
    move v1, v2

    .line 517
    goto :goto_2
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 455
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 458
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vr:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->VY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vq:Landroid/os/storage/VolumeInfo;

    .line 459
    invoke-direct {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->pb()Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 466
    :goto_0
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vr:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wj:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 465
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->update()V

    goto :goto_0
.end method

.method public update()V
    .locals 14

    .prologue
    const v13, 0x7f0c0dd3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 209
    invoke-direct {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->pb()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 330
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c0415

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(I)V

    .line 217
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 219
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 220
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 222
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 226
    new-instance v0, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;

    invoke-direct {v0, v8}, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vs:Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;

    .line 228
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 229
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wl:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 230
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wl:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v9, v0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 231
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wl:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vs:Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 234
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->sR:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    .line 239
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->VZ:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->VZ:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 241
    :goto_1
    iput v3, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wg:I

    .line 242
    iput v3, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wf:I

    .line 246
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "second_user_id"

    const/16 v5, -0x2710

    invoke-static {v0, v4, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 248
    invoke-direct {p0, v10}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->y(Ljava/util/List;)V

    .line 249
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    .line 250
    if-le v12, v2, :cond_2

    move v4, v2

    :goto_2
    move v7, v3

    move v6, v3

    .line 253
    :goto_3
    if-ge v7, v12, :cond_5

    .line 254
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 255
    iget-object v5, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wb:Landroid/content/pm/UserInfo;

    invoke-direct {p0, v5, v0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 260
    if-eqz v4, :cond_4

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, v11, :cond_3

    invoke-virtual {p0, v13}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-direct {p0, v9, v5}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;

    move-result-object v5

    .line 262
    :goto_5
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5, v1, v0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Landroid/preference/PreferenceGroup;ZI)V

    .line 264
    add-int/lit8 v0, v6, 0x1

    .line 253
    :goto_6
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move v6, v0

    goto :goto_3

    :cond_1
    move v1, v3

    .line 239
    goto :goto_1

    :cond_2
    move v4, v3

    .line 250
    goto :goto_2

    .line 260
    :cond_3
    iget-object v5, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iget-object v5, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wl:Landroid/preference/PreferenceCategory;

    goto :goto_5

    .line 269
    :cond_5
    sub-int v0, v12, v6

    if-lez v0, :cond_8

    .line 270
    const v0, 0x7f0c0460

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;

    move-result-object v5

    move v4, v3

    .line 272
    :goto_7
    if-ge v4, v12, :cond_8

    .line 273
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 278
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wb:Landroid/content/pm/UserInfo;

    invoke-direct {p0, v1, v0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 279
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v11, :cond_7

    invoke-virtual {p0, v13}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_8
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5, v3, v1, v0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    .line 272
    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_7

    .line 279
    :cond_7
    iget-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_8

    .line 286
    :cond_8
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vr:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 287
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 288
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vr:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v1

    .line 289
    :goto_a
    if-eqz v1, :cond_9

    .line 290
    invoke-static {v8, v0, v1}, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->a(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/DiskInfo;)Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wk:Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;

    .line 291
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wc:Ljava/util/List;

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wk:Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wk:Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;

    invoke-direct {p0, v9, v0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 293
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wk:Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;

    invoke-virtual {v0}, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->init()V

    goto :goto_9

    .line 288
    :cond_a
    const/4 v1, 0x0

    goto :goto_a

    .line 299
    :cond_b
    invoke-direct {p0, v9}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->c(Landroid/preference/PreferenceGroup;)V

    .line 309
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vq:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    .line 313
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    .line 314
    sub-long v6, v4, v0

    .line 323
    iget-object v6, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vs:Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0d50

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->h(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v3

    invoke-direct {p0, v4, v5}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->h(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 324
    iput-wide v4, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Vx:J

    .line 328
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wl:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 329
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->Wa:Lcom/android/b/d/a;

    invoke-virtual {v0}, Lcom/android/b/d/a;->Au()V

    goto/16 :goto_0

    :cond_c
    move v0, v6

    goto/16 :goto_6
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 163
    const/16 v0, 0x2a

    return v0
.end method
