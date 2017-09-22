.class public abstract Lcom/android/vendorsettings/SettingsPreferenceFragment;
.super Lcom/android/vendorsettings/InstrumentedPreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/vendorsettings/cs;


# instance fields
.field private Aa:Landroid/view/ViewGroup;

.field private cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private nM:Landroid/graphics/drawable/Drawable;

.field private zV:Ljava/lang/String;

.field private zW:Ljava/lang/String;

.field private zX:Z

.field private zY:Landroid/widget/ListAdapter;

.field private zZ:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/android/vendorsettings/InstrumentedPreferenceFragment;-><init>()V

    .line 75
    iput-boolean v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zX:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zZ:Z

    .line 80
    new-instance v0, Lcom/android/vendorsettings/hE;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/hE;-><init>(Lcom/android/vendorsettings/SettingsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 524
    return-void
.end method

.method private S(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 308
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->hasListView()Z

    move-result v1

    if-nez v1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v0

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 313
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 315
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v2, :cond_0

    .line 316
    invoke-direct {p0, v1, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->a(Landroid/widget/ListAdapter;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private T(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->el()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 325
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->S(Ljava/lang/String;)I

    move-result v3

    .line 326
    if-ltz v3, :cond_0

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zX:Z

    .line 329
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 330
    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    move-object v0, v1

    .line 332
    check-cast v0, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroupAdapter;->setHighlightedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    check-cast v1, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroupAdapter;->setHighlighted(I)V

    .line 335
    new-instance v0, Lcom/android/vendorsettings/hF;

    invoke-direct {v0, p0, v4, v3, v2}, Lcom/android/vendorsettings/hF;-><init>(Lcom/android/vendorsettings/SettingsPreferenceFragment;Landroid/widget/ListView;ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 356
    :cond_0
    return-void
.end method

.method private Z()V
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 144
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 146
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 149
    :cond_0
    return-void
.end method

.method private a(Landroid/widget/ListAdapter;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 359
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 360
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 361
    invoke-interface {p1, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 362
    instance-of v3, v0, Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 363
    check-cast v0, Landroid/preference/Preference;

    .line 364
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 370
    :goto_1
    return v0

    .line 360
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/vendorsettings/SettingsPreferenceFragment;Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method

.method static synthetic b(Lcom/android/vendorsettings/SettingsPreferenceFragment;)Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method

.method private el()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->nM:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f020247

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->nM:Landroid/graphics/drawable/Drawable;

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->nM:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private f(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 124
    sget v0, Lmiui/R$style;->Theme_Light_Settings:I

    .line 125
    if-eqz p1, :cond_2

    .line 126
    const-string v0, "theme_res_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 132
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->setThemeRes(I)V

    .line 135
    :cond_1
    return-void

    .line 127
    :cond_2
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/vendorsettings/MiuiSettings;

    if-eqz v0, :cond_3

    const v0, 0x7f0d00ab

    goto :goto_0

    :cond_3
    sget v0, Lmiui/R$style;->Theme_Light_Settings:I

    goto :goto_0
.end method


# virtual methods
.method protected U(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 378
    :cond_0
    return-void
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 169
    invoke-super {p0, p1, p2, p3}, Lcom/android/vendorsettings/InstrumentedPreferenceFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 696
    return-void
.end method

.method public a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 671
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 672
    instance-of v1, v0, Lcom/android/vendorsettings/hn;

    if-eqz v1, :cond_0

    .line 673
    check-cast v0, Lcom/android/vendorsettings/hn;

    move-object v1, p2

    move-object v2, p5

    move v3, p3

    move-object v5, p1

    move v6, p4

    .line 674
    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move v0, v7

    .line 685
    :goto_0
    return v0

    .line 676
    :cond_0
    instance-of v1, v0, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_1

    .line 677
    check-cast v0, Landroid/preference/PreferenceActivity;

    move-object v1, p2

    move-object v2, p5

    move v3, p3

    move-object v5, p1

    move v6, p4

    .line 678
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move v0, v7

    .line 679
    goto :goto_0

    .line 681
    :cond_1
    const-string v0, "SettingsPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parent isn\'t SettingsActivity nor PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    .line 661
    const v3, 0x7f0c0552

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z
    .locals 6

    .prologue
    .line 666
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public af(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->Aa:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 181
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->f(Landroid/view/View;)V

    .line 182
    return-object v0
.end method

.method public ag(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 707
    iget-object v1, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v1}, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->hW()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 716
    :cond_0
    :goto_0
    return v0

    .line 712
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v1}, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 713
    if-eqz v1, :cond_0

    .line 716
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method protected ay()I
    .locals 1

    .prologue
    .line 385
    const v0, 0x7f0c09a3

    return v0
.end method

.method public f(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->Aa:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->Aa:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 191
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->Aa:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 194
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 656
    :goto_0
    return-void

    .line 641
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/vendorsettings/MiuiSettings;

    if-eqz v0, :cond_2

    .line 642
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 643
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 644
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    .line 646
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 649
    :cond_2
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 650
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 652
    :cond_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/al;

    invoke-interface {v0}, Lcom/android/vendorsettings/al;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hR()V
    .locals 2

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zZ:Z

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zY:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zY:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zY:Landroid/widget/ListAdapter;

    .line 276
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zY:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zZ:Z

    .line 279
    :cond_1
    return-void
.end method

.method public hS()V
    .locals 2

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zZ:Z

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zY:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zY:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zY:Landroid/widget/ListAdapter;

    .line 287
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zZ:Z

    .line 289
    :cond_1
    return-void
.end method

.method public hT()V
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zX:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zW:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zW:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->T(Ljava/lang/String;)V

    .line 295
    :cond_0
    return-void
.end method

.method public final hU()V
    .locals 0

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->finish()V

    .line 403
    return-void
.end method

.method public hV()V
    .locals 0

    .prologue
    .line 522
    return-void
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/al;

    invoke-interface {v0}, Lcom/android/vendorsettings/al;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/android/vendorsettings/InstrumentedPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 211
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zV:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 214
    :cond_0
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->hR()V

    .line 251
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/vendorsettings/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    if-eqz p1, :cond_0

    .line 100
    const-string v0, "android:preference_highlighted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zX:Z

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->ay()I

    move-result v0

    .line 105
    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zV:Ljava/lang/String;

    .line 109
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->f(Landroid/os/Bundle;)V

    .line 110
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zV:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zV:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/vendorsettings/dn;->a(Landroid/app/Activity;Landroid/view/Menu;Ljava/lang/String;Ljava/lang/String;)Z

    .line 393
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 447
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 471
    :cond_0
    invoke-super {p0}, Lcom/android/vendorsettings/InstrumentedPreferenceFragment;->onDetach()V

    .line 472
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 157
    if-eqz p2, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/vendorsettings/fy;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 162
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 163
    const v0, 0x7f1300b3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->Aa:Landroid/view/ViewGroup;

    .line 164
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 454
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 459
    invoke-super {p0, p1}, Lcom/android/vendorsettings/InstrumentedPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 456
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->finish()V

    .line 457
    const/4 v0, 0x1

    goto :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 237
    invoke-super {p0}, Lcom/android/vendorsettings/InstrumentedPreferenceFragment;->onPause()V

    .line 238
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    const-string v0, "SettingsPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalStateException occurs in SettingsPreferenceFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 218
    invoke-super {p0}, Lcom/android/vendorsettings/InstrumentedPreferenceFragment;->onResume()V

    .line 220
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    .line 222
    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zW:Ljava/lang/String;

    .line 223
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->hT()V

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_1
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const-string v0, "SettingsPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalStateException occurs in SettingsPreferenceFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/android/vendorsettings/InstrumentedPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 204
    const-string v0, "theme_res_id"

    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    const-string v0, "android:preference_highlighted"

    iget-boolean v1, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->zX:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 206
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 435
    invoke-super {p0}, Lcom/android/vendorsettings/InstrumentedPreferenceFragment;->onStart()V

    .line 437
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->Z()V

    .line 438
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 260
    invoke-super {p0}, Lcom/android/vendorsettings/InstrumentedPreferenceFragment;->onStop()V

    .line 262
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->hS()V

    .line 263
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->hS()V

    .line 256
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->hW()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 495
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 496
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-static {v0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->a(Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    .line 518
    :cond_0
    return-void
.end method

.method protected showDialog(I)V
    .locals 3

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 478
    const-string v0, "SettingsPreferenceFragment"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    new-instance v0, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/vendorsettings/cs;I)V

    iput-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 481
    iget-object v0, p0, Lcom/android/vendorsettings/SettingsPreferenceFragment;->cr:Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x1

    return v0
.end method
