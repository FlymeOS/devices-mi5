.class public Lcom/android/vendorsettings/applications/ManageApplications;
.super Lcom/android/vendorsettings/InstrumentedFragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field static final DEBUG:Z

.field public static final JT:[I

.field public static final JU:[Lcom/android/b/a/p;


# instance fields
.field private Fx:Ljava/lang/String;

.field private Gx:Lcom/android/vendorsettings/notification/NotificationBackend;

.field private HA:Lcom/android/b/a/a;

.field public HT:I

.field public HU:I

.field private HY:Landroid/view/View;

.field Hd:Ljava/lang/CharSequence;

.field private Hn:I

.field private Ht:Landroid/view/Menu;

.field private JV:Z

.field public JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

.field private JX:I

.field private JY:Z

.field private JZ:Landroid/view/View;

.field private Ka:Landroid/widget/Spinner;

.field private Kb:Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;

.field private Kc:Lcom/android/vendorsettings/applications/ResetAppsHelper;

.field private Kd:Ljava/lang/String;

.field private Ke:Ljava/lang/String;

.field private bz:Landroid/widget/ListView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListContainer:Landroid/view/View;

.field private mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v1, 0xf

    const/4 v5, 0x3

    .line 93
    const-string v0, "ManageApplications"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/vendorsettings/applications/ManageApplications;->DEBUG:Z

    .line 135
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/vendorsettings/applications/ManageApplications;->JT:[I

    .line 154
    new-array v0, v1, [Lcom/android/b/a/p;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/b/a/t;

    sget-object v3, Lcom/android/vendorsettings/applications/AppStatePowerBridge;->GF:Lcom/android/b/a/p;

    sget-object v4, Lcom/android/b/a/a;->aIy:Lcom/android/b/a/p;

    invoke-direct {v2, v3, v4}, Lcom/android/b/a/t;-><init>(Lcom/android/b/a/p;Lcom/android/b/a/p;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/b/a/t;

    sget-object v3, Lcom/android/b/a/a;->aIt:Lcom/android/b/a/p;

    sget-object v4, Lcom/android/b/a/a;->aIy:Lcom/android/b/a/p;

    invoke-direct {v2, v3, v4}, Lcom/android/b/a/t;-><init>(Lcom/android/b/a/p;Lcom/android/b/a/p;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/b/a/a;->aIz:Lcom/android/b/a/p;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/b/a/a;->aIy:Lcom/android/b/a/p;

    aput-object v1, v0, v5

    const/4 v1, 0x4

    sget-object v2, Lcom/android/b/a/a;->aIx:Lcom/android/b/a/p;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/vendorsettings/applications/AppStateNotificationBridge;->Gy:Lcom/android/b/a/p;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/vendorsettings/applications/AppStateNotificationBridge;->Gz:Lcom/android/b/a/p;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/vendorsettings/applications/AppStateNotificationBridge;->GB:Lcom/android/b/a/p;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/vendorsettings/applications/AppStateNotificationBridge;->GA:Lcom/android/b/a/p;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/b/a/a;->aIs:Lcom/android/b/a/p;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/b/a/a;->aIu:Lcom/android/b/a/p;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/b/a/a;->aIA:Lcom/android/b/a/p;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/vendorsettings/applications/AppStateUsageBridge;->GG:Lcom/android/b/a/p;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/vendorsettings/applications/AppStateOverlayBridge;->GD:Lcom/android/b/a/p;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge;->GI:Lcom/android/b/a/p;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vendorsettings/applications/ManageApplications;->JU:[Lcom/android/b/a/p;

    return-void

    .line 135
    :array_0
    .array-data 4
        0x7f0c0b37
        0x7f0c0afd
        0x7f0c0afd
        0x7f0c0afe
        0x7f0c05a4
        0x7f0c0b01
        0x7f0c0b02
        0x7f0c0b04
        0x7f0c0b03
        0x7f0c0aff
        0x7f0c0b00
        0x7f0c0b05
        0x7f0c0afd
        0x7f0c0b77
        0x7f0c0b7d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/vendorsettings/InstrumentedFragment;-><init>()V

    .line 175
    const v0, 0x7f1303df

    iput v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Hn:I

    .line 712
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JZ:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/applications/ManageApplications;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Ka:Landroid/widget/Spinner;

    return-object v0
.end method

.method private b(Ljava/lang/Class;I)V
    .locals 6

    .prologue
    .line 516
    iget-object v2, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Fx:Ljava/lang/String;

    iget v3, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JX:I

    const/4 v5, 0x1

    move-object v0, p1

    move v1, p2

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/android/vendorsettings/applications/AppInfoBase;->a(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;I)V

    .line 518
    return-void
.end method

.method static synthetic c(Lcom/android/vendorsettings/applications/ManageApplications;)Lcom/android/vendorsettings/notification/NotificationBackend;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Gx:Lcom/android/vendorsettings/notification/NotificationBackend;

    return-object v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/applications/ManageApplications;)Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JV:Z

    return v0
.end method

.method static synthetic e(Lcom/android/vendorsettings/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/android/vendorsettings/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HY:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/android/vendorsettings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Fx:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/android/vendorsettings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private jH()V
    .locals 3

    .prologue
    .line 482
    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    packed-switch v0, :pswitch_data_0

    .line 510
    const-class v0, Lcom/android/vendorsettings/applications/InstalledAppDetails;

    const v1, 0x7f0c0578

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications;->b(Ljava/lang/Class;I)V

    .line 513
    :goto_0
    return-void

    .line 484
    :pswitch_0
    const-class v0, Lcom/android/vendorsettings/notification/AppNotificationSettings;

    const v1, 0x7f0c0a5e

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications;->b(Ljava/lang/Class;I)V

    goto :goto_0

    .line 488
    :pswitch_1
    const-class v0, Lcom/android/vendorsettings/applications/AppLaunchSettings;

    const v1, 0x7f0c057a

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications;->b(Ljava/lang/Class;I)V

    goto :goto_0

    .line 491
    :pswitch_2
    const-class v0, Lcom/android/vendorsettings/applications/UsageAccessDetails;

    const v1, 0x7f0c0b27

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications;->b(Ljava/lang/Class;I)V

    goto :goto_0

    .line 494
    :pswitch_3
    const-class v0, Lcom/android/vendorsettings/applications/AppStorageSettings;

    const v1, 0x7f0c0415

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications;->b(Ljava/lang/Class;I)V

    goto :goto_0

    .line 497
    :pswitch_4
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Fx:Ljava/lang/String;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JY:Z

    invoke-static {p0, v0, v1, v2}, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->a(Landroid/app/Fragment;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 501
    :pswitch_5
    const-class v0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;

    const v1, 0x7f0c0b75

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications;->b(Ljava/lang/Class;I)V

    goto :goto_0

    .line 504
    :pswitch_6
    const-class v0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;

    const v1, 0x7f0c0b7f

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications;->b(Ljava/lang/Class;I)V

    goto :goto_0

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private kK()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 337
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 338
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v2, 0x7f1300b3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 339
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040018

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JZ:Landroid/view/View;

    .line 341
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JZ:Landroid/view/View;

    const v2, 0x7f13003a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Ka:Landroid/widget/Spinner;

    .line 342
    new-instance v1, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;-><init>(Lcom/android/vendorsettings/applications/ManageApplications;)V

    iput-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Kb:Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;

    .line 343
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Ka:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Kb:Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 344
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Ka:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 345
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JZ:Landroid/view/View;

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 347
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Kb:Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->kL()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->aQ(I)V

    .line 348
    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    if-ne v0, v3, :cond_1

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 350
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Kb:Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->aQ(I)V

    .line 351
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Kb:Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->aQ(I)V

    .line 354
    :cond_1
    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    if-ne v0, v3, :cond_2

    .line 355
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Kb:Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0, v5}, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->aQ(I)V

    .line 356
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Kb:Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->aQ(I)V

    .line 357
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Kb:Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->aQ(I)V

    .line 358
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Kb:Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->aQ(I)V

    .line 360
    :cond_2
    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    if-ne v0, v5, :cond_3

    .line 361
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Kb:Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0, v3}, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->aQ(I)V

    .line 363
    :cond_3
    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 364
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    new-instance v1, Lcom/android/b/a/y;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Kd:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/b/a/y;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->a(Lcom/android/b/a/p;)V

    .line 366
    :cond_4
    return-void
.end method

.method private kL()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    packed-switch v0, :pswitch_data_0

    .line 390
    :pswitch_0
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 380
    :pswitch_1
    const/16 v0, 0xb

    goto :goto_0

    .line 382
    :pswitch_2
    const/16 v0, 0xc

    goto :goto_0

    .line 384
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 386
    :pswitch_4
    const/16 v0, 0xd

    goto :goto_0

    .line 388
    :pswitch_5
    const/16 v0, 0xe

    goto :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public aN(I)V
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 287
    :cond_0
    return-void
.end method

.method public ar(Z)V
    .locals 2

    .prologue
    .line 621
    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 626
    :goto_0
    return-void

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Kb:Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->i(IZ)V

    .line 625
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Kb:Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->i(IZ)V

    goto :goto_0
.end method

.method public kM()V
    .locals 1

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->ke()V

    .line 614
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 615
    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 618
    :cond_0
    return-void
.end method

.method ke()V
    .locals 7

    .prologue
    const v6, 0x7f1303df

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 543
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Ht:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 557
    :goto_0
    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Ht:Landroid/view/Menu;

    const v3, 0x7f1303dc

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 548
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Ht:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Hn:I

    if-eq v0, v6, :cond_2

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 550
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Ht:Landroid/view/Menu;

    const v3, 0x7f1303e0

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    if-ne v0, v4, :cond_3

    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Hn:I

    const v4, 0x7f1303e0

    if-eq v0, v4, :cond_3

    move v0, v1

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 553
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Ht:Landroid/view/Menu;

    const v3, 0x7f1303dd

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JV:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    if-eq v0, v5, :cond_4

    move v0, v1

    :goto_4
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 555
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Ht:Landroid/view/Menu;

    const v3, 0x7f1303de

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JV:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    if-eq v3, v5, :cond_5

    :goto_5
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 546
    goto :goto_1

    :cond_2
    move v0, v2

    .line 548
    goto :goto_2

    :cond_3
    move v0, v2

    .line 550
    goto :goto_3

    :cond_4
    move v0, v2

    .line 553
    goto :goto_4

    :cond_5
    move v1, v2

    .line 555
    goto :goto_5
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 464
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Fx:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 465
    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    if-ne v0, v1, :cond_1

    .line 466
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->c(Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Fx:Ljava/lang/String;

    iget v2, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JX:I

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/applications/AppStateBaseBridge;->h(Ljava/lang/String;I)V

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 469
    :cond_2
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JY:Z

    if-eqz v0, :cond_3

    .line 470
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 472
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->c(Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/vendorsettings/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Fx:Ljava/lang/String;

    iget v2, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JX:I

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/applications/AppStateBaseBridge;->h(Ljava/lang/String;I)V

    goto :goto_0

    .line 475
    :cond_4
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HA:Lcom/android/b/a/a;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Fx:Ljava/lang/String;

    iget v2, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JX:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/b/a/a;->w(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 227
    invoke-super {p0, p1}, Lcom/android/vendorsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 228
    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 229
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/a/a;->a(Landroid/app/Application;)Lcom/android/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HA:Lcom/android/b/a/a;

    .line 231
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 232
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 233
    if-eqz v2, :cond_2

    const-string v0, "classname"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    :goto_0
    if-nez v0, :cond_0

    .line 235
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 237
    :cond_0
    const-class v1, Lcom/android/vendorsettings/Settings$AllApplicationsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 238
    iput-boolean v3, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JV:Z

    .line 270
    :goto_1
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->kL()I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HU:I

    .line 272
    if-eqz p1, :cond_1

    .line 273
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Hn:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Hn:I

    .line 274
    const-string v0, "showSystem"

    iget-boolean v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JV:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JV:Z

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c05c3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Hd:Ljava/lang/CharSequence;

    .line 279
    new-instance v0, Lcom/android/vendorsettings/applications/ResetAppsHelper;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/applications/ResetAppsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Kc:Lcom/android/vendorsettings/applications/ResetAppsHelper;

    .line 280
    return-void

    .line 233
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 239
    :cond_3
    const-class v1, Lcom/android/vendorsettings/Settings$NotificationAppListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 240
    iput v3, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    .line 241
    new-instance v0, Lcom/android/vendorsettings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/vendorsettings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Gx:Lcom/android/vendorsettings/notification/NotificationBackend;

    goto :goto_1

    .line 242
    :cond_4
    const-class v1, Lcom/android/vendorsettings/hm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 243
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    goto :goto_1

    .line 244
    :cond_5
    const-class v1, Lcom/android/vendorsettings/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 245
    if-eqz v2, :cond_6

    const-string v0, "volumeUuid"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 246
    const-string v0, "volumeUuid"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Kd:Ljava/lang/String;

    .line 247
    const-string v0, "volumeName"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Ke:Ljava/lang/String;

    .line 248
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    .line 253
    :goto_2
    const v0, 0x7f1303e0

    iput v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Hn:I

    goto/16 :goto_1

    .line 251
    :cond_6
    iput v4, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    goto :goto_2

    .line 254
    :cond_7
    const-class v1, Lcom/android/vendorsettings/Settings$UsageAccessSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 255
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    .line 256
    const v0, 0x7f0c07f7

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ManageApplications;->aN(I)V

    goto/16 :goto_1

    .line 257
    :cond_8
    const-class v1, Lcom/android/vendorsettings/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 258
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    .line 260
    iput-boolean v3, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JV:Z

    goto/16 :goto_1

    .line 261
    :cond_9
    const-class v1, Lcom/android/vendorsettings/Settings$OverlaySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 262
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    .line 263
    const v0, 0x7f0c0b70

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ManageApplications;->aN(I)V

    goto/16 :goto_1

    .line 264
    :cond_a
    const-class v1, Lcom/android/vendorsettings/Settings$WriteSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 265
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    .line 266
    const v0, 0x7f0c0b7e

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ManageApplications;->aN(I)V

    goto/16 :goto_1

    .line 268
    :cond_b
    iput v4, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    .line 522
    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 530
    :goto_0
    return-void

    .line 525
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    if-nez v0, :cond_1

    const v0, 0x7f0c09ab

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v0, v2}, Lcom/android/vendorsettings/dn;->a(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 527
    iput-object p1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Ht:Landroid/view/Menu;

    .line 528
    const v0, 0x7f140002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 529
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->ke()V

    goto :goto_0

    .line 525
    :cond_1
    const v0, 0x7f0c09aa

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 294
    iput-object p1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 296
    const v0, 0x7f0400a2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 297
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v1, 0x7f130124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HY:Landroid/view/View;

    .line 298
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HY:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v1, 0x7f130126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    .line 300
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 303
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 304
    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 307
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 308
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 309
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 310
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 311
    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->bz:Landroid/widget/ListView;

    .line 312
    new-instance v0, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HA:Lcom/android/b/a/a;

    iget v2, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HU:I

    invoke-direct {v0, v1, p0, v2}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/b/a/a;Lcom/android/vendorsettings/applications/ManageApplications;I)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    .line 313
    if-eqz p3, :cond_1

    .line 314
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    const-string v1, "hasEntries"

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->a(Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;Z)Z

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->bz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 318
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->bz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 320
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->bz:Landroid/widget/ListView;

    invoke-static {p2, v0, v1, v4}, Lcom/android/vendorsettings/iC;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 325
    :cond_2
    instance-of v0, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v0, :cond_3

    .line 326
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v3, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 329
    :cond_3
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->kK()V

    .line 331
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Kc:Lcom/android/vendorsettings/applications/ResetAppsHelper;

    invoke-virtual {v0, p3}, Lcom/android/vendorsettings/applications/ResetAppsHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 333
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Ht:Landroid/view/Menu;

    .line 540
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 454
    invoke-super {p0}, Lcom/android/vendorsettings/InstrumentedFragment;->onDestroyView()V

    .line 456
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->release()V

    .line 459
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 460
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v0

    if-le v0, p3, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->aI(I)Lcom/android/b/a/o;

    move-result-object v0

    .line 595
    iget-object v1, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Fx:Ljava/lang/String;

    .line 596
    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JX:I

    .line 597
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->jH()V

    .line 599
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Kb:Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0, p3}, Lcom/android/vendorsettings/applications/ManageApplications$FilterSpinnerAdapter;->aP(I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HU:I

    .line 604
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HU:I

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->aO(I)V

    .line 605
    sget-boolean v0, Lcom/android/vendorsettings/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selecting filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HU:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 610
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 561
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 562
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v7, v1

    .line 588
    :goto_0
    return v7

    .line 565
    :pswitch_0
    iput v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Hn:I

    .line 566
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Hn:I

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->aH(I)V

    .line 587
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->ke()V

    goto :goto_0

    .line 572
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JV:Z

    if-nez v0, :cond_1

    move v0, v7

    :goto_2
    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JV:Z

    .line 573
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->ak(Z)V

    goto :goto_1

    :cond_1
    move v0, v1

    .line 572
    goto :goto_2

    .line 576
    :pswitch_2
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Kc:Lcom/android/vendorsettings/applications/ResetAppsHelper;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/ResetAppsHelper;->kg()V

    goto :goto_0

    .line 579
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/hn;

    const-class v1, Lcom/android/vendorsettings/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0b08

    const/4 v6, 0x2

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 562
    :pswitch_data_0
    .packed-switch 0x7f1303dc
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 440
    invoke-super {p0}, Lcom/android/vendorsettings/InstrumentedFragment;->onPause()V

    .line 441
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 444
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->ke()V

    .line 535
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 420
    invoke-super {p0}, Lcom/android/vendorsettings/InstrumentedFragment;->onResume()V

    .line 421
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->kM()V

    .line 422
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->ke()V

    .line 423
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Hn:I

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 425
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->a(Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;)V

    .line 427
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 431
    invoke-super {p0, p1}, Lcom/android/vendorsettings/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 432
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Kc:Lcom/android/vendorsettings/applications/ResetAppsHelper;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/applications/ResetAppsHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 433
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Hn:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 434
    const-string v0, "showSystem"

    iget-boolean v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JV:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 435
    const-string v0, "hasEntries"

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->JW:Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;->b(Lcom/android/vendorsettings/applications/ManageApplications$ApplicationsAdapter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 436
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 448
    invoke-super {p0}, Lcom/android/vendorsettings/InstrumentedFragment;->onStop()V

    .line 449
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Kc:Lcom/android/vendorsettings/applications/ResetAppsHelper;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/ResetAppsHelper;->stop()V

    .line 450
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 370
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 371
    iget v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v1, 0x7f1300b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 373
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/applications/ManageApplications;->Ke:Ljava/lang/String;

    invoke-static {v1, v3, v2, v3, v0}, Lcom/android/vendorsettings/A;->a(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/view/ViewGroup;)V

    .line 375
    :cond_0
    return-void
.end method

.method protected z()I
    .locals 2

    .prologue
    const/16 v0, 0xdd

    .line 396
    iget v1, p0, Lcom/android/vendorsettings/applications/ManageApplications;->HT:I

    packed-switch v1, :pswitch_data_0

    .line 414
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 398
    :pswitch_1
    const/16 v0, 0x41

    goto :goto_0

    .line 400
    :pswitch_2
    const/16 v0, 0x85

    goto :goto_0

    .line 402
    :pswitch_3
    const/16 v0, 0x8f

    goto :goto_0

    .line 404
    :pswitch_4
    const/16 v0, 0xb6

    goto :goto_0

    .line 406
    :pswitch_5
    const/16 v0, 0x5f

    goto :goto_0

    .line 408
    :pswitch_6
    const/16 v0, 0xb8

    goto :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
