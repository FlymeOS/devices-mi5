.class public Lcom/android/settings/applications/InstalledAppDetails;
.super Lcom/android/settings/applications/AppInfoBase;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Fb:Landroid/content/BroadcastReceiver;

.field private final Fc:Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

.field private IA:Landroid/widget/Button;

.field private IB:Landroid/preference/Preference;

.field private IC:Landroid/preference/Preference;

.field private ID:Landroid/preference/Preference;

.field private IE:Landroid/preference/Preference;

.field private IF:Landroid/preference/Preference;

.field private IG:Landroid/preference/Preference;

.field private IH:Z

.field private final II:Lcom/android/settings/notification/NotificationBackend;

.field private IJ:Landroid/preference/Preference;

.field private IK:Lcom/android/internal/os/BatteryStatsHelper;

.field private IL:Lcom/android/internal/os/BatterySipper;

.field protected IM:Lcom/android/settings/applications/ProcStatsData;

.field protected IN:Lcom/android/settings/applications/ProcStatsPackageEntry;

.field private final IO:Landroid/app/LoaderManager$LoaderCallbacks;

.field private final IP:Landroid/content/BroadcastReceiver;

.field private final Iv:Ljava/util/HashSet;

.field private Iw:Z

.field private Ix:Lcom/android/settings/applications/LayoutPreference;

.field private Iy:Landroid/widget/Button;

.field private Iz:Z

.field private gP:Landroid/net/INetworkStatsSession;

.field private hC:Lcom/android/settings/d/a;

.field private mInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoBase;-><init>()V

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Iv:Ljava/util/HashSet;

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Iz:Z

    .line 147
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->II:Lcom/android/settings/notification/NotificationBackend;

    .line 937
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$5;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$5;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IO:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 956
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$6;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$6;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IP:Landroid/content/BroadcastReceiver;

    .line 963
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$7;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$7;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fc:Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fb:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IG:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/internal/os/BatterySipper;)Lcom/android/internal/os/BatterySipper;
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails;->IL:Lcom/android/internal/os/BatterySipper;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settings/d/a;)Lcom/android/settings/d/a;
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails;->hC:Lcom/android/settings/d/a;

    return-object p1
.end method

