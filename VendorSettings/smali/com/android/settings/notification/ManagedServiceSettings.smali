.class public abstract Lcom/android/settings/notification/ManagedServiceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ManagedServiceSettings.java"


# instance fields
.field private final aiJ:Lcom/android/settings/notification/ManagedServiceSettings$Config;

.field private aiK:Landroid/content/pm/PackageManager;

.field private aiL:Lcom/android/settings/notification/ServiceListing;

.field private hn:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->sf()Lcom/android/settings/notification/ManagedServiceSettings$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aiJ:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    .line 58
    return-void
.end method

.method private A(Ljava/util/List;)V
    .locals 7

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 104
    new-instance v0, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aiK:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v2}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    .line 106
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v4, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aiK:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    new-instance v5, Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 111
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 112
    iget-object v6, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aiK:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 113
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aiL:Lcom/android/settings/notification/ServiceListing;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/ServiceListing;->g(Landroid/content/ComponentName;)Z

    move-result v0

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 115
    new-instance v0, Lcom/android/settings/notification/ManagedServiceSettings$2;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/settings/notification/ManagedServiceSettings$2;-><init>(Lcom/android/settings/notification/ManagedServiceSettings;Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/ManagedServiceSettings;)Lcom/android/settings/notification/ManagedServiceSettings$Config;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aiJ:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/notification/ManagedServiceSettings;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ManagedServiceSettings;->A(Ljava/util/List;)V

    return-void
.end method

.method private a(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
    if-nez p3, :cond_1

    .line 129
    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aiL:Lcom/android/settings/notification/ServiceListing;

    invoke-virtual {v2, p1, v1}, Lcom/android/settings/notification/ServiceListing;->a(Landroid/content/ComponentName;Z)V

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 132
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aiL:Lcom/android/settings/notification/ServiceListing;

    invoke-virtual {v2, p1}, Lcom/android/settings/notification/ServiceListing;->g(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    new-instance v0, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;-><init>(Lcom/android/settings/notification/ManagedServiceSettings;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->b(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    move v0, v1

    .line 139
    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/notification/ManagedServiceSettings;Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/ManagedServiceSettings;->a(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/settings/notification/ManagedServiceSettings;)Lcom/android/settings/notification/ServiceListing;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aiL:Lcom/android/settings/notification/ServiceListing;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/notification/ManagedServiceSettings;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aiK:Landroid/content/pm/PackageManager;

    .line 66
    new-instance v0, Lcom/android/settings/notification/ServiceListing;

    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aiJ:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/notification/ServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/notification/ManagedServiceSettings$Config;)V

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aiL:Lcom/android/settings/notification/ServiceListing;

    .line 67
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aiL:Lcom/android/settings/notification/ServiceListing;

    new-instance v1, Lcom/android/settings/notification/ManagedServiceSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ManagedServiceSettings$1;-><init>(Lcom/android/settings/notification/ManagedServiceSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ServiceListing;->a(Lcom/android/settings/notification/ServiceListing$Callback;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ManagedServiceSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 74
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 81
    const v0, 0x7f0400a7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 82
    const v0, 0x1020004

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->hn:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->hn:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aiJ:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget v2, v2, Lcom/android/settings/notification/ManagedServiceSettings$Config;->aiT:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 84
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->hn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 85
    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aiL:Lcom/android/settings/notification/ServiceListing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ServiceListing;->setListening(Z)V

    .line 99
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 91
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aiL:Lcom/android/settings/notification/ServiceListing;

    invoke-virtual {v0}, Lcom/android/settings/notification/ServiceListing;->sy()Ljava/util/List;

    .line 92
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->aiL:Lcom/android/settings/notification/ServiceListing;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ServiceListing;->setListening(Z)V

    .line 93
    return-void
.end method

.method protected abstract sf()Lcom/android/settings/notification/ManagedServiceSettings$Config;
.end method
