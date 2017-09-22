.class public Lcom/android/vendorsettings/wfd/WifiDisplaySettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "WifiDisplaySettings.java"


# instance fields
.field private Cm:Landroid/widget/TextView;

.field private final Cy:Ljava/lang/Runnable;

.field private awk:Landroid/media/MediaRouter;

.field private awl:I

.field protected awm:Z

.field private awn:Landroid/hardware/display/WifiDisplayStatus;

.field private awo:Z

.field private awp:Landroid/net/wifi/p2p/WifiP2pManager;

.field private awq:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private awr:Landroid/preference/PreferenceGroup;

.field private aws:Z

.field private awt:Z

.field private awu:I

.field private awv:I

.field private aww:I

.field private final awx:Landroid/media/MediaRouter$Callback;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStarted:Z

.field private final wd:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 118
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awu:I

    .line 622
    new-instance v0, Lcom/android/vendorsettings/wfd/i;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/wfd/i;-><init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->Cy:Ljava/lang/Runnable;

    .line 631
    new-instance v0, Lcom/android/vendorsettings/wfd/j;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/wfd/j;-><init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 641
    new-instance v0, Lcom/android/vendorsettings/wfd/k;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/wfd/k;-><init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->wd:Landroid/database/ContentObserver;

    .line 648
    new-instance v0, Lcom/android/vendorsettings/wfd/l;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/wfd/l;-><init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awx:Landroid/media/MediaRouter$Callback;

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    .line 124
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;I)I
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awu:I

    return p1
.end method

