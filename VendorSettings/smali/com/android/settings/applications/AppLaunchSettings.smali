.class public Lcom/android/vendorsettings/applications/AppLaunchSettings;
.super Lcom/android/vendorsettings/applications/AppInfoWithHeader;
.source "AppLaunchSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Fq:Z

.field private Fr:Lcom/android/vendorsettings/DropDownPreference;

.field private Fs:Lcom/android/vendorsettings/applications/AppDomainsPreference;

.field private Ft:Lcom/android/vendorsettings/applications/ClearDefaultsPreference;

.field private i:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/AppLaunchSettings;I)Z
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/applications/AppLaunchSettings;->ay(I)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->i:Landroid/content/pm/PackageManager;

    invoke-static {v0, p1}, Lcom/android/vendorsettings/iC;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    return-object v0
.end method

.method private ay(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 129
    iget-object v1, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->i:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v1

    .line 131
    if-ne v1, p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->i:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3, p1, v2}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    move-result v1

    .line 136
    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->i:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v1

    .line 139
    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 141
    :cond_2
    const-string v0, "AppLaunchSettings"

    const-string v2, "Couldn\'t update intent verification status!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method private jG()V
    .locals 4

    .prologue
    const/4 v1, 0x4

    .line 92
    const-string v0, "app_link_state"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/DropDownPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->Fr:Lcom/android/vendorsettings/DropDownPreference;

    .line 99
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->Fr:Lcom/android/vendorsettings/DropDownPreference;

    const v2, 0x7f0c0b14

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/vendorsettings/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->Fr:Lcom/android/vendorsettings/DropDownPreference;

    const v2, 0x7f0c0b15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/vendorsettings/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->Fr:Lcom/android/vendorsettings/DropDownPreference;

    const v2, 0x7f0c0b16

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/vendorsettings/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->Fr:Lcom/android/vendorsettings/DropDownPreference;

    iget-boolean v2, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->Fq:Z

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/DropDownPreference;->setEnabled(Z)V

    .line 107
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->Fq:Z

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->i:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v0

    .line 112
    iget-object v2, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->Fr:Lcom/android/vendorsettings/DropDownPreference;

    if-nez v0, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/vendorsettings/DropDownPreference;->o(Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->Fr:Lcom/android/vendorsettings/DropDownPreference;

    new-instance v1, Lcom/android/vendorsettings/applications/AppLaunchSettings$1;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/applications/AppLaunchSettings$1;-><init>(Lcom/android/vendorsettings/applications/AppLaunchSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/DropDownPreference;->a(Lcom/android/vendorsettings/cO;)V

    .line 125
    :cond_1
    return-void
.end method


# virtual methods
.method protected f(II)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/android/vendorsettings/applications/AppLaunchSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected jF()Z
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->Ft:Lcom/android/vendorsettings/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/ClearDefaultsPreference;->setPackageName(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->Ft:Lcom/android/vendorsettings/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->Fi:Lcom/android/b/a/o;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/ClearDefaultsPreference;->b(Lcom/android/b/a/o;)V

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/vendorsettings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f08004e

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/AppLaunchSettings;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/AppLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->i:Landroid/content/pm/PackageManager;

    .line 75
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->Fi:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->Fq:Z

    .line 77
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->i:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 79
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->i:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 81
    const-string v0, "app_launch_supported_domain_urls"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/AppDomainsPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->Fs:Lcom/android/vendorsettings/applications/AppDomainsPreference;

    .line 82
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vendorsettings/applications/AppLaunchSettings;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->Fs:Lcom/android/vendorsettings/applications/AppDomainsPreference;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/applications/AppDomainsPreference;->a([Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->Fs:Lcom/android/vendorsettings/applications/AppDomainsPreference;

    array-length v0, v0

    new-array v0, v0, [I

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/applications/AppDomainsPreference;->a([I)V

    .line 86
    const-string v0, "app_launch_clear_defaults"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/ClearDefaultsPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppLaunchSettings;->Ft:Lcom/android/vendorsettings/applications/ClearDefaultsPreference;

    .line 88
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/AppLaunchSettings;->jG()V

    .line 89
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 178
    const/16 v0, 0x11

    return v0
.end method