.method public static a(Lcom/android/b/a/o;Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 812
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v0, v1}, Lcom/android/settings/notification/NotificationBackend;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v0

    .line 813
    invoke-static {v0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->a(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 817
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->ajh:Z

    if-eqz v0, :cond_0

    .line 818
    const v0, 0x7f0c0af3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 840
    :goto_0
    return-object v0

    .line 820
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 821
    iget-boolean v1, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->aji:Z

    if-eqz v1, :cond_1

    .line 822
    const v1, 0x7f0c0af5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->ajk:Z

    if-eqz v1, :cond_2

    .line 825
    const v1, 0x7f0c0af4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->ajj:Z

    if-nez v1, :cond_3

    .line 828
    const v1, 0x7f0c0af6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 840
    const v0, 0x7f0c0af2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 832
    :pswitch_0
    const v1, 0x7f0c0af8

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 835
    :pswitch_1
    const v1, 0x7f0c0af7

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 838
    :pswitch_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    .line 830
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 775
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040197

    const v0, 0x1020018

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 778
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 779
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 781
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 782
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    const v0, 0x7f130338

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 786
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 787
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 788
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 789
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c05c5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    :goto_0
    return-void

    .line 792
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/InstalledAppDetails;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;Z)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->an(Z)V

    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/lang/CharSequence;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 702
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 703
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v0, "uid"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 705
    const-string v0, "hideInfoButton"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 707
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hn;

    .line 708
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    move-object v4, p2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 709
    return-void
.end method

.method private a(Ljava/lang/String;ZZ)V
    .locals 3

    .prologue
    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 641
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 642
    const-string v0, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 643
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 644
    iput-boolean p3, p0, Lcom/android/settings/applications/InstalledAppDetails;->IH:Z

    .line 645
    return-void
.end method

.method private a(Landroid/widget/Button;)Z
    .locals 5

    .prologue
    const v4, 0x7f0c058b

    const/4 v0, 0x1

    .line 168
    const/4 v1, 0x0

    .line 172
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Iv:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v3, v3, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->i:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fj:Landroid/content/pm/PackageInfo;

    invoke-static {v2, v3}, Lcom/android/settings/iC;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    :cond_0
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    move v0, v1

    .line 184
    :goto_0
    return v0

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->kx()Z

    move-result v1

    if-nez v1, :cond_2

    .line 177
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 180
    :cond_2
    const v1, 0x7f0c058c

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private an(Z)V
    .locals 2

    .prologue
    .line 661
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fg:Z

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IA:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 667
    :goto_0
    return-void

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IA:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 665
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IA:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private ao(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 253
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->sR:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "device_policy"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 256
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 265
    :goto_0
    return v0

    .line 259
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 260
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 262
    goto :goto_0

    .line 265
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static ap(Landroid/content/Context;)Landroid/net/NetworkTemplate;
    .locals 1

    .prologue
    .line 797
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 803
    :goto_0
    return-object v0

    .line 800
    :cond_0
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    goto :goto_0

    .line 803
    :cond_1
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/internal/os/BatteryStatsHelper;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IK:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0
.end method

.method private b(Landroid/content/pm/PackageInfo;)V
    .locals 4

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ix:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f13001f

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 454
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v2, v0, Lcom/android/b/a/o;->label:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/b/a/o;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/applications/InstalledAppDetails;->a(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 456
    return-void

    .line 454
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/net/INetworkStatsSession;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->gP:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/applications/InstalledAppDetails;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->kB()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IF:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->ID:Landroid/preference/Preference;

    return-object v0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 650
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 652
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fh:Lcom/android/b/a/a;

    invoke-virtual {v1, p1, v0}, Lcom/android/b/a/a;->A(Ljava/lang/String;I)V

    .line 653
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fh:Lcom/android/b/a/a;

    invoke-virtual {v1, p1, v0}, Lcom/android/b/a/a;->u(Ljava/lang/String;I)Lcom/android/b/a/o;

    move-result-object v0

    .line 654
    if-eqz v0, :cond_0

    .line 655
    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    .line 657
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->kC()V

    .line 658
    return-void
.end method

.method private kA()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 551
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IL:Lcom/android/internal/os/BatterySipper;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IJ:Landroid/preference/Preference;

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 553
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IK:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v0

    .line 555
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->IL:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->IK:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v4

    div-double/2addr v2, v4

    int-to-double v0, v0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 557
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->IJ:Landroid/preference/Preference;

    const v2, 0x7f0c0b3e

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 562
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IJ:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 560
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IJ:Landroid/preference/Preference;

    const v1, 0x7f0c0b3f

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private kB()Ljava/lang/CharSequence;
    .locals 8

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->hC:Lcom/android/settings/d/a;

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->hC:Lcom/android/settings/d/a;

    iget-object v0, v0, Lcom/android/settings/d/a;->ahO:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v0

    .line 567
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 568
    const v0, 0x7f0c0b61

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 576
    :goto_0
    return-object v0

    .line 570
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 571
    const v3, 0x7f0c0aed

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->hC:Lcom/android/settings/d/a;

    iget-object v1, v1, Lcom/android/settings/d/a;->ahO:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v6

    const v1, 0x10010

    invoke-static {v2, v6, v7, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 576
    :cond_1
    const v0, 0x7f0c05c2

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private kC()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 670
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->jd:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->an(Z)V

    .line 686
    :goto_0
    return-void

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 676
    invoke-direct {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->an(Z)V

    goto :goto_0

    .line 678
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v2, "package"

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v4, v4, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 680
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v4, v4, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    const-string v0, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v2, v2, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 682
    const-string v0, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v2, v2, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 683
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->IP:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private kD()V
    .locals 3

    .prologue
    .line 690
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 691
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v2, v2, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    const-string v1, "hideInfoButton"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 694
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :goto_0
    return-void

    .line 695
    :catch_0
    move-exception v0

    .line 696
    const-string v0, "InstalledAppDetails"

    const-string v1, "No app can handle android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private kx()Z
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ky()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    move v3, v2

    .line 195
    :goto_0
    if-eqz v3, :cond_5

    .line 196
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Iy:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->a(Landroid/widget/Button;)Z

    move-result v0

    .line 208
    :goto_1
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->jd:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    .line 212
    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->ao(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    .line 222
    :cond_1
    if-eqz v0, :cond_9

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Iv:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 223
    if-eqz v3, :cond_6

    move v2, v1

    .line 240
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fg:Z

    if-eqz v0, :cond_8

    .line 244
    :goto_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Iy:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 245
    if-eqz v1, :cond_3

    .line 247
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Iy:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    :cond_3
    return-void

    :cond_4
    move v3, v1

    .line 193
    goto :goto_0

    .line 198
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x800000

    and-int/2addr v0, v4

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->sR:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_a

    move v0, v1

    .line 204
    :goto_4
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Iy:Landroid/widget/Button;

    const v5, 0x7f0c0588

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 226
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 228
    if-nez v0, :cond_7

    .line 231
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Iv:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gt v0, v2, :cond_2

    move v2, v1

    goto :goto_2

    .line 235
    :cond_7
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    goto :goto_2

    :cond_8
    move v1, v2

    goto :goto_3

    :cond_9
    move v2, v0

    goto :goto_2

    :cond_a
    move v0, v2

    goto :goto_4
.end method

.method private kz()V
    .locals 3

    .prologue
    .line 367
    const-string v0, "header_view"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ix:Lcom/android/settings/applications/LayoutPreference;

    .line 370
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ix:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f130116

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 371
    const v0, 0x7f1302fd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IA:Landroid/widget/Button;

    .line 372
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IA:Landroid/widget/Button;

    const v2, 0x7f0c0582

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 373
    const v0, 0x7f1302fc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Iy:Landroid/widget/Button;

    .line 374
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IA:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 375
    return-void
.end method

.method private l(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 459
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 462
    if-ltz v0, :cond_0

    .line 463
    const/4 v0, 0x1

    .line 470
    :goto_0
    return v0

    .line 465
    :catch_0
    move-exception v0

    .line 470
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected f(II)Landroid/app/AlertDialog;
    .locals 7

    .prologue
    const v6, 0x7f0c05d6

    const v5, 0x7f0c05b1

    const v4, 0x7f0c05b2

    const/4 v0, 0x0

    .line 581
    packed-switch p1, :pswitch_data_0

    .line 635
    :goto_0
    return-object v0

    .line 583
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c05d7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$1;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/InstalledAppDetails$1;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 597
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c05d9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$2;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/InstalledAppDetails$2;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 610
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c05cf

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c05d0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$3;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/InstalledAppDetails$3;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 622
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c05b6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c05b7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$4;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/InstalledAppDetails$4;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 581
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-class v0, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected jF()Z
    .locals 8

    .prologue
    const/high16 v7, 0x800000

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 475
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jE()Ljava/lang/String;

    .line 476
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    if-nez v0, :cond_1

    .line 547
    :cond_0
    :goto_0
    return v2

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fj:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    .line 485
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 486
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 487
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Iv:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    move v1, v2

    .line 488
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 489
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 490
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 491
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->Iv:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 495
    if-eqz v0, :cond_2

    .line 496
    const-string v6, "android.app.home.alternate"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-direct {p0, v0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->l(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 498
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->Iv:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 503
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->kC()V

    .line 504
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fj:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->b(Landroid/content/pm/PackageInfo;)V

    .line 505
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->ky()V

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 509
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->IC:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    invoke-static {v4, v0}, Lcom/android/settings/applications/AppStorageSettings;->a(Lcom/android/b/a/o;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fb:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_4

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fb:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 513
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fc:Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-static {v1, v4, v5}, Lcom/android/settings/applications/PermissionsSummaryHelper;->a(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fb:Landroid/content/BroadcastReceiver;

    .line 515
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->IE:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fk:Landroid/hardware/usb/IUsbManager;

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->i:Landroid/content/pm/PackageManager;

    invoke-static {v4, v5, v6, v0}, Lcom/android/settings/iC;->a(Lcom/android/b/a/o;Landroid/hardware/usb/IUsbManager;Landroid/content/pm/PackageManager;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->IB:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->II:Lcom/android/settings/notification/NotificationBackend;

    invoke-static {v4, v0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->a(Lcom/android/b/a/o;Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->IF:Landroid/preference/Preference;

    if-eqz v1, :cond_5

    .line 520
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->IF:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->kB()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 523
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->kA()V

    .line 525
    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInitialized:Z

    if-nez v1, :cond_8

    .line 527
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInitialized:Z

    .line 528
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v7

    if-nez v0, :cond_6

    move v2, v3

    :cond_6
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Iw:Z

    :cond_7
    move v2, v3

    .line 547
    goto/16 :goto_0

    .line 533
    :cond_8
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x2200

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 536
    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Iw:Z

    if-nez v1, :cond_7

    .line 540
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v0, v7

    if-eqz v0, :cond_9

    :goto_2
    move v2, v3

    goto/16 :goto_0

    :cond_9
    move v3, v2

    goto :goto_2

    .line 542
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 331
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 332
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->kz()V

    .line 337
    const-string v0, "notification_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IB:Landroid/preference/Preference;

    .line 338
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IB:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 339
    const-string v0, "storage_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IC:Landroid/preference/Preference;

    .line 340
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IC:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 341
    const-string v0, "permission_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->ID:Landroid/preference/Preference;

    .line 342
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->ID:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 343
    const-string v0, "data_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IF:Landroid/preference/Preference;

    .line 344
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IF:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IF:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 347
    :cond_1
    const-string v0, "battery"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IJ:Landroid/preference/Preference;

    .line 348
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IJ:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 349
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IJ:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 350
    const-string v0, "memory"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IG:Landroid/preference/Preference;

    .line 351
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IG:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 353
    const-string v0, "preferred_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IE:Landroid/preference/Preference;

    .line 354
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_4

    .line 355
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_3

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IE:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 359
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IE:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0

    .line 362
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IE:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 426
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/applications/AppInfoBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 427
    if-nez p1, :cond_1

    .line 428
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IH:Z

    if-eqz v0, :cond_0

    .line 429
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->IH:Z

    .line 431
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x2200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 434
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 435
    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v0, v2}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jF()Z

    move-result v0

    if-nez v0, :cond_1

    .line 443
    invoke-virtual {p0, v4, v4}, Lcom/android/settings/applications/InstalledAppDetails;->c(ZZ)V

    .line 446
    :cond_1
    return-void

    .line 439
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 716
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 717
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Iy:Landroid/widget/Button;

    if-ne p1, v1, :cond_5

    .line 718
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 719
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->kx()Z

    move-result v0

    if-nez v0, :cond_2

    .line 720
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Iz:Z

    if-eqz v0, :cond_1

    .line 721
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->e(II)V

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->e(II)V

    goto :goto_0

    .line 726
    :cond_2
    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0, v0, v3}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 730
    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-nez v1, :cond_4

    .line 731
    invoke-direct {p0, v0, v4, v3}, Lcom/android/settings/applications/InstalledAppDetails;->a(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 733
    :cond_4
    invoke-direct {p0, v0, v3, v3}, Lcom/android/settings/applications/InstalledAppDetails;->a(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 735
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IA:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 736
    invoke-virtual {p0, v4, v3}, Lcom/android/settings/applications/InstalledAppDetails;->e(II)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 271
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    .line 273
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    .line 274
    const v0, 0x7f08004c

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->addPreferencesFromResource(I)V

    .line 276
    invoke-static {}, Lcom/android/settings/iC;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    .line 280
    :try_start_0
    invoke-interface {v0}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->gP:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IK:Lcom/android/internal/os/BatteryStatsHelper;

    .line 288
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 285
    :cond_0
    const-string v0, "data_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->U(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 379
    const/4 v0, 0x2

    const v1, 0x7f0c058e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 381
    const v0, 0x7f0c0589

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 383
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->gP:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fb:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fb:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fb:Landroid/content/BroadcastReceiver;

    .line 327
    :cond_0
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onDestroy()V

    .line 328
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 411
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 421
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 413
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->a(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 416
    :pswitch_1
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->e(II)V

    goto :goto_0

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 316
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onPause()V

    .line 317
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 743
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IC:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 744
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->IC:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->a(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    .line 770
    :goto_0
    return v6

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IB:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 746
    const-class v0, Lcom/android/settings/notification/AppNotificationSettings;

    const v1, 0x7f0c0a5e

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->a(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->ID:Landroid/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 749
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->kD()V

    goto :goto_0

    .line 750
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IE:Landroid/preference/Preference;

    if-ne p1, v0, :cond_3

    .line 751
    const-class v0, Lcom/android/settings/applications/AppLaunchSettings;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->IE:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->a(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 752
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IG:Landroid/preference/Preference;

    if-ne p1, v0, :cond_4

    .line 753
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hn;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->IM:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/settings/applications/ProcStatsData;->la()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->IN:Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-static {v0, v1, v2}, Lcom/android/settings/applications/ProcessStatsBase;->a(Lcom/android/settings/hn;Lcom/android/settings/applications/ProcStatsData$MemInfo;Lcom/android/settings/applications/ProcStatsPackageEntry;)V

    goto :goto_0

    .line 755
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IF:Landroid/preference/Preference;

    if-ne p1, v0, :cond_5

    .line 756
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 757
    const-string v0, "showAppImmediatePkg"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hn;

    .line 761
    const-class v1, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    const v4, 0x7f0c0aec

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 763
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->IJ:Landroid/preference/Preference;

    if-ne p1, v0, :cond_6

    .line 764
    new-instance v2, Lcom/android/settings/fuelgauge/BatteryEntry;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->sR:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->IL:Lcom/android/internal/os/BatterySipper;

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 765
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hn;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->IK:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-static {v0, v3, v1, v2, v6}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->a(Lcom/android/settings/hn;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Z)V

    goto/16 :goto_0

    :cond_6
    move v6, v1

    .line 768
    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 387
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Iz:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 404
    :goto_1
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 405
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Iz:Z

    .line 406
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Iz:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fg:Z

    if-nez v3, :cond_8

    :goto_3
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    if-nez v0, :cond_2

    move v0, v1

    .line 394
    goto :goto_1

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    .line 396
    goto :goto_1

    .line 397
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fj:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->jd:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v1

    .line 398
    goto :goto_1

    .line 399
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 400
    goto :goto_1

    .line 401
    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->sR:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_9

    move v0, v1

    .line 402
    goto :goto_1

    :cond_7
    move v0, v1

    .line 405
    goto :goto_2

    :cond_8
    move v2, v1

    .line 406
    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 297
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onResume()V

    .line 298
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fh:Lcom/android/b/a/a;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/b/a/a;->w(Ljava/lang/String;I)V

    .line 302
    new-instance v0, Lcom/android/settings/DataUsageSummary$AppItem;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v0, v1}, Lcom/android/settings/DataUsageSummary$AppItem;-><init>(I)V

    .line 303
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary$AppItem;->v(I)V

    .line 304
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->gP:Landroid/net/INetworkStatsSession;

    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/applications/InstalledAppDetails;->ap(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/settings/d/b;->a(Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->IO:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 309
    :cond_1
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;

    invoke-direct {v0, p0, v5}, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settings/applications/InstalledAppDetails$1;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 310
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;

    invoke-direct {v0, p0, v5}, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settings/applications/InstalledAppDetails$1;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 292
    const/16 v0, 0x14

    return v0
.end method
