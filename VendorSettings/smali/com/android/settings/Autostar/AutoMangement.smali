.class public Lcom/android/settings/Autostar/AutoMangement;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AutoMangement.java"


# instance fields
.field bO:Landroid/preference/PreferenceGroup;

.field bP:Ljava/util/ArrayList;

.field private bQ:Ljava/util/List;

.field bR:Landroid/app/Fragment;

.field bS:Landroid/widget/TextView;

.field bT:Landroid/widget/TextView;

.field bU:Landroid/widget/FrameLayout;

.field bV:Landroid/view/View$OnClickListener;

.field i:Landroid/content/pm/PackageManager;

.field mActivity:Landroid/app/Activity;

.field mClickListener:Landroid/view/View$OnClickListener;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 54
    new-instance v0, Lcom/android/settings/Autostar/a;

    invoke-direct {v0, p0}, Lcom/android/settings/Autostar/a;-><init>(Lcom/android/settings/Autostar/AutoMangement;)V

    iput-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->mClickListener:Landroid/view/View$OnClickListener;

    .line 79
    new-instance v0, Lcom/android/settings/Autostar/b;

    invoke-direct {v0, p0}, Lcom/android/settings/Autostar/b;-><init>(Lcom/android/settings/Autostar/AutoMangement;)V

    iput-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bV:Landroid/view/View$OnClickListener;

    .line 52
    return-void
.end method

.method private R()V
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->i:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 117
    invoke-static {v0}, Lcom/android/settings/Autostar/AutoMangement;->b(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/Autostar/AutoMangement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/miui/AppOpsUtils;->getApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/android/settings/Autostar/AutoMangement;->bQ:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/android/settings/Autostar/AutoMangement;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/settings/Autostar/AutoMangement;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/Autostar/AutoMangement;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bQ:Ljava/util/List;

    return-object v0
.end method

.method public static b(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    .line 126
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method S()V
    .locals 8

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/settings/Autostar/AutoMangement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 134
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bO:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 135
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 136
    invoke-direct {p0}, Lcom/android/settings/Autostar/AutoMangement;->R()V

    .line 138
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bQ:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/Autostar/AutoMangement;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->i:Landroid/content/pm/PackageManager;

    invoke-static {v0, v6, v1}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 143
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 144
    new-instance v0, Lcom/android/settings/Autostar/c;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/Autostar/c;-><init>(Lcom/android/settings/Autostar/AutoMangement;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/Autostar/AutoMangement;Landroid/content/pm/ApplicationInfo;)V

    .line 145
    iget-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->bP:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->bO:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 151
    :cond_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 96
    const v0, 0x7f04001f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->mView:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->mView:Landroid/view/View;

    const v1, 0x7f130041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 98
    iget-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->mView:Landroid/view/View;

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->bT:Landroid/widget/TextView;

    .line 99
    iget-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->mView:Landroid/view/View;

    const v2, 0x7f130040

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->bS:Landroid/widget/TextView;

    .line 100
    iget-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->mView:Landroid/view/View;

    const v2, 0x7f13003f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->bU:Landroid/widget/FrameLayout;

    .line 101
    iget-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->bV:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcom/android/settings/Autostar/AutoMangement;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/Autostar/AutoMangement;->S()V

    .line 109
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 156
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/android/settings/Autostar/AutoMangement;->addPreferencesFromResource(I)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/Autostar/AutoMangement;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->i:Landroid/content/pm/PackageManager;

    .line 158
    iput-object p0, p0, Lcom/android/settings/Autostar/AutoMangement;->bR:Landroid/app/Fragment;

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/Autostar/AutoMangement;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->mActivity:Landroid/app/Activity;

    .line 160
    const-string v0, "autorun"

    invoke-virtual {p0, v0}, Lcom/android/settings/Autostar/AutoMangement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bO:Landroid/preference/PreferenceGroup;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bQ:Ljava/util/List;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bP:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/Autostar/AutoMangement;->S()V

    .line 164
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bO:Landroid/preference/PreferenceGroup;

    const v1, 0x7f0c0f17

    invoke-virtual {p0, v1}, Lcom/android/settings/Autostar/AutoMangement;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/Autostar/AutoMangement;->bQ:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 170
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/Autostar/AutoMangement;->S()V

    .line 172
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bS:Landroid/widget/TextView;

    const v1, 0x7f0c0f17

    invoke-virtual {p0, v1}, Lcom/android/settings/Autostar/AutoMangement;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/Autostar/AutoMangement;->bQ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bU:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bT:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bU:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bT:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
