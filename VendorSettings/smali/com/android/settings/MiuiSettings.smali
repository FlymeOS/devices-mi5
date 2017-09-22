.class public Lcom/android/vendorsettings/MiuiSettings;
.super Lmiui/preference/PreferenceActivity;
.source "MiuiSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# static fields
.field private static final tb:Ljava/util/HashMap;

.field private static final tl:Ljava/util/Map;

.field private static tm:Ljava/util/HashSet;


# instance fields
.field private tc:[I

.field private td:[I

.field private te:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

.field private tf:Lmiui/widget/NavigationLayout;

.field private tg:Lcom/android/vendorsettings/SettingsFragment;

.field private th:Ljava/lang/String;

.field private ti:Z

.field private tj:Lcom/android/vendorsettings/vpn2/VpnManager;

.field private tk:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/android/vendorsettings/MiuiSettings$1;

    invoke-direct {v0}, Lcom/android/vendorsettings/MiuiSettings$1;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/MiuiSettings;->tb:Ljava/util/HashMap;

    .line 175
    new-instance v0, Lcom/android/vendorsettings/MiuiSettings$2;

    invoke-direct {v0}, Lcom/android/vendorsettings/MiuiSettings$2;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/MiuiSettings;->tl:Ljava/util/Map;

    .line 402
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/MiuiSettings;->tm:Ljava/util/HashSet;

    .line 404
    sget-object v0, Lcom/android/vendorsettings/MiuiSettings;->tm:Ljava/util/HashSet;

    const v1, 0x7f13038a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v0, Lcom/android/vendorsettings/MiuiSettings;->tm:Ljava/util/HashSet;

    const v1, 0x7f1303a3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 406
    sget-object v0, Lcom/android/vendorsettings/MiuiSettings;->tm:Ljava/util/HashSet;

    const v1, 0x7f1303a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 407
    sget-object v0, Lcom/android/vendorsettings/MiuiSettings;->tm:Ljava/util/HashSet;

    const v1, 0x7f1303ae

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v0, Lcom/android/vendorsettings/MiuiSettings;->tm:Ljava/util/HashSet;

    const v1, 0x7f1303af

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Lcom/android/vendorsettings/MiuiSettings;->tm:Ljava/util/HashSet;

    const v1, 0x7f1303c9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v0, Lcom/android/vendorsettings/MiuiSettings;->tm:Ljava/util/HashSet;

    const v1, 0x7f1303a7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 411
    sget-object v0, Lcom/android/vendorsettings/MiuiSettings;->tm:Ljava/util/HashSet;

    const v1, 0x7f1303a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 412
    sget-object v0, Lcom/android/vendorsettings/MiuiSettings;->tm:Ljava/util/HashSet;

    const v1, 0x7f1303a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v0, Lcom/android/vendorsettings/MiuiSettings;->tm:Ljava/util/HashSet;

    const v1, 0x7f1303a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v0, Lcom/android/vendorsettings/MiuiSettings;->tm:Ljava/util/HashSet;

    const v1, 0x7f130396

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v0, Lcom/android/vendorsettings/MiuiSettings;->tm:Ljava/util/HashSet;

    const v1, 0x7f1303a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v0, Lcom/android/vendorsettings/MiuiSettings;->tm:Ljava/util/HashSet;

    const v1, 0x7f1303aa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 417
    sget-object v0, Lcom/android/vendorsettings/MiuiSettings;->tm:Ljava/util/HashSet;

    const v1, 0x7f13038b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 418
    sget-object v0, Lcom/android/vendorsettings/MiuiSettings;->tm:Ljava/util/HashSet;

    const v1, 0x7f130389

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 419
    sget-object v0, Lcom/android/vendorsettings/MiuiSettings;->tm:Ljava/util/HashSet;

    const v1, 0x7f1303c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v0, Lcom/android/vendorsettings/MiuiSettings;->tm:Ljava/util/HashSet;

    const v1, 0x7f1303ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 421
    sget-object v0, Lcom/android/vendorsettings/MiuiSettings;->tm:Ljava/util/HashSet;

    const v1, 0x7f1303bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 422
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 121
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->tc:[I

    .line 148
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->td:[I

    .line 165
    const-string v0, "com.android.settings.MiuiDeviceInfoSettings"

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->th:Ljava/lang/String;

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/MiuiSettings;->ti:Z

    .line 169
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/MiuiSettings;->tk:I

    .line 618
    return-void

    .line 121
    nop

    :array_0
    .array-data 4
        0x7f130390
        0x7f130391
        0x7f13038d
        0x7f130395
        0x7f130396
        0x7f1303be
        0x7f130398
        0x7f13039b
        0x7f13039a
        0x7f13039c
        0x7f1303a1
        0x7f1303c6
        0x7f1303a2
        0x7f1303a3
        0x7f1303a4
        0x7f13039e
        0x7f130388
        0x7f130389
        0x7f1303a6
        0x7f1303a7
        0x7f130385
        0x7f1303a8
        0x7f1303b8
    .end array-data

    .line 148
    :array_1
    .array-data 4
        0x7f1303b7
        0x7f1303b2
        0x7f130394
        0x7f1303b8
        0x7f1303c4
    .end array-data
.end method

.method private a(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1002
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 1003
    invoke-virtual {v4}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v5

    .line 1006
    if-lez v5, :cond_2

    .line 1007
    invoke-virtual {v4, v2}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 1009
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-interface {v0}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    move v3, v0

    .line 1014
    :goto_1
    if-ge v3, v5, :cond_0

    .line 1015
    invoke-virtual {v4}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 1014
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1017
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_2
    return v1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 242
    const v0, 0x7f1302a9

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->tf:Lmiui/widget/NavigationLayout;

    .line 243
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->tf:Lmiui/widget/NavigationLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/NavigationLayout;->openNavigationDrawer(Z)V

    .line 245
    if-nez p1, :cond_0

    .line 246
    new-instance v0, Lcom/android/vendorsettings/SettingsFragment;

    invoke-direct {v0}, Lcom/android/vendorsettings/SettingsFragment;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->tg:Lcom/android/vendorsettings/SettingsFragment;

    .line 247
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lmiui/R$id;->navigation:I

    iget-object v2, p0, Lcom/android/vendorsettings/MiuiSettings;->tg:Lcom/android/vendorsettings/SettingsFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v1, Lmiui/R$id;->navigation:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/SettingsFragment;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->tg:Lcom/android/vendorsettings/SettingsFragment;

    goto :goto_0
.end method

.method private e(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x1020002

    .line 255
    if-nez p1, :cond_0

    .line 256
    new-instance v0, Lcom/android/vendorsettings/SettingsFragment;

    invoke-direct {v0}, Lcom/android/vendorsettings/SettingsFragment;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->tg:Lcom/android/vendorsettings/SettingsFragment;

    .line 257
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSettings;->tg:Lcom/android/vendorsettings/SettingsFragment;

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/SettingsFragment;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->tg:Lcom/android/vendorsettings/SettingsFragment;

    goto :goto_0
.end method

.method private fS()V
    .locals 4

    .prologue
    .line 214
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.settings.FRAGMENT_CLASS"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->th:Ljava/lang/String;

    .line 222
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiSettings;->fV()V

    .line 223
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->invalidateHeaders()V

    goto :goto_0
.end method

.method private fV()V
    .locals 3

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1022
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    .line 1023
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 1024
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 1023
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1026
    :cond_0
    return-void
.end method

.method private l(Ljava/util/List;)V
    .locals 8

    .prologue
    .line 558
    const/4 v1, 0x0

    .line 559
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 560
    const v3, 0x7f1303c8

    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v4, v4

    if-ne v3, v4, :cond_0

    .line 561
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    move v1, v0

    .line 566
    :cond_1
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 568
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 569
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    const/16 v5, 0x80

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v3, v4, v5, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 572
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 573
    iget-boolean v4, v0, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v4, :cond_3

    .line 579
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 580
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 581
    if-eqz v4, :cond_3

    const-string v5, "com.android.settings.category"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 584
    const-string v5, "com.android.settings.category"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 585
    sget-object v5, Lcom/android/vendorsettings/MiuiSettings;->tl:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 590
    new-instance v5, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v5}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 591
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 592
    sget-object v0, Lcom/android/vendorsettings/MiuiSettings;->tl:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v5, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 593
    invoke-static {p0, p1, v5}, Lcom/android/vendorsettings/iC;->a(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    .line 596
    invoke-interface {p1, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 599
    :cond_4
    return-void
.end method


# virtual methods
.method protected c(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 229
    if-eqz p1, :cond_0

    .line 230
    const-string v0, "select_header"

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSettings;->th:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->th:Ljava/lang/String;

    .line 232
    :cond_0
    const v0, 0x7f04013b

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSettings;->setContentView(I)V

    .line 234
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1

    .line 235
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/MiuiSettings;->d(Landroid/os/Bundle;)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/MiuiSettings;->e(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public fT()Lcom/android/vendorsettings/accounts/AuthenticatorHelper;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->te:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    return-object v0
.end method

.method public fU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->th:Ljava/lang/String;

    return-object v0
.end method

.method public fW()V
    .locals 2

    .prologue
    .line 1063
    const v0, 0x7f1302a9

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout;

    .line 1065
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/NavigationLayout;->setNavigationEanbled(Z)V

    .line 1066
    return-void
.end method

.method public fX()V
    .locals 2

    .prologue
    .line 1069
    const v0, 0x7f1302a9

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout;

    .line 1071
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/NavigationLayout;->setNavigationEanbled(Z)V

    .line 1072
    return-void
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x1

    return v0
.end method

.method public k(Ljava/util/List;)V
    .locals 12

    .prologue
    const v11, 0x7f1303cd

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 425
    .line 427
    invoke-static {p0}, Lcom/android/b/a;->cI(Landroid/content/Context;)Z

    move-result v4

    .line 428
    invoke-static {p0}, Lcom/android/b/a;->cJ(Landroid/content/Context;)Z

    move-result v5

    .line 429
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    invoke-virtual {v0}, Lcom/android/vendorsettings/vpn2/VpnManager;->vQ()I

    move-result v6

    move v2, v3

    .line 430
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_27

    .line 432
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 434
    iget-wide v8, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v7, v8

    .line 435
    sget-object v1, Lcom/android/vendorsettings/MiuiSettings;->tm:Ljava/util/HashSet;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 436
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 521
    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSettings;->td:[I

    invoke-static {v1, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 522
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 540
    :cond_1
    :goto_2
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_3

    const v1, 0x7f1303cc

    if-eq v7, v1, :cond_2

    if-eq v7, v11, :cond_2

    const v1, 0x7f1303b8

    if-ne v7, v1, :cond_3

    .line 541
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 545
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_29

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_29

    .line 546
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_3
    move v2, v0

    .line 548
    goto :goto_0

    .line 437
    :cond_4
    const v1, 0x7f130394

    if-eq v7, v1, :cond_5

    const v1, 0x7f1303a0

    if-ne v7, v1, :cond_6

    .line 438
    :cond_5
    invoke-static {p0, p1, v0}, Lcom/android/vendorsettings/iC;->a(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    goto :goto_1

    .line 439
    :cond_6
    const v1, 0x7f130391

    if-ne v7, v1, :cond_7

    .line 441
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v8, "android.hardware.wifi"

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 442
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 444
    :cond_7
    const v1, 0x7f13038d

    if-ne v7, v1, :cond_8

    .line 446
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v8, "android.hardware.bluetooth"

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 449
    :cond_8
    const v1, 0x7f1303b2

    if-ne v7, v1, :cond_a

    invoke-static {p0}, Lcom/android/vendorsettings/iC;->Z(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/android/vendorsettings/fy;->gg()Lcom/android/vendorsettings/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vendorsettings/fy;->isMultiSimSupported()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 452
    :cond_9
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 453
    :cond_a
    const v1, 0x7f1303b7

    if-ne v7, v1, :cond_b

    invoke-static {}, Lcom/android/vendorsettings/fy;->gg()Lcom/android/vendorsettings/fy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vendorsettings/fy;->isMultiSimSupported()Z

    move-result v1

    if-nez v1, :cond_b

    .line 455
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 456
    :cond_b
    const v1, 0x7f13039e

    if-ne v7, v1, :cond_d

    .line 457
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/android/vendorsettings/iC;->iu()Z

    move-result v1

    if-nez v1, :cond_c

    .line 462
    :cond_c
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 464
    :cond_d
    const v1, 0x7f1303b1

    if-ne v7, v1, :cond_e

    .line 465
    invoke-static {p0}, Lmiui/payment/PaymentManager;->get(Landroid/content/Context;)Lmiui/payment/PaymentManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/payment/PaymentManager;->isMibiServiceDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 468
    :cond_e
    const v1, 0x7f1303c3

    if-ne v7, v1, :cond_10

    .line 469
    if-nez v4, :cond_f

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    :cond_f
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 472
    :cond_10
    const v1, 0x7f1303c0

    if-ne v7, v1, :cond_11

    .line 473
    if-eqz v5, :cond_0

    .line 474
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 476
    :cond_11
    const v1, 0x7f130393

    if-ne v7, v1, :cond_12

    sget-boolean v1, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v1, :cond_12

    .line 477
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 478
    :cond_12
    const v1, 0x7f1303ce

    if-ne v7, v1, :cond_13

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_13

    .line 479
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 480
    :cond_13
    const v1, 0x7f130397

    if-ne v7, v1, :cond_14

    .line 482
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 483
    :cond_14
    const v1, 0x7f1303c2

    if-ne v7, v1, :cond_15

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_15

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-ge v1, v8, :cond_15

    .line 484
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 485
    :cond_15
    const v1, 0x7f1303a6

    if-eq v7, v1, :cond_0

    .line 488
    const v1, 0x7f1303bb

    if-ne v7, v1, :cond_16

    .line 489
    invoke-static {}, Lcom/android/b/a;->ze()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 492
    :cond_16
    const v1, 0x7f1303c4

    if-ne v7, v1, :cond_17

    .line 493
    invoke-static {}, Lcom/android/b/a;->ze()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 496
    :cond_17
    const v1, 0x7f1303bc

    if-ne v7, v1, :cond_19

    .line 497
    invoke-static {}, Lcom/android/b/a;->ze()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/theme/ThemeManagerHelper;->needDisableTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    :cond_18
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 500
    :cond_19
    const v1, 0x7f1303ac

    if-ne v7, v1, :cond_1b

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_1a

    sget-boolean v1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v1, :cond_1b

    .line 501
    :cond_1a
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 502
    :cond_1b
    const v1, 0x7f1303bd

    if-ne v7, v1, :cond_1c

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_1c

    .line 503
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 504
    :cond_1c
    const v1, 0x7f1303c5

    if-ne v7, v1, :cond_1d

    .line 505
    const-string v1, "support_edge_handgrip"

    invoke-static {v1, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 506
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 508
    :cond_1d
    const v1, 0x7f1303be

    if-ne v7, v1, :cond_1f

    .line 509
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/MiuiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 510
    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_1e

    const v1, 0x7f0c0d3c

    :goto_4
    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 511
    iget v1, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/MiuiSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 510
    :cond_1e
    const v1, 0x7f0c0393

    goto :goto_4

    .line 512
    :cond_1f
    const v1, 0x7f1303bf

    if-ne v7, v1, :cond_20

    .line 513
    new-instance v1, Lcom/android/vendorsettings/cZ;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/cZ;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/vendorsettings/cZ;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    const v1, 0x7f0c113b

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 515
    iget v1, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/MiuiSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 517
    :cond_20
    const v1, 0x7f1303c1

    if-ne v7, v1, :cond_0

    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isSupportSecuritySpace()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {}, Lcom/android/b/a;->ze()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    :cond_21
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 523
    :cond_22
    const v1, 0x7f1303cb

    if-ne v7, v1, :cond_24

    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isSupportSecuritySpace()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_23

    invoke-static {}, Lcom/android/b/a;->ze()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 526
    :cond_23
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 527
    :cond_24
    if-ne v7, v11, :cond_25

    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_25

    .line 528
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    const-string v8, "enter_way"

    const-string v9, "00003"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 529
    :cond_25
    const v1, 0x7f1303b9

    if-ne v7, v1, :cond_26

    if-eq v6, v10, :cond_26

    .line 530
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 531
    :cond_26
    const v1, 0x7f1303ba

    if-ne v7, v1, :cond_1

    if-gt v6, v10, :cond_1

    .line 532
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 551
    :cond_27
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_28

    .line 552
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/MiuiSettings;->l(Ljava/util/List;)V

    .line 554
    :cond_28
    return-void

    :cond_29
    move v0, v2

    goto/16 :goto_3
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->te:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 930
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/MiuiSettings;->ti:Z

    .line 931
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->invalidateHeaders()V

    .line 932
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 292
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->finish()V

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 296
    sget v0, Lmiui/R$id;->content:I

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/android/vendorsettings/fY;

    if-eqz v2, :cond_1

    .line 298
    check-cast v0, Lcom/android/vendorsettings/fY;

    invoke-interface {v0}, Lcom/android/vendorsettings/fY;->Y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 305
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->finish()V

    goto :goto_0

    .line 308
    :cond_2
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 939
    iget-boolean v0, p0, Lcom/android/vendorsettings/MiuiSettings;->ti:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->tg:Lcom/android/vendorsettings/SettingsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->tg:Lcom/android/vendorsettings/SettingsFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/SettingsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->tg:Lcom/android/vendorsettings/SettingsFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/SettingsFragment;->aa()V

    .line 942
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/MiuiSettings;->ti:Z

    .line 944
    :cond_0
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 6

    .prologue
    .line 267
    invoke-super {p0, p1, p2, p3, p4}, Lmiui/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 272
    const-class v1, Lcom/android/vendorsettings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/vendorsettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/vendorsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/vendorsettings/DreamSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    :cond_0
    const-string v1, "settings:ui_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    :cond_1
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_2

    .line 280
    const-class v1, Lcom/android/vendorsettings/applications/ApplicationsContainer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 281
    const-class v1, Lcom/android/vendorsettings/applications/ManageApplicationsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 287
    :cond_2
    :goto_0
    return-object v0

    .line 283
    :cond_3
    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/vendorsettings/iC;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 186
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 187
    new-instance v1, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/android/vendorsettings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v1, p0, Lcom/android/vendorsettings/MiuiSettings;->te:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    .line 188
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->te:Lcom/android/vendorsettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/accounts/AuthenticatorHelper;->al(Landroid/content/Context;)V

    .line 189
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v3, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/MiuiSettings;->c(Landroid/os/Bundle;)V

    .line 194
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiSettings;->fS()V

    .line 196
    new-instance v0, Lcom/android/vendorsettings/vpn2/VpnManager;

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/vpn2/VpnManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    .line 197
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 202
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 203
    return-void
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 948
    sget-object v0, Lcom/android/vendorsettings/MiuiSettings;->tb:Ljava/util/HashMap;

    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 949
    if-eqz v0, :cond_0

    .line 950
    const-string v1, "entry_level_primary"

    invoke-static {v1, v0}, Lcom/android/vendorsettings/analytics/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    :cond_0
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->th:Ljava/lang/String;

    .line 953
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f1303b1

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 954
    invoke-static {p0}, Lmiui/payment/PaymentManager;->get(Landroid/content/Context;)Lmiui/payment/PaymentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/payment/PaymentManager;->gotoMiliCenter(Landroid/app/Activity;)V

    .line 995
    :cond_1
    :goto_0
    return-void

    .line 955
    :cond_2
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f1303bb

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 956
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 957
    const-string v1, "com.miui.home"

    const-string v2, "com.miui.home.launcher.setting.WallpaperSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 958
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 959
    :cond_3
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f1303bc

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 960
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 961
    const-string v1, "com.android.thememanager"

    const-string v2, "com.android.thememanager.activity.ThemeSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 962
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 963
    :cond_4
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f1303b0

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    .line 964
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.xiaomi"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 965
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 967
    :cond_5
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.xiaomi"

    move-object v3, v2

    move-object v4, v2

    move-object v5, p0

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0

    .line 969
    :cond_6
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f1303ac

    cmp-long v0, v0, v4

    if-nez v0, :cond_7

    .line 970
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 971
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "theme://zhuti.xiaomi.com/list?S.REQUEST_RESOURCE_CODE=fonts&miback=true&miref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 978
    const-string v1, ":miui:starting_window_label"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 979
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 980
    :cond_7
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f1303c7

    cmp-long v0, v0, v4

    if-nez v0, :cond_8

    sget-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v0, :cond_8

    .line 981
    const-string v4, "com.android.settings.accounts.AccountSettings"

    iget-object v5, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget v8, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    iget v9, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    move-object v3, p0

    move-object v6, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/vendorsettings/MiuiSettings;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    goto/16 :goto_0

    .line 983
    :cond_8
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 984
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/android/vendorsettings/MiuiSettings;->a(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 987
    :cond_9
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget v8, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    iget v9, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    move-object v3, p0

    move-object v6, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/vendorsettings/MiuiSettings;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    goto/16 :goto_0

    .line 989
    :cond_a
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 990
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1303b7

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1303b2

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 991
    :cond_b
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    const-string v1, ":miui:starting_window_label"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 993
    :cond_c
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 314
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 316
    sget v1, Lmiui/R$id;->content:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/vendorsettings/BaseFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/vendorsettings/BaseFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/vendorsettings/BaseFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const/4 v0, 0x1

    .line 322
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 327
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 329
    sget v1, Lmiui/R$id;->content:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/vendorsettings/BaseFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/vendorsettings/BaseFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/vendorsettings/BaseFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    const/4 v0, 0x1

    .line 335
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/MiuiSettings;->setIntent(Landroid/content/Intent;)V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/MiuiSettings;->ti:Z

    .line 210
    invoke-direct {p0}, Lcom/android/vendorsettings/MiuiSettings;->fS()V

    .line 211
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 340
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->finish()V

    .line 342
    const/4 v0, 0x1

    .line 344
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1082
    const-string v0, "select_header"

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSettings;->th:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->th:Ljava/lang/String;

    .line 1083
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1084
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 603
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 605
    iget-object v0, p0, Lcom/android/vendorsettings/MiuiSettings;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    invoke-virtual {v0}, Lcom/android/vendorsettings/vpn2/VpnManager;->vQ()I

    move-result v0

    .line 606
    iget v1, p0, Lcom/android/vendorsettings/MiuiSettings;->tk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 607
    iput v0, p0, Lcom/android/vendorsettings/MiuiSettings;->tk:I

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    iget v1, p0, Lcom/android/vendorsettings/MiuiSettings;->tk:I

    if-eq v0, v1, :cond_0

    .line 609
    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSettings;->tg:Lcom/android/vendorsettings/SettingsFragment;

    invoke-virtual {v1}, Lcom/android/vendorsettings/SettingsFragment;->aa()V

    .line 610
    iput v0, p0, Lcom/android/vendorsettings/MiuiSettings;->tk:I

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1076
    const-string v0, "select_header"

    iget-object v1, p0, Lcom/android/vendorsettings/MiuiSettings;->th:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1078
    return-void
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 7

    .prologue
    .line 1031
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/MiuiSettings;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1032
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 3

    .prologue
    .line 1037
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 1038
    invoke-super/range {p0 .. p6}, Lmiui/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1060
    :goto_0
    return-void

    .line 1041
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1042
    invoke-virtual {v1, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1043
    if-nez v0, :cond_3

    .line 1044
    if-lez p5, :cond_2

    .line 1045
    if-nez p2, :cond_1

    .line 1046
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1048
    :cond_1
    const-string v0, ":android:show_fragment_title"

    invoke-virtual {p2, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1050
    :cond_2
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1052
    :cond_3
    if-eqz p3, :cond_4

    .line 1053
    invoke-virtual {v0, p3, p4}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1056
    :cond_4
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1057
    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1058
    sget v2, Lmiui/R$id;->content:I

    invoke-virtual {v1, v2, v0, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1059
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method
