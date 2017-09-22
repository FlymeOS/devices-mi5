.class public Lcom/android/settings/vpn2/AppPreference;
.super Lcom/android/settings/vpn2/ManageablePreference;
.source "AppPreference.java"


# instance fields
.field private mName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mState:I

.field private mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/vpn2/ManageablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View$OnClickListener;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/vpn2/AppPreference;->mState:I

    .line 49
    iput-object p3, p0, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    .line 50
    iput p4, p0, Lcom/android/settings/vpn2/AppPreference;->mUid:I

    .line 51
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppPreference;->update()V

    .line 52
    return-void
.end method

.method private update()V
    .locals 5

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 87
    iget v1, p0, Lcom/android/settings/vpn2/AppPreference;->mState:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settings/vpn2/AppPreference;->mState:I

    aget-object v0, v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/AppPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/vpn2/AppPreference;->mName:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    .line 94
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppPreference;->vE()Landroid/content/Context;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 100
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 101
    if-eqz v3, :cond_0

    .line 102
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 103
    iget-object v3, p0, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/internal/net/VpnConfig;->getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/vpn2/AppPreference;->mName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 109
    :try_start_2
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 114
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/settings/vpn2/AppPreference;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/AppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/AppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppPreference;->notifyHierarchyChanged()V

    .line 118
    return-void

    .line 87
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    goto :goto_2

    .line 105
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private vE()Landroid/content/Context;
    .locals 4

    .prologue
    .line 121
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/settings/vpn2/AppPreference;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2

    .prologue
    .line 127
    instance-of v0, p1, Lcom/android/settings/vpn2/AppPreference;

    if-eqz v0, :cond_1

    .line 128
    check-cast p1, Lcom/android/settings/vpn2/AppPreference;

    .line 130
    iget v0, p1, Lcom/android/settings/vpn2/AppPreference;->mState:I

    iget v1, p0, Lcom/android/settings/vpn2/AppPreference;->mState:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/AppPreference;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/vpn2/AppPreference;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget v0, p0, Lcom/android/settings/vpn2/AppPreference;->mUid:I

    iget v1, p1, Lcom/android/settings/vpn2/AppPreference;->mUid:I

    sub-int/2addr v0, v1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    instance-of v0, p1, Lcom/android/settings/vpn2/ConfigPreference;

    if-eqz v0, :cond_2

    .line 138
    check-cast p1, Lcom/android/settings/vpn2/ConfigPreference;

    .line 139
    invoke-virtual {p1, p0}, Lcom/android/settings/vpn2/ConfigPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    .line 141
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/vpn2/ManageablePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 37
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/AppPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/vpn2/AppPreference;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/settings/vpn2/AppPreference;->mState:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/android/settings/vpn2/AppPreference;->mUid:I

    return v0
.end method

.method public setState(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/android/settings/vpn2/AppPreference;->mState:I

    .line 82
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppPreference;->update()V

    .line 83
    return-void
.end method

.method public vD()Landroid/content/pm/PackageInfo;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/settings/vpn2/AppPreference;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 57
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppPreference;->vE()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const/4 v0, 0x0

    goto :goto_0
.end method
