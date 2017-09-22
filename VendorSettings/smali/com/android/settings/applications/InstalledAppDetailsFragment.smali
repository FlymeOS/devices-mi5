.class public Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "InstalledAppDetailsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/b/a/s;


# instance fields
.field private EV:Lcom/android/b/a/w;

.field private Fh:Lcom/android/b/a/a;

.field private Fi:Lcom/android/b/a/o;

.field private Fj:Landroid/content/pm/PackageInfo;

.field private Fk:Landroid/hardware/usb/IUsbManager;

.field private GT:Z

.field private GU:Z

.field private GV:J

.field private GW:J

.field private GX:J

.field private GY:J

.field private GZ:J

.field private Ha:J

.field private Hd:Ljava/lang/CharSequence;

.field private He:Ljava/lang/CharSequence;

.field private final IP:Landroid/content/BroadcastReceiver;

.field private IS:Lcom/android/vendorsettings/applications/AppInfoPreference;

.field private IT:Lmiui/preference/ValuePreference;

.field private IU:Lmiui/preference/ValuePreference;

.field private IV:Lmiui/preference/ValuePreference;

.field private IW:Lmiui/preference/ValuePreference;

.field private IX:Lmiui/preference/ValuePreference;

.field private IY:Lmiui/preference/ValuePreference;

.field private IZ:Lmiui/preference/ButtonPreference;

.field private Iz:Z

.field private Ja:Lmiui/preference/ButtonPreference;

.field private Jb:Lmiui/preference/ValuePreference;

.field private Jc:Landroid/preference/CheckBoxPreference;

.field private Jd:Landroid/preference/Preference;

.field private Je:Landroid/preference/Preference;

.field private Jf:Landroid/preference/Preference;

.field private Jg:Landroid/preference/Preference;

.field private Jh:Landroid/content/pm/IPackageManager;

.field private Ji:Z

.field private Jj:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

.field private Jk:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

.field private Jl:Z

.field private Jm:Landroid/view/MenuItem;

.field private Jn:Landroid/view/MenuItem;

.field private Jo:Z

.field private Jp:Z

.field private Jq:I

.field private Jr:I

.field private Js:Ljava/util/HashSet;

.field private S:Landroid/appwidget/AppWidgetManager;

.field private cu:Lcom/android/vendorsettings/a/a;

.field private jd:Landroid/app/admin/DevicePolicyManager;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mHandler:Landroid/os/Handler;