.method static synthetic a(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method private a(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/vendorsettings/wfd/u;
    .locals 3

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->bV(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .line 319
    if-eqz v1, :cond_0

    .line 320
    new-instance v0, Lcom/android/vendorsettings/wfd/w;

    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/android/vendorsettings/wfd/w;-><init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;)V

    .line 322
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/vendorsettings/wfd/u;

    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/vendorsettings/wfd/u;-><init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method private a(Landroid/hardware/display/WifiDisplay;)V
    .locals 2

    .prologue
    .line 585
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    .line 588
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;II)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->v(II)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->b(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->b(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->aws:Z

    return p1
.end method

.method static synthetic b(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;I)I
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awv:I

    return p1
.end method

.method private b(Landroid/hardware/display/WifiDisplay;)V
    .locals 5

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04019e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 592
    const v0, 0x7f130054

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 593
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 595
    new-instance v2, Lcom/android/vendorsettings/wfd/g;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/vendorsettings/wfd/g;-><init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V

    .line 605
    new-instance v0, Lcom/android/vendorsettings/wfd/h;

    invoke-direct {v0, p0, p1}, Lcom/android/vendorsettings/wfd/h;-><init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 612
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c02b2

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0c02b4

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c02b3

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 619
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 620
    return-void
.end method

.method private b(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3

    .prologue
    .line 576
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/MediaRouteDialogPresenter;->showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;

    .line 582
    :goto_0
    return-void

    .line 580
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->select()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->a(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Z)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->bq(Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->aws:Z

    return v0
.end method

.method private bV(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .locals 5

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awn:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 328
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awn:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 329
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 334
    :goto_1
    return-object v0

    .line 328
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 334
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private bq(Z)V
    .locals 3

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awp:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awq:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/vendorsettings/wfd/t;

    invoke-direct {v2, p0, p1}, Lcom/android/vendorsettings/wfd/t;-><init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Z)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->listen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 553
    return-void
.end method

.method static synthetic c(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;I)I
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->aww:I

    return p1
.end method

.method static synthetic c(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awt:Z

    return v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awt:Z

    return p1
.end method

.method static synthetic d(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;I)I
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awl:I

    return p1
.end method

.method private d(Landroid/preference/PreferenceScreen;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 338
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awr:Landroid/preference/PreferenceGroup;

    if-nez v0, :cond_1

    .line 339
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awr:Landroid/preference/PreferenceGroup;

    .line 340
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awr:Landroid/preference/PreferenceGroup;

    const v1, 0x7f0c02b6

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 341
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awr:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->setOrder(I)V

    .line 345
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awr:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 348
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awn:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 350
    const v1, 0x7f0c02b7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 351
    iget-object v1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awn:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awr:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 355
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awn:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;->getSessionId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awr:Landroid/preference/PreferenceGroup;

    new-instance v1, Lcom/android/vendorsettings/wfd/c;

    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/vendorsettings/wfd/c;-><init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 393
    :cond_0
    new-instance v0, Lcom/android/vendorsettings/wfd/m;

    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/wfd/m;-><init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 401
    const v1, 0x7f0c02b8

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 402
    iget-boolean v1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->aws:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 403
    iget-object v1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awr:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 406
    new-instance v0, Lcom/android/vendorsettings/wfd/n;

    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/wfd/n;-><init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 418
    const v1, 0x7f0c02b9

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 419
    iget-boolean v1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awt:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 420
    iget-object v1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awr:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 423
    new-instance v0, Lcom/android/vendorsettings/wfd/o;

    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/wfd/o;-><init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 436
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_wps_config"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awu:I

    .line 438
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "Default"

    aput-object v2, v1, v6

    const-string v2, "PBC"

    aput-object v2, v1, v4

    const-string v2, "KEYPAD"

    aput-object v2, v1, v7

    const-string v2, "DISPLAY"

    aput-object v2, v1, v8

    .line 439
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "4"

    aput-object v3, v2, v6

    const-string v3, "0"

    aput-object v3, v2, v4

    const-string v3, "2"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    .line 444
    const v3, 0x7f0c02bc

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 445
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 446
    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awu:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 448
    const-string v1, "%1$s"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awr:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 452
    new-instance v0, Lcom/android/vendorsettings/wfd/p;

    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/wfd/p;-><init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 464
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "Auto"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v4

    const-string v2, "6"

    aput-object v2, v1, v7

    const-string v2, "11"

    aput-object v2, v1, v8

    .line 465
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v4

    const-string v3, "6"

    aput-object v3, v2, v7

    const-string v3, "11"

    aput-object v3, v2, v8

    .line 466
    const v3, 0x7f0c02bd

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 467
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 468
    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awv:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 470
    const-string v1, "%1$s"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awr:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 474
    new-instance v0, Lcom/android/vendorsettings/wfd/q;

    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/wfd/q;-><init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 486
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Auto"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v4

    const-string v2, "6"

    aput-object v2, v1, v7

    const-string v2, "11"

    aput-object v2, v1, v8

    const-string v2, "36"

    aput-object v2, v1, v5

    .line 487
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v4

    const-string v3, "6"

    aput-object v3, v2, v7

    const-string v3, "11"

    aput-object v3, v2, v8

    const-string v3, "36"

    aput-object v3, v2, v5

    .line 488
    const v3, 0x7f0c02be

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 489
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 490
    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->aww:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 492
    const-string v1, "%1$s"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awr:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 494
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awr:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->vX()V

    return-void
.end method

.method private dk(I)V
    .locals 2

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->mStarted:Z

    if-eqz v0, :cond_1

    .line 231
    iget v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awl:I

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->Cy:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 234
    :cond_0
    iget v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awl:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awl:I

    .line 236
    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->vY()V

    return-void
.end method

.method static synthetic e(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;I)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->update(I)V

    return-void
.end method

.method static synthetic f(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awu:I

    return v0
.end method

.method static synthetic f(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;I)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->dk(I)V

    return-void
.end method

.method static synthetic g(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awv:I

    return v0
.end method

.method static synthetic h(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->aww:I

    return v0
.end method

.method static synthetic i(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awl:I

    return v0
.end method

.method private update(I)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 246
    .line 249
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_a

    .line 250
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_display_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awm:Z

    .line 252
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_display_certification_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awo:Z

    .line 254
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_display_wps_config"

    invoke-static {v0, v3, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awu:I

    move v0, v1

    .line 262
    :goto_2
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awn:Landroid/hardware/display/WifiDisplayStatus;

    move v0, v1

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 271
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 273
    const v3, 0x7f0800c1

    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->addPreferencesFromResource(I)V

    .line 276
    iget-object v3, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awk:Landroid/media/MediaRouter;

    invoke-virtual {v3}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v5

    move v3, v2

    .line 277
    :goto_3
    if-ge v3, v5, :cond_4

    .line 278
    iget-object v6, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awk:Landroid/media/MediaRouter;

    invoke-virtual {v6, v3}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v6

    .line 279
    invoke-virtual {v6, v8}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 280
    invoke-direct {p0, v6}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->a(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/vendorsettings/wfd/u;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 277
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    move v0, v2

    .line 250
    goto :goto_0

    :cond_3
    move v0, v2

    .line 252
    goto :goto_1

    .line 285
    :cond_4
    iget-object v3, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awn:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awn:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_7

    .line 288
    iget-object v3, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awn:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    array-length v5, v3

    :goto_4
    if-ge v2, v5, :cond_6

    aget-object v6, v3, v2

    .line 289
    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awn:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 291
    new-instance v7, Lcom/android/vendorsettings/wfd/v;

    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, p0, v8, v6}, Lcom/android/vendorsettings/wfd/v;-><init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 288
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 297
    :cond_6
    iget-boolean v2, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awo:Z

    if-eqz v2, :cond_7

    .line 298
    invoke-direct {p0, v4}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->d(Landroid/preference/PreferenceScreen;)V

    .line 303
    :cond_7
    if-eqz v0, :cond_8

    .line 304
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 307
    :cond_8
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-le v0, v1, :cond_9

    .line 308
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 309
    const/16 v1, -0x63

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 310
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 312
    :cond_9
    const-string v0, "enable_wifi_display"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awm:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 314
    return-void

    :cond_a
    move v0, v2

    goto/16 :goto_2
.end method

.method private v(II)V
    .locals 3

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awp:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awq:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/vendorsettings/wfd/f;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/wfd/f;-><init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 573
    return-void
.end method

.method private vW()V
    .locals 2

    .prologue
    .line 239
    iget v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awl:I

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awl:I

    .line 241
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->Cy:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    :cond_0
    return-void
.end method

.method private vX()V
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awp:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awq:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/vendorsettings/wfd/r;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/wfd/r;-><init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 513
    return-void
.end method

.method private vY()V
    .locals 3

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awp:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awq:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/vendorsettings/wfd/s;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/wfd/s;-><init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 532
    return-void
.end method


# virtual methods
.method protected ay()I
    .locals 1

    .prologue
    .line 152
    const v0, 0x7f0c09c0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-class v0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->Cm:Landroid/widget/TextView;

    .line 160
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->Cm:Landroid/widget/TextView;

    const v1, 0x7f0c02ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->Cm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 162
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 141
    const-string v0, "media_router"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awk:Landroid/media/MediaRouter;

    .line 142
    const-string v0, "display"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 143
    const-string v0, "wifip2p"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awp:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 144
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awp:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awq:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 146
    const v0, 0x7f0800c1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->addPreferencesFromResource(I)V

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->setHasOptionsMenu(Z)V

    .line 148
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 218
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 226
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 220
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awm:Z

    .line 221
    iget-boolean v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awm:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 222
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_display_on"

    iget-boolean v4, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awm:Z

    if-eqz v4, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    move v0, v2

    .line 220
    goto :goto_1

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onStart()V

    .line 167
    iput-boolean v4, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 169
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 170
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 171
    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->wd:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_certification_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->wd:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_wps_config"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->wd:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 181
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awk:Landroid/media/MediaRouter;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awx:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 184
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->update(I)V

    .line 185
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onStop()V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 192
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->wd:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 197
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awk:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->awx:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 199
    invoke-direct {p0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->vW()V

    .line 200
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 133
    const/16 v0, 0x66

    return v0
.end method
