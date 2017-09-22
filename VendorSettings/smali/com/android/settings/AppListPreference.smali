.class public Lcom/android/vendorsettings/AppListPreference;
.super Landroid/preference/ListPreference;
.source "AppListPreference.java"


# instance fields
.field private aV:[Landroid/graphics/drawable/Drawable;

.field private aW:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/AppListPreference;->aW:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/AppListPreference;->aW:Z

    .line 82
    return-void
.end method


# virtual methods
.method protected J()Landroid/widget/ListAdapter;
    .locals 7

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/vendorsettings/AppListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/android/vendorsettings/AppListPreference;->aW:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 138
    :goto_0
    if-eqz v0, :cond_2

    const/4 v6, -0x1

    .line 139
    :goto_1
    new-instance v0, Lcom/android/vendorsettings/B;

    invoke-virtual {p0}, Lcom/android/vendorsettings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040015

    invoke-virtual {p0}, Lcom/android/vendorsettings/AppListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/vendorsettings/AppListPreference;->aV:[Landroid/graphics/drawable/Drawable;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/vendorsettings/B;-><init>(Lcom/android/vendorsettings/AppListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V

    return-object v0

    .line 136
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/AppListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    goto :goto_1
.end method

.method public a([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 9

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/android/vendorsettings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 95
    array-length v2, p1

    iget-boolean v0, p0, Lcom/android/vendorsettings/AppListPreference;->aW:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    .line 96
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v3

    .line 100
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_2

    .line 102
    :try_start_0
    aget-object v0, p1, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    if-eqz p2, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    move v0, v2

    .line 100
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 95
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_2

    .line 115
    :cond_2
    iget-boolean v0, p0, Lcom/android/vendorsettings/AppListPreference;->aW:Z

    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {p0}, Lcom/android/vendorsettings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0b69

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v0, ""

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {p0}, Lcom/android/vendorsettings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020150

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/AppListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 123
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/AppListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 125
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/vendorsettings/AppListPreference;->aV:[Landroid/graphics/drawable/Drawable;

    .line 127
    if-eq v2, v3, :cond_4

    .line 128
    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/AppListPreference;->setValueIndex(I)V

    .line 132
    :goto_3
    return-void

    .line 130
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/AppListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/vendorsettings/AppListPreference;->aW:Z

    .line 90
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/vendorsettings/AppListPreference;->J()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 147
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 157
    instance-of v0, p1, Lcom/android/vendorsettings/AppListPreference$SavedState;

    if-eqz v0, :cond_0

    .line 158
    check-cast p1, Lcom/android/vendorsettings/AppListPreference$SavedState;

    .line 159
    iget-boolean v0, p1, Lcom/android/vendorsettings/AppListPreference$SavedState;->bc:Z

    iput-boolean v0, p0, Lcom/android/vendorsettings/AppListPreference;->aW:Z

    .line 160
    iget-object v0, p1, Lcom/android/vendorsettings/AppListPreference$SavedState;->ba:[Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/android/vendorsettings/AppListPreference$SavedState;->bb:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/AppListPreference;->a([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p1, Lcom/android/vendorsettings/AppListPreference$SavedState;->bd:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 151
    invoke-super {p0}, Landroid/preference/ListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 152
    new-instance v1, Lcom/android/vendorsettings/AppListPreference$SavedState;

    invoke-virtual {p0}, Lcom/android/vendorsettings/AppListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/vendorsettings/AppListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/vendorsettings/AppListPreference;->aW:Z

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/vendorsettings/AppListPreference$SavedState;-><init>([Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/os/Parcelable;)V

    return-object v1
.end method