.field mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    .line 76
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 134
    iput-boolean v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Ji:Z

    .line 135
    iput-boolean v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Iz:Z

    .line 138
    iput-boolean v3, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GT:Z

    .line 141
    iput-boolean v3, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jl:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jo:Z

    .line 146
    iput-boolean v3, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jp:Z

    .line 150
    iput-boolean v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GU:Z

    .line 151
    iput-wide v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GV:J

    .line 152
    iput-wide v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GW:J

    .line 153
    iput-wide v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GX:J

    .line 154
    iput-wide v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GY:J

    .line 155
    iput-wide v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GZ:J

    .line 156
    iput-wide v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Ha:J

    .line 193
    new-instance v0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$1;-><init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mHandler:Landroid/os/Handler;

    .line 1229
    new-instance v0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$2;-><init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IP:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)Lcom/android/b/a/o;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->aK(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jd:Landroid/preference/Preference;

    const v1, 0x7f0c0591

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 676
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jd:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 677
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->l(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;ZZ)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->c(ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;Z)Z
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jl:Z

    return p1
.end method

.method private aK(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1069
    packed-switch p1, :pswitch_data_0

    .line 1083
    const-string v0, ""

    :goto_0
    return-object v0

    .line 1071
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c05ca

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1073
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c05cb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1075
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c05cc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1077
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c05cd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1079
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c05ce

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1081
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 1069
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private an(Z)V
    .locals 2

    .prologue
    .line 1237
    iput-boolean p1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jo:Z

    .line 1238
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jm:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jm:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jo:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1241
    :cond_0
    return-void
.end method

.method private ao(Z)V
    .locals 5

    .prologue
    .line 1087
    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x18

    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 1089
    return-void

    .line 1087
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private ap(Z)V
    .locals 2

    .prologue
    .line 1323
    if-eqz p1, :cond_0

    const-string v0, "com.jeejen.family.miui"

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->cu:Lcom/android/vendorsettings/a/a;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/a/a;->aR(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_2

    const-string v0, "com.amazon.appmanager"

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1326
    :cond_1
    const/4 p1, 0x0

    .line 1329
    :cond_2
    iput-boolean p1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jp:Z

    .line 1331
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jn:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    .line 1332
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jn:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1333
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jn:Landroid/view/MenuItem;

    iget v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jq:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1334
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jn:Landroid/view/MenuItem;

    iget v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jr:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1336
    :cond_3
    return-void
.end method

.method private ap(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 645
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return v0

    .line 649
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jh:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    const/16 v3, 0x3e7

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 651
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 652
    :catch_0
    move-exception v1

    .line 654
    const-string v1, "InstalledAppDetails"

    const-string v2, "Can\'t talk packageManager."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)Lcom/android/b/a/a;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fh:Lcom/android/b/a/a;

    return-object v0
.end method

.method private b(Landroid/content/pm/PackageInfo;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 494
    .line 495
    const/4 v0, 0x0

    .line 496
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0c05c5

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 501
    :goto_0
    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IS:Lcom/android/vendorsettings/applications/AppInfoPreference;

    new-instance v3, Lcom/android/vendorsettings/applications/AppInfoPreference$AppInfo;

    iget-object v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/b/a/o;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v5, v5, Lcom/android/b/a/o;->label:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/android/vendorsettings/applications/AppInfoPreference$AppInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/android/vendorsettings/applications/AppInfoPreference;->a(Lcom/android/vendorsettings/applications/AppInfoPreference$AppInfo;)V

    .line 502
    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private b(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 525
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 526
    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 527
    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IZ:Lmiui/preference/ButtonPreference;

    const v3, 0x7f0c058d

    invoke-virtual {v2, v3}, Lmiui/preference/ButtonPreference;->setText(I)V

    .line 528
    if-ne v0, v4, :cond_1

    .line 529
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleared user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fh:Lcom/android/b/a/a;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/b/a/a;->w(Ljava/lang/String;I)V

    .line 535
    :goto_0
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->kC()V

    .line 537
    const-string v0, "com.android.settings"

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->forceStopPackage(Ljava/lang/String;)V

    .line 541
    :cond_0
    return-void

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IZ:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v4}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->c(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;Z)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->ao(Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->ap(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 505
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 506
    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 508
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Ji:Z

    .line 509
    const/16 v2, -0x64

    if-ne v0, v2, :cond_0

    .line 510
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moved resources for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fh:Lcom/android/b/a/a;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/b/a/a;->w(Ljava/lang/String;I)V

    .line 517
    :goto_0
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->jF()Z

    .line 518
    return-void

    .line 515
    :cond_0
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->e(II)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;Z)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->an(Z)V

    return-void
.end method

.method private c(ZZ)V
    .locals 3

    .prologue
    .line 668
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 669
    const-string v1, "chg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 670
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, p0, v2, v0}, Lcom/android/vendorsettings/fy;->a(Landroid/app/Activity;Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 671
    return-void
.end method

.method static synthetic d(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)Landroid/content/pm/IPackageManager;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jh:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic e(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jc:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private e(II)V
    .locals 4

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    if-nez v0, :cond_0

    .line 550
    :goto_0
    return-void

    .line 547
    :cond_0
    invoke-static {p1, p2}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->h(II)Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    move-result-object v0

    .line 548
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 549
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->kb()V

    return-void
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1054
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1058
    iget v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 1060
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fh:Lcom/android/b/a/a;

    iget v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/b/a/a;->A(Ljava/lang/String;I)V

    .line 1061
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fh:Lcom/android/b/a/a;

    iget v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/b/a/a;->u(Ljava/lang/String;I)Lcom/android/b/a/o;

    move-result-object v0

    .line 1062
    if-eqz v0, :cond_0

    .line 1063
    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    .line 1065
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->kC()V

    .line 1066
    return-void
.end method

.method static synthetic g(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)Lmiui/preference/ButtonPreference;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IZ:Lmiui/preference/ButtonPreference;

    return-object v0
.end method

.method private jF()Z
    .locals 12

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 375
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Ji:Z

    if-eqz v0, :cond_1

    move v2, v3

    .line 489
    :cond_0
    :goto_0
    return v2

    .line 378
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    .line 380
    if-eqz v5, :cond_4

    const-string v0, "package"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    :goto_1
    if-nez v0, :cond_13

    .line 382
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 383
    if-eqz v4, :cond_12

    .line 384
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 387
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 388
    const-string v0, "package"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    :cond_2
    const-string v6, "is_xspace_app"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 393
    :goto_3
    if-eqz v5, :cond_11

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 394
    const-string v0, "intent"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 395
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object v11, v0

    move v0, v4

    move-object v4, v11

    .line 399
    :goto_5
    if-eqz v0, :cond_7

    const/16 v0, 0x3e7

    :goto_6
    iput v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mUserId:I

    .line 400
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fh:Lcom/android/b/a/a;

    iget v5, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {v0, v4, v5}, Lcom/android/b/a/a;->u(Ljava/lang/String;I)Lcom/android/b/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    .line 402
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    if-eqz v0, :cond_0

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jh:Landroid/content/pm/IPackageManager;

    iget-object v5, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v5, v5, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x2240

    iget v7, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-interface {v0, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fj:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fj:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    .line 424
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 429
    :try_start_1
    iget-object v6, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jh:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v0, v5, v4}, Landroid/content/pm/IPackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 439
    :try_start_2
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fk:Landroid/hardware/usb/IUsbManager;

    iget v6, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-interface {v0, v4, v6}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 443
    :goto_7
    iget-object v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->S:Landroid/appwidget/AppWidgetManager;

    iget-object v6, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v6, v6, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v6

    .line 446
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_3

    if-eqz v0, :cond_8

    :cond_3
    move v4, v3

    .line 447
    :goto_8
    if-nez v4, :cond_9

    if-nez v6, :cond_9

    .line 448
    invoke-direct {p0, v1, v1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->a(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 483
    :goto_9
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->kC()V

    .line 484
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fj:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->b(Landroid/content/pm/PackageInfo;)V

    .line 485
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->jY()V

    .line 486
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->jX()V

    .line 487
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->kE()V

    move v2, v3

    .line 489
    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    .line 380
    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    .line 384
    goto/16 :goto_2

    :cond_6
    move-object v0, v1

    .line 395
    goto :goto_4

    .line 399
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    goto :goto_6

    .line 413
    :catch_0
    move-exception v0

    .line 414
    const-string v1, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when retrieving package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v4, v4, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 430
    :catch_1
    move-exception v0

    .line 431
    const-string v1, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when getPreferredActivities for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v4, v4, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 440
    :catch_2
    move-exception v0

    .line 441
    const-string v4, "InstalledAppDetails"

    const-string v6, "mUsbManager.hasDefaults"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto/16 :goto_7

    :cond_8
    move v4, v2

    .line 446
    goto :goto_8

    .line 450
    :cond_9
    if-eqz v6, :cond_d

    if-eqz v4, :cond_d

    move v0, v3

    .line 453
    :goto_a
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b0052

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 455
    if-eqz v4, :cond_b

    .line 456
    const v4, 0x7f0c058f

    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 457
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 458
    if-eqz v0, :cond_a

    .line 459
    new-instance v8, Landroid/text/style/BulletSpan;

    invoke-direct {v8, v5}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v7, v8, v2, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 461
    :cond_a
    if-nez v1, :cond_e

    new-array v1, v9, [Ljava/lang/CharSequence;

    aput-object v7, v1, v2

    const-string v4, "\n"

    aput-object v4, v1, v3

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 464
    :cond_b
    :goto_b
    if-eqz v6, :cond_10

    .line 465
    const v4, 0x7f0c0590

    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 467
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 468
    if-eqz v0, :cond_c

    .line 469
    new-instance v0, Landroid/text/style/BulletSpan;

    invoke-direct {v0, v5}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v6, v0, v2, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 472
    :cond_c
    if-nez v1, :cond_f

    new-array v0, v9, [Ljava/lang/CharSequence;

    aput-object v6, v0, v2

    const-string v1, "\n"

    aput-object v1, v0, v3

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 475
    :goto_c
    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jd:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jd:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 477
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jd:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_9

    :cond_d
    move v0, v2

    .line 450
    goto :goto_a

    .line 461
    :cond_e
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v1, v4, v2

    const-string v1, "\n"

    aput-object v1, v4, v3

    aput-object v7, v4, v9

    const-string v1, "\n"

    aput-object v1, v4, v10

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_b

    .line 472
    :cond_f
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object v1, v0, v2

    const-string v1, "\n"

    aput-object v1, v0, v3

    aput-object v6, v0, v9

    const-string v1, "\n"

    aput-object v1, v0, v10

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    :cond_10
    move-object v0, v1

    goto :goto_c

    :cond_11
    move-object v11, v0

    move v0, v4

    move-object v4, v11

    goto/16 :goto_5

    :cond_12
    move v4, v2

    goto/16 :goto_3

    :cond_13
    move-object v4, v0

    move v0, v2

    goto/16 :goto_5
.end method

.method private jX()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v4, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 766
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-wide v0, v0, Lcom/android/b/a/o;->size:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-wide v0, v0, Lcom/android/b/a/o;->size:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 768
    :cond_0
    iput-wide v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Ha:J

    iput-wide v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GZ:J

    iput-wide v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GW:J

    iput-wide v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GV:J

    .line 769
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GU:Z

    if-nez v0, :cond_1

    .line 770
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IU:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->He:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IW:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->He:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IY:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->He:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IT:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->He:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IZ:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v6}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    .line 776
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Ja:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v6}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    .line 825
    :goto_0
    return-void

    .line 779
    :cond_2
    iput-boolean v7, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GU:Z

    .line 780
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-wide v2, v0, Lcom/android/b/a/o;->codeSize:J

    .line 781
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-wide v0, v0, Lcom/android/b/a/o;->dataSize:J

    .line 782
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 783
    iget-object v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-wide v4, v4, Lcom/android/b/a/o;->externalCodeSize:J

    add-long/2addr v2, v4

    .line 784
    iget-object v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-wide v4, v4, Lcom/android/b/a/o;->externalDataSize:J

    add-long/2addr v0, v4

    .line 786
    :cond_3
    iget-wide v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GV:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_4

    .line 787
    iput-wide v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GV:J

    .line 788
    iget-object v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IU:Lmiui/preference/ValuePreference;

    invoke-direct {p0, v2, v3}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->n(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 790
    :cond_4
    iget-wide v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GW:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_5

    .line 791
    iput-wide v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GW:J

    .line 792
    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IW:Lmiui/preference/ValuePreference;

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->n(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 794
    :cond_5
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GX:J

    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-wide v2, v2, Lcom/android/b/a/o;->externalCodeSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 795
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-wide v0, v0, Lcom/android/b/a/o;->externalCodeSize:J

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GX:J

    .line 796
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IV:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-wide v2, v1, Lcom/android/b/a/o;->externalCodeSize:J

    invoke-direct {p0, v2, v3}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->n(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 799
    :cond_6
    iget-wide v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GY:J

    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-wide v2, v2, Lcom/android/b/a/o;->externalDataSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 800
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-wide v0, v0, Lcom/android/b/a/o;->externalDataSize:J

    iput-wide v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GY:J

    .line 801
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IX:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-wide v2, v1, Lcom/android/b/a/o;->externalDataSize:J

    invoke-direct {p0, v2, v3}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->n(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 803
    :cond_7
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-wide v0, v0, Lcom/android/b/a/o;->cacheSize:J

    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-wide v2, v2, Lcom/android/b/a/o;->externalCacheSize:J

    add-long/2addr v0, v2

    .line 804
    iget-wide v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GZ:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_8

    .line 805
    iput-wide v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GZ:J

    .line 806
    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IY:Lmiui/preference/ValuePreference;

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->n(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 808
    :cond_8
    iget-wide v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Ha:J

    iget-object v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-wide v4, v4, Lcom/android/b/a/o;->size:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    .line 809
    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-wide v2, v2, Lcom/android/b/a/o;->size:J

    iput-wide v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Ha:J

    .line 810
    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IT:Lmiui/preference/ValuePreference;

    iget-object v3, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-wide v4, v3, Lcom/android/b/a/o;->size:J

    invoke-direct {p0, v4, v5}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->n(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 813
    :cond_9
    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-wide v2, v2, Lcom/android/b/a/o;->dataSize:J

    iget-object v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-wide v4, v4, Lcom/android/b/a/o;->externalDataSize:J

    add-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-lez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GT:Z

    if-nez v2, :cond_b

    .line 814
    :cond_a
    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IZ:Lmiui/preference/ButtonPreference;

    invoke-virtual {v2, v6}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    .line 818
    :goto_1
    cmp-long v0, v0, v8

    if-gtz v0, :cond_c

    .line 819
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Ja:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v6}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 816
    :cond_b
    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IZ:Lmiui/preference/ButtonPreference;

    invoke-virtual {v2, v7}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    goto :goto_1

    .line 821
    :cond_c
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Ja:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v7}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    .line 822
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Ja:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0
.end method

.method private jY()V
    .locals 1

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Ji:Z

    if-nez v0, :cond_0

    .line 681
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->ky()V

    .line 682
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->jZ()V

    .line 683
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->kF()V

    .line 684
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->kG()V

    .line 688
    :goto_0
    return-void

    .line 686
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->ap(Z)V

    goto :goto_0
.end method

.method private jZ()V
    .locals 4

    .prologue
    const v3, 0x7f0c058d

    const/4 v2, 0x0

    .line 733
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->jd:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IZ:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ButtonPreference;->setText(I)V

    .line 738
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IZ:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    .line 739
    iput-boolean v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->GT:Z

    .line 748
    :goto_0
    return-void

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 742
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IZ:Lmiui/preference/ButtonPreference;

    const v1, 0x7f0c05a0

    invoke-virtual {v0, v1}, Lmiui/preference/ButtonPreference;->setText(I)V

    .line 746
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IZ:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 744
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IZ:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ButtonPreference;->setText(I)V

    goto :goto_1
.end method

.method private kC()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1244
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->jd:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android"

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.miui"

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->cu:Lcom/android/vendorsettings/a/a;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/a/a;->aR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1249
    :cond_0
    invoke-direct {p0, v6}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->an(Z)V

    .line 1268
    :cond_1
    :goto_0
    return-void

    .line 1250
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 1253
    invoke-direct {p0, v5}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->an(Z)V

    goto :goto_0

    .line 1255
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v2, "package"

    iget-object v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v4, v4, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1257
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v4, v4, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1258
    const-string v0, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v2, v2, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1259
    const-string v0, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v2, v2, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1260
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1264
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IP:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private kE()V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fj:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 696
    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jf:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private kF()V
    .locals 3

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jb:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 704
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v2, v2, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v1, v2}, Lcom/android/vendorsettings/NotificationAppListSettings;->c(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 707
    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jb:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jb:Lmiui/preference/ValuePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 709
    return-void
.end method

.method private kG()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 712
    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jc:Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 716
    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    if-eqz v2, :cond_0

    .line 717
    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v2, v2, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_5

    .line 718
    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 719
    iget-boolean v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jl:Z

    if-eqz v2, :cond_3

    .line 720
    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v3, 0x18

    iget-object v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v4, v4, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v5, v5, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 722
    :cond_2
    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 724
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 728
    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jl:Z

    goto :goto_0

    .line 725
    :cond_5
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jl:Z

    if-eqz v0, :cond_4

    .line 726
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method private kH()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 752
    const-string v1, "com.android.documentsui"

    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 761
    :cond_0
    :goto_0
    return v0

    .line 756
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jh:Landroid/content/pm/IPackageManager;

    const-string v2, "android"

    const/16 v3, 0x40

    iget v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 757
    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fj:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Js:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 760
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private kb()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1034
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IZ:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v6}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    .line 1036
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1037
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jj:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    if-nez v0, :cond_0

    .line 1039
    new-instance v0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;-><init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jj:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    .line 1042
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jj:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    iget v3, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    .line 1043
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IZ:Lmiui/preference/ButtonPreference;

    const v2, 0x7f0c05ae

    invoke-virtual {v0, v2}, Lmiui/preference/ButtonPreference;->setText(I)V

    .line 1044
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x2718

    iget-object v3, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v3, v3, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v4, v4, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    :goto_0
    return-void

    .line 1046
    :catch_0
    move-exception v0

    .line 1048
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldnt clear application user data for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1049
    const/4 v0, 0x4

    invoke-direct {p0, v0, v6}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->e(II)V

    goto :goto_0
.end method

.method private ky()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1271
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Iz:Z

    .line 1274
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Iz:Z

    if-eqz v0, :cond_1

    .line 1276
    const v0, 0x7f0c058e

    iput v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jq:I

    .line 1314
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->jd:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1318
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->ap(Z)V

    .line 1319
    return-void

    :cond_0
    move v0, v2

    .line 1271
    goto :goto_0

    .line 1278
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 1285
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1286
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1287
    iget-object v3, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v3, v3, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1288
    iget-object v3, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jh:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-interface {v3, v0, v4, v5, v6}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1291
    const v3, 0x7f020023

    iput v3, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jr:I

    .line 1292
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->kH()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1294
    :cond_3
    const v0, 0x7f0c058b

    iput v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jq:I

    move v1, v2

    goto :goto_1

    .line 1295
    :cond_4
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_5

    .line 1296
    const v0, 0x7f0c058b

    iput v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jq:I

    move v1, v2

    .line 1297
    goto :goto_1

    .line 1299
    :cond_5
    const v0, 0x7f0c058c

    iput v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jq:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1302
    :catch_0
    move-exception v0

    .line 1303
    const-string v1, "InstalledAppDetails"

    const-string v3, "Unable to get package info"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 1304
    goto :goto_1

    .line 1307
    :cond_6
    sget v0, Lmiui/R$drawable;->action_button_delete_light:I

    iput v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jr:I

    .line 1308
    const v0, 0x7f0c0588

    iput v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jq:I

    goto/16 :goto_1

    :cond_7
    move v2, v1

    goto :goto_2
.end method

.method private l(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 622
    invoke-static {p2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jh:Landroid/content/pm/IPackageManager;

    new-instance v1, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DeleteObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DeleteObserver;-><init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$1;)V

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, p2, v2}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 625
    :catch_0
    move-exception v0

    .line 627
    const-string v0, "InstalledAppDetails"

    const-string v1, "Can\'t talk packageManager."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 631
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jh:Landroid/content/pm/IPackageManager;

    new-instance v1, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DeleteObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DeleteObserver;-><init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$1;)V

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, p2, v2}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    .line 632
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->ap(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jh:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    const/16 v2, 0x3e7

    const/4 v3, 0x0

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 636
    :catch_1
    move-exception v0

    .line 638
    const-string v0, "InstalledAppDetails"

    const-string v1, "Can\'t talk packageManager."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private n(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 256
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Hd:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public aj(Z)V
    .locals 0

    .prologue
    .line 554
    return-void
.end method

.method public al(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->jX()V

    .line 574
    :cond_0
    return-void
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 563
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    const-class v0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jA()V
    .locals 0

    .prologue
    .line 567
    return-void
.end method

.method public jB()V
    .locals 0

    .prologue
    .line 578
    return-void
.end method

.method public jC()V
    .locals 0

    .prologue
    .line 592
    return-void
.end method

.method public jD()V
    .locals 0

    .prologue
    .line 587
    return-void
.end method

.method public jz()V
    .locals 0

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->jF()Z

    .line 559
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .prologue
    .line 582
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 264
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 266
    const v0, 0x7f0c0588

    iput v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jq:I

    .line 267
    const v0, 0x7f020023

    iput v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jr:I

    .line 269
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0c05c2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->He:Ljava/lang/CharSequence;

    .line 271
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0084

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 272
    new-instance v0, Ljava/util/HashSet;

    array-length v3, v2

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Js:Ljava/util/HashSet;

    .line 273
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 274
    iget-object v5, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Js:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/a/a;->aV(Landroid/content/Context;)Lcom/android/vendorsettings/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->cu:Lcom/android/vendorsettings/a/a;

    .line 278
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/a/a;->a(Landroid/app/Application;)Lcom/android/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fh:Lcom/android/b/a/a;

    .line 279
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fh:Lcom/android/b/a/a;

    invoke-virtual {v0, p0}, Lcom/android/b/a/a;->a(Lcom/android/b/a/s;)Lcom/android/b/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->EV:Lcom/android/b/a/w;

    .line 280
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jh:Landroid/content/pm/IPackageManager;

    .line 281
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "appops"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 282
    const-string v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 283
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fk:Landroid/hardware/usb/IUsbManager;

    .line 284
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->S:Landroid/appwidget/AppWidgetManager;

    .line 285
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->jd:Landroid/app/admin/DevicePolicyManager;

    .line 287
    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->addPreferencesFromResource(I)V

    .line 289
    const-string v0, "applications_info"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/AppInfoPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IS:Lcom/android/vendorsettings/applications/AppInfoPreference;

    .line 290
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IS:Lcom/android/vendorsettings/applications/AppInfoPreference;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/AppInfoPreference;->setSelectable(Z)V

    .line 291
    const-string v0, "total_size"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IT:Lmiui/preference/ValuePreference;

    .line 292
    const-string v0, "application_size"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IU:Lmiui/preference/ValuePreference;

    .line 293
    const-string v0, "external_code_size"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IV:Lmiui/preference/ValuePreference;

    .line 294
    const-string v0, "data_size"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IW:Lmiui/preference/ValuePreference;

    .line 295
    const-string v0, "external_data_size"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IX:Lmiui/preference/ValuePreference;

    .line 296
    const-string v0, "cache_size"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IY:Lmiui/preference/ValuePreference;

    .line 297
    const-string v0, "clear_data"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ButtonPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->IZ:Lmiui/preference/ButtonPreference;

    .line 298
    const-string v0, "clear_cache"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ButtonPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Ja:Lmiui/preference/ButtonPreference;

    .line 299
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Ja:Lmiui/preference/ButtonPreference;

    const v1, 0x7f0c057f

    invoke-virtual {v0, v1}, Lmiui/preference/ButtonPreference;->setText(I)V

    .line 300
    const-string v0, "notification_switch"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jb:Lmiui/preference/ValuePreference;

    .line 301
    const-string v0, "floating_window_switch"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jc:Landroid/preference/CheckBoxPreference;

    .line 302
    const-string v0, "clear_default_settings"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jd:Landroid/preference/Preference;

    .line 303
    const-string v0, "permission_detail_info"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Je:Landroid/preference/Preference;

    .line 304
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Je:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 305
    const-string v0, "permission_manage"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jf:Landroid/preference/Preference;

    .line 306
    const-string v0, "permission_settings"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jg:Landroid/preference/Preference;

    .line 308
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_3

    .line 309
    const-string v0, "permissions_label"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 310
    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jf:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 311
    iput-object v6, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jf:Landroid/preference/Preference;

    .line 319
    :goto_1
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_4

    .line 320
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jg:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jf:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jf:Landroid/preference/Preference;

    const v1, 0x7f0c1195

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 330
    :cond_1
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->setHasOptionsMenu(Z)V

    .line 333
    if-eqz p1, :cond_2

    .line 334
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fh:Lcom/android/b/a/a;

    const-string v1, "package_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/b/a/a;->u(Ljava/lang/String;I)Lcom/android/b/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    .line 336
    :cond_2
    return-void

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jf:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 315
    iput-object v6, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jc:Landroid/preference/CheckBoxPreference;

    goto :goto_1

    .line 325
    :cond_4
    const-string v0, "permissions_label"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 326
    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jg:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 327
    iput-object v6, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jg:Landroid/preference/Preference;

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1188
    const v0, 0x7f0c0f11

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jm:Landroid/view/MenuItem;

    .line 1189
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jm:Landroid/view/MenuItem;

    sget v1, Lmiui/R$drawable;->action_button_discard_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1190
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jm:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jo:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1191
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jm:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1193
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jq:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jn:Landroid/view/MenuItem;

    .line 1194
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jn:Landroid/view/MenuItem;

    iget v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jr:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1195
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jn:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jp:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1196
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jn:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1197
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 370
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onDetach()V

    .line 371
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->EV:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->release()V

    .line 372
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1202
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1226
    :goto_0
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1204
    :pswitch_0
    const/4 v0, 0x5

    invoke-direct {p0, v0, v3}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->e(II)V

    goto :goto_0

    .line 1208
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Iz:Z

    if-eqz v0, :cond_0

    .line 1209
    const/4 v0, 0x2

    invoke-direct {p0, v0, v3}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->e(II)V

    goto :goto_0

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 1212
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_1

    .line 1213
    const/4 v0, 0x7

    invoke-direct {p0, v0, v3}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->e(II)V

    goto :goto_0

    .line 1215
    :cond_1
    new-instance v1, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DisableChanger;

    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0, v0, v3}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DisableChanger;-><init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1220
    :cond_2
    const/16 v0, 0xa

    invoke-direct {p0, v0, v3}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->e(II)V

    goto :goto_0

    .line 1202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 364
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 365
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->EV:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->pause()V

    .line 366
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1093
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1094
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1096
    const-string v4, "notification_switch"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1097
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1183
    :cond_0
    :goto_0
    return v3

    .line 1102
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1106
    :goto_1
    if-eqz v0, :cond_0

    .line 1109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1110
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    const-string v1, "com.android.settings"

    const-string v4, "com.android.settings.Settings$NotificationFilterActivity"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1112
    const-string v1, "appName"

    iget-object v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v4, v4, Lcom/android/b/a/o;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1113
    const-string v1, "packageName"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1114
    const-string v1, "userId"

    iget v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1115
    const-string v1, ":miui:starting_window_label"

    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v2, v2, Lcom/android/b/a/o;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 1117
    :cond_2
    const-string v4, "floating_window_switch"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1118
    const/16 v0, 0x9

    invoke-direct {p0, v0, v3}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->e(II)V

    goto :goto_0

    .line 1119
    :cond_3
    const-string v4, "clear_data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1120
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1121
    invoke-static {}, Lcom/android/vendorsettings/iC;->iu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1123
    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v2, v2, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1125
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1128
    :cond_4
    invoke-direct {p0, v5, v3}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->e(II)V

    goto/16 :goto_0

    .line 1130
    :cond_5
    const-string v4, "clear_cache"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1131
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jk:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    if-nez v0, :cond_6

    .line 1132
    new-instance v0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$ClearCacheObserver;-><init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jk:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    .line 1135
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jh:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mUserId:I

    iget-object v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jk:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    invoke-interface {v0, v1, v2, v4}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFilesForUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1136
    :catch_1
    move-exception v0

    .line 1137
    const-string v1, "InstalledAppDetails"

    const-string v2, "Can not clear cache for pkg,"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1139
    :cond_7
    const-string v4, "clear_default_settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1141
    :try_start_2
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Jh:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1142
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fk:Landroid/hardware/usb/IUsbManager;

    iget v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-interface {v0, v2, v4}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1146
    :goto_2
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->S:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v2, v3}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 1147
    invoke-direct {p0, v1, v1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->a(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 1143
    :catch_2
    move-exception v0

    .line 1144
    const-string v4, "InstalledAppDetails"

    const-string v5, "mUsbManager.clearDefaults"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1148
    :cond_8
    const-string v1, "permission_detail_info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1149
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_9

    .line 1150
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1151
    const-string v0, "extra_package_application"

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1152
    const-class v0, Lcom/android/vendorsettings/applications/PermissionInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto/16 :goto_0

    .line 1154
    :cond_9
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/vendorsettings/applications/PermissionInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1155
    const-string v1, "extra_package_application"

    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v2, v2, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1156
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1158
    :cond_a
    const-string v1, "permission_manage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1160
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1161
    sget-boolean v1, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v1, :cond_b

    .line 1162
    const-string v1, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1163
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1168
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1169
    :catch_3
    move-exception v0

    .line 1170
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1165
    :cond_b
    :try_start_4
    const-string v1, "miui.intent.action.APP_PERM_EDITOR_PRIVATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    const-string v1, "extra_pkgname"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 1172
    :cond_c
    const-string v1, "permission_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1173
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1174
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v2, v2, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1175
    const-string v1, "hideInfoButton"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1177
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 1178
    :catch_4
    move-exception v0

    .line 1179
    const-string v1, "InstalledAppDetails"

    const-string v2, "No app can handle android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 349
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 351
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->EV:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->resume()V

    .line 352
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->jF()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    invoke-direct {p0, v6, v6}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->c(ZZ)V

    .line 360
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/applications/PermissionInfoFragment;->a(ILandroid/content/Context;)Lcom/android/vendorsettings/applications/PermissionInfoFragment$PermissionSet;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Je:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0ee5

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/PermissionInfoFragment$PermissionSet;->kS()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/PermissionInfoFragment$PermissionSet;->kR()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/PermissionInfoFragment$PermissionSet;->kT()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 340
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 341
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "package_name"

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v0, "user_id"

    iget v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    :cond_0
    return-void
.end method
