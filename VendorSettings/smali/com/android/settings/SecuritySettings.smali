.class public Lcom/android/settings/SecuritySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/k;


# static fields
.field public static final ig:Lcom/android/settings/search/l;

.field private static final mE:I

.field private static final yH:Landroid/content/Intent;

.field private static final yI:[Ljava/lang/String;


# instance fields
.field private dC:Lcom/android/internal/widget/LockPatternUtils;

.field private dr:Lcom/android/settings/aH;

.field private ds:Landroid/app/admin/DevicePolicyManager;

.field private dt:Landroid/security/KeyStore;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private rW:Landroid/preference/CheckBoxPreference;

.field private sr:Landroid/preference/CheckBoxPreference;

.field private vW:Z

.field private yJ:Landroid/preference/ListPreference;

.field private yK:Landroid/preference/CheckBoxPreference;

.field private yL:Landroid/preference/CheckBoxPreference;

.field private yM:Landroid/preference/CheckBoxPreference;

.field private yN:Landroid/preference/Preference;

.field private yO:Landroid/preference/CheckBoxPreference;

.field private yP:Landroid/content/DialogInterface;

.field private yQ:Landroid/preference/Preference;

.field private yR:Landroid/content/Intent;

.field private yS:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/SecuritySettings;->yH:Landroid/content/Intent;

    .line 130
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lock_after_timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "visiblepattern"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "power_button_instantly_locks"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "show_password"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "toggle_install_applications"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/SecuritySettings;->yI:[Ljava/lang/String;

    .line 137
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/SecuritySettings;->mE:I

    .line 912
    new-instance v0, Lcom/android/settings/hi;

    invoke-direct {v0}, Lcom/android/settings/hi;-><init>()V

    sput-object v0, Lcom/android/settings/SecuritySettings;->ig:Lcom/android/settings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 915
    return-void
.end method

.method private U(Z)V
    .locals 3

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 634
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    :goto_0
    return-void

    .line 638
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 2

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 211
    sget v1, Lcom/android/settings/SecuritySettings;->mE:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    sget v0, Lcom/android/settings/SecuritySettings;->mE:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const v0, 0x7f080091

    .line 233
    :goto_0
    return v0

    .line 215
    :cond_0
    const v0, 0x7f08008b

    goto :goto_0

    .line 218
    :cond_1
    sget v1, Lcom/android/settings/SecuritySettings;->mE:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 220
    :sswitch_0
    const v0, 0x7f080094

    .line 221
    goto :goto_0

    .line 224
    :sswitch_1
    const v0, 0x7f080096

    .line 225
    goto :goto_0

    .line 229
    :sswitch_2
    const v0, 0x7f080093

    goto :goto_0

    .line 218
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private static a(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 597
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 598
    sget-object v1, Lcom/android/settings/SecuritySettings;->yH:Landroid/content/Intent;

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 600
    sget v1, Lcom/android/settings/SecuritySettings;->mE:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v6

    .line 602
    invoke-virtual {p2, v9}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    move v2, v3

    .line 605
    :goto_0
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    .line 606
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 607
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 608
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v7, :cond_2

    .line 606
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v2, v0

    .line 602
    goto :goto_0

    .line 609
    :cond_2
    invoke-static {v0, p0}, Lcom/android/settings/ib;->a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 610
    invoke-static {p0, v0}, Lcom/android/settings/ib;->b(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/ic;

    move-result-object v7

    .line 612
    iget-object v8, v7, Lcom/android/settings/ic;->componentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_0

    invoke-static {v0}, Lcom/android/settings/ib;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v7, Lcom/android/settings/ic;->title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 616
    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/android/settings/ib;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v9, v0}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 618
    iput-boolean v3, v7, Lcom/android/settings/ic;->Bm:Z

    .line 620
    :cond_3
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    :cond_4
    return-object v4
.end method

.method private a(Landroid/preference/PreferenceGroup;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 530
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->dC:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/android/settings/SecuritySettings;->mE:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    .line 531
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->dC:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->ds:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v0, v1, v4}, Lcom/android/settings/SecuritySettings;->a(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v4

    move v1, v2

    .line 533
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 534
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ic;

    .line 535
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 537
    const-string v6, "trust_agent"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 538
    iget-object v6, v0, Lcom/android/settings/ic;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v6, v0, Lcom/android/settings/ic;->summary:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 541
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 542
    iget-object v7, v0, Lcom/android/settings/ic;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 543
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 546
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 548
    iget-boolean v0, v0, Lcom/android/settings/ic;->Bm:Z

    if-eqz v0, :cond_1

    .line 549
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 550
    const v0, 0x7f0c0b06

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 533
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 551
    :cond_1
    if-nez v3, :cond_0

    .line 552
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 553
    const v0, 0x7f0c0269

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 556
    :cond_2
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/android/settings/SecuritySettings;->mE:I

    return v0
.end method

.method static synthetic b(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1

    .prologue
    .line 89
    invoke-static {p0, p1}, Lcom/android/settings/SecuritySettings;->a(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 89
    invoke-static {p0, p1, p2}, Lcom/android/settings/SecuritySettings;->a(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private dP()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 645
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_security_encryption_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private hA()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 681
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const-wide/16 v4, 0x1388

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 683
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->yJ:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yJ:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 685
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->ds:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->ds:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 686
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v4, v4

    .line 688
    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    .line 692
    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/SecuritySettings;->m(J)V

    .line 694
    :cond_0
    return-void

    :cond_1
    move-wide v0, v2

    .line 685
    goto :goto_0
.end method

.method private hB()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 698
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_screen_lock_after_timeout"

    const-wide/16 v4, 0x1388

    invoke-static {v0, v2, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 700
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yJ:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 701
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yJ:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    move v0, v1

    move v2, v1

    .line 703
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_1

    .line 704
    aget-object v7, v6, v0

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 705
    cmp-long v7, v4, v8

    if-ltz v7, :cond_0

    move v2, v0

    .line 703
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "trust_agent"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 711
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 712
    aget-object v4, v6, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 713
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->yJ:Landroid/preference/ListPreference;

    const v3, 0x7f0c01d8

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 722
    :goto_1
    return-void

    .line 716
    :cond_2
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->yJ:Landroid/preference/ListPreference;

    const v5, 0x7f0c01d9

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v2, v3, v2

    aput-object v2, v6, v1

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v6, v10

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 720
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yJ:Landroid/preference/ListPreference;

    const v4, 0x7f0c01d7

    new-array v5, v10, [Ljava/lang/Object;

    aget-object v2, v3, v2

    aput-object v2, v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private hu()Landroid/preference/PreferenceScreen;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 247
    :cond_0
    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->dC:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0, v1}, Lcom/android/settings/SecuritySettings;->a(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    .line 254
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->hv()V

    .line 258
    sget v0, Lcom/android/settings/SecuritySettings;->mE:I

    if-nez v0, :cond_c

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->vW:Z

    .line 260
    const-string v0, "owner_info_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->yS:Landroid/preference/Preference;

    .line 261
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yS:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yS:Landroid/preference/Preference;

    new-instance v1, Lcom/android/settings/hh;

    invoke-direct {v1, p0}, Lcom/android/settings/hh;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 288
    :cond_1
    const-string v0, "security_category"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 290
    if-eqz v0, :cond_2

    .line 293
    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->a(Landroid/preference/PreferenceGroup;)V

    .line 297
    :cond_2
    const-string v0, "lock_after_timeout"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->yJ:Landroid/preference/ListPreference;

    .line 298
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yJ:Landroid/preference/ListPreference;

    if-eqz v0, :cond_3

    .line 299
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->hA()V

    .line 300
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->hB()V

    .line 304
    :cond_3
    const-string v0, "visiblepattern"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->rW:Landroid/preference/CheckBoxPreference;

    .line 307
    const-string v0, "power_button_instantly_locks"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->sr:Landroid/preference/CheckBoxPreference;

    .line 309
    const-string v0, "trust_agent"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->sr:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 313
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->sr:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0c0566

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 319
    :cond_4
    const v0, 0x7f080092

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 322
    const-string v0, "advanced_security"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 325
    const-string v1, "security_encryption_title"

    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiui/preference/ValuePreference;

    .line 327
    const-string v2, "encryption"

    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 328
    iget-boolean v2, p0, Lcom/android/settings/SecuritySettings;->vW:Z

    if-eqz v2, :cond_f

    .line 329
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 330
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->dP()Z

    move-result v2

    if-eqz v2, :cond_d

    const v2, 0x7f0c1181

    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v1, v4}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 332
    if-eqz v0, :cond_5

    .line 333
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 349
    :cond_5
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 352
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 354
    iget-boolean v2, p0, Lcom/android/settings/SecuritySettings;->vW:Z

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/android/settings/fy;->gg()Lcom/android/settings/fy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/fy;->isMultiSimSupported()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 355
    invoke-static {}, Lcom/android/settings/fy;->gg()Lcom/android/settings/fy;

    move-result-object v1

    const-string v2, "sim_lock"

    invoke-virtual {v1, v6, v2}, Lcom/android/settings/fy;->a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 368
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_to_app_enabled"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    .line 370
    const-string v1, "screen_pinning_settings"

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0abb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 374
    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings;->vW:Z

    if-nez v1, :cond_7

    .line 375
    const-string v1, "sim_lock"

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 376
    if-eqz v1, :cond_7

    .line 377
    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 382
    :cond_7
    const-string v1, "show_password"

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->yK:Landroid/preference/CheckBoxPreference;

    .line 383
    const-string v1, "credentials_reset"

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->yN:Landroid/preference/Preference;

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 387
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->dt:Landroid/security/KeyStore;

    .line 388
    const-string v2, "no_config_credentials"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 389
    const-string v2, "credential_storage_type"

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 391
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->dt:Landroid/security/KeyStore;

    invoke-virtual {v2}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v2

    if-eqz v2, :cond_13

    const v2, 0x7f0c07e8

    .line 394
    :goto_4
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 404
    :goto_5
    const-string v2, "device_admin_category"

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 406
    const-string v3, "toggle_install_applications"

    invoke-virtual {p0, v3}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/SecuritySettings;->yO:Landroid/preference/CheckBoxPreference;

    .line 408
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->yO:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->hy()Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 411
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->yO:Landroid/preference/CheckBoxPreference;

    sget v3, Lcom/android/settings/SecuritySettings;->mE:I

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-nez v3, :cond_15

    move v3, v4

    :goto_6
    invoke-virtual {v7, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 412
    const-string v3, "no_install_unknown_sources"

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "no_install_apps"

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 414
    :cond_8
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->yO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 418
    :cond_9
    if-eqz v0, :cond_a

    .line 419
    const-string v1, "manage_trust_agents"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->dC:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/android/settings/SecuritySettings;->mE:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 421
    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 422
    const v1, 0x7f0c0269

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 426
    :cond_a
    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 427
    const-string v0, "user_experience_program"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->yL:Landroid/preference/CheckBoxPreference;

    .line 428
    const-string v0, "upload_debug_log"

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->yM:Landroid/preference/CheckBoxPreference;

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/e;->cf(Landroid/content/Context;)Lcom/android/settings/search/e;

    move-result-object v0

    const-class v1, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Lcom/android/settings/search/e;->b(Ljava/lang/String;ZZ)V

    move v0, v5

    .line 437
    :goto_7
    sget-object v1, Lcom/android/settings/SecuritySettings;->yI:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 438
    sget-object v1, Lcom/android/settings/SecuritySettings;->yI:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 439
    if-eqz v1, :cond_b

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 437
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_c
    move v0, v5

    .line 258
    goto/16 :goto_0

    .line 330
    :cond_d
    const-string v2, ""

    goto/16 :goto_1

    .line 336
    :cond_e
    if-eqz v0, :cond_5

    .line 337
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 341
    :cond_f
    if-eqz v0, :cond_5

    .line 342
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 343
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 358
    :cond_10
    iget-boolean v2, p0, Lcom/android/settings/SecuritySettings;->vW:Z

    if-eqz v2, :cond_11

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->hw()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/e/a;->isDcOnlyVirtualSim(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "hide_sim_lock_settings_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 363
    :cond_11
    const-string v1, "sim_lock"

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 366
    :cond_12
    const-string v1, "sim_lock"

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->hx()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 391
    :cond_13
    const v2, 0x7f0c07e9

    goto/16 :goto_4

    .line 396
    :cond_14
    const-string v2, "credentials_management"

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 398
    const-string v3, "credentials_reset"

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 399
    const-string v3, "credentials_install"

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 400
    const-string v3, "credential_storage_type"

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_15
    move v3, v5

    .line 411
    goto/16 :goto_6

    .line 443
    :cond_16
    const-string v0, "manage_notification_access"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->yQ:Landroid/preference/Preference;

    .line 444
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yQ:Landroid/preference/Preference;

    if-eqz v0, :cond_17

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAccessSettings;->e(Landroid/content/pm/PackageManager;)I

    move-result v0

    .line 446
    if-nez v0, :cond_18

    .line 447
    if-eqz v2, :cond_17

    .line 448
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yQ:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 463
    :cond_17
    :goto_8
    return-object v6

    .line 452
    :cond_18
    if-nez v0, :cond_19

    .line 453
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yQ:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0a6d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 456
    :cond_19
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->yQ:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11000b

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method private hv()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 476
    const-string v1, "ad_control_settings"

    .line 477
    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 478
    if-eqz v2, :cond_1

    .line 480
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_0

    .line 482
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.miui.systemAdSolution"

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 485
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 486
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "SupportPersonalizedAd"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 492
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 493
    const-string v0, "security_settings_access_control"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 494
    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 499
    :cond_1
    return-void

    .line 488
    :catch_0
    move-exception v1

    .line 489
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private hw()Z
    .locals 3

    .prologue
    .line 561
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 562
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 565
    if-eqz v0, :cond_1

    .line 566
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 567
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    const/4 v0, 0x1

    .line 573
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hx()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 580
    .line 581
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 583
    if-eqz v0, :cond_1

    .line 584
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 585
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 586
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    move v0, v1

    .line 592
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hy()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 628
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private hz()V
    .locals 3

    .prologue
    .line 651
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c04c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0575

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->yP:Landroid/content/DialogInterface;

    .line 658
    return-void
.end method

.method private m(J)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 725
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yJ:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 726
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yJ:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 727
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 728
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 729
    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_1

    .line 730
    aget-object v6, v3, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 731
    cmp-long v6, v6, p1

    if-gtz v6, :cond_0

    .line 732
    aget-object v6, v2, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 736
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v2, v2

    if-ne v0, v2, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v2, v3

    if-eq v0, v2, :cond_3

    .line 737
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->yJ:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 739
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->yJ:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 741
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yJ:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 742
    int-to-long v2, v0

    cmp-long v2, v2, p1

    if-gtz v2, :cond_3

    .line 743
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->yJ:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 750
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yJ:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 751
    return-void
.end method


# virtual methods
.method protected ay()I
    .locals 1

    .prologue
    .line 906
    const v0, 0x7f0c09be

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const-class v0, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hC()V
    .locals 3

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yS:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 804
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->yS:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->dC:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings/SecuritySettings;->mE:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->dC:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings/SecuritySettings;->mE:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 808
    :cond_0
    return-void

    .line 804
    :cond_1
    const v0, 0x7f0c01de

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 858
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 859
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 860
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yR:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yR:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 862
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->yR:Landroid/content/Intent;

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->hu()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yP:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    .line 663
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    .line 664
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->U(Z)V

    .line 665
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->yO:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 666
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->yO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 669
    :cond_0
    return-void

    .line 663
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 196
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->dC:Lcom/android/internal/widget/LockPatternUtils;

    .line 198
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->ds:Landroid/app/admin/DevicePolicyManager;

    .line 200
    new-instance v0, Lcom/android/settings/aH;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/aH;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->dr:Lcom/android/settings/aH;

    .line 202
    if-eqz p1, :cond_0

    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->yR:Landroid/content/Intent;

    .line 206
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 673
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 674
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yP:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yP:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 677
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 871
    .line 872
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 873
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->dr:Lcom/android/settings/aH;

    invoke-virtual {v3}, Lcom/android/settings/aH;->aE()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 874
    const-string v4, "lock_after_timeout"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 875
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 877
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_lock_after_timeout"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->hB()V

    .line 901
    :cond_0
    :goto_1
    return v1

    .line 879
    :catch_0
    move-exception v0

    .line 880
    const-string v2, "SecuritySettings"

    const-string v3, "could not persist lockAfter timeout setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 883
    :cond_1
    const-string v4, "visiblepattern"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 884
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget v2, Lcom/android/settings/SecuritySettings;->mE:I

    invoke-virtual {v3, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    goto :goto_1

    .line 885
    :cond_2
    const-string v4, "power_button_instantly_locks"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 886
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->dC:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget v3, Lcom/android/settings/SecuritySettings;->mE:I

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    goto :goto_1

    .line 887
    :cond_3
    const-string v4, "show_password"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 888
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_password"

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 890
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget v2, Lcom/android/settings/SecuritySettings;->mE:I

    invoke-virtual {v3, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePasswordEnabled(ZI)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 888
    goto :goto_2

    .line 891
    :cond_5
    const-string v3, "toggle_install_applications"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 893
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 894
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->hz()V

    move v1, v2

    .line 896
    goto :goto_1

    .line 898
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/settings/SecuritySettings;->U(Z)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 812
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 813
    const-string v1, "unlock_set_or_change"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 816
    const-string v0, "com.android.settings.MiuiSecuritySettings"

    const/16 v1, 0x7b

    invoke-virtual {p0, p0, v0, v1, v3}, Lcom/android/settings/SecuritySettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 849
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 818
    :cond_1
    const-string v1, "trust_agent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 819
    new-instance v0, Lcom/android/settings/aH;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/aH;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 821
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->yR:Landroid/content/Intent;

    .line 822
    const/16 v1, 0x7e

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/aH;->b(ILjava/lang/CharSequence;)Z

    move-result v0

    .line 824
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yR:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yR:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 827
    iput-object v3, p0, Lcom/android/settings/SecuritySettings;->yR:Landroid/content/Intent;

    goto :goto_0

    .line 836
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->yL:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    .line 837
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 838
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/MiuiSettings$Secure;->enableUserExperienceProgram(Landroid/content/ContentResolver;Z)V

    goto :goto_0

    .line 839
    :cond_3
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->yM:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    .line 840
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 841
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/MiuiSettings$Secure;->enableUploadDebugLog(Landroid/content/ContentResolver;Z)V

    goto :goto_0

    .line 842
    :cond_4
    const-string v1, "lock_screen_unlock_show"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 843
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 844
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_lock_before_unlock"

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 763
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 767
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->hu()Landroid/preference/PreferenceScreen;

    .line 769
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->dr:Lcom/android/settings/aH;

    invoke-virtual {v0}, Lcom/android/settings/aH;->aE()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 770
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->rW:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 771
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->rW:Landroid/preference/CheckBoxPreference;

    sget v4, Lcom/android/settings/SecuritySettings;->mE:I

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 774
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->sr:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 775
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->sr:Landroid/preference/CheckBoxPreference;

    sget v4, Lcom/android/settings/SecuritySettings;->mE:I

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yK:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 780
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->yK:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "show_password"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 784
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yL:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 785
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Secure;->isUserExperienceProgramEnable(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 786
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->yL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 789
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yM:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 790
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Secure;->isUploadDebugLogEnable(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 791
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->yM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 795
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yN:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    .line 796
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yN:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->dt:Landroid/security/KeyStore;

    invoke-virtual {v3}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 799
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->hC()V

    .line 800
    return-void

    :cond_6
    move v0, v2

    .line 780
    goto :goto_0

    :cond_7
    move v1, v2

    .line 796
    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 755
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 756
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->yR:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 757
    const-string v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->yR:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 759
    :cond_0
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 182
    const/16 v0, 0x57

    return v0
.end method
