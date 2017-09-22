.class public Lcom/android/vendorsettings/applications/ApplicationsContainer;
.super Lcom/android/vendorsettings/BaseFragment;
.source "ApplicationsContainer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/vendorsettings/applications/ManageAppClickListener;
.implements Lcom/android/vendorsettings/applications/RunningState$OnRefreshUiListener;
.implements Lmiui/app/ActionBar$FragmentViewPagerChangeListener;


# instance fields
.field Fx:Ljava/lang/String;

.field private HA:Lcom/android/b/a/a;

.field private Hn:I

.field Ho:Lcom/android/b/a/o;

.field private Hp:Z

.field private final Hq:Ljava/util/ArrayList;

.field private Hr:Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

.field private Hs:[I

.field private Ht:Landroid/view/Menu;

.field private Hu:Landroid/app/AlertDialog;

.field private Hv:I

.field private Hw:Lmiui/app/ActionBar;

.field private Hx:Lcom/android/vendorsettings/applications/RunningState;

.field private Hy:Ljava/util/ArrayList;

.field private Hz:Landroid/os/Handler;

.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 73
    invoke-direct {p0}, Lcom/android/vendorsettings/BaseFragment;-><init>()V

    .line 111
    iput v1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hn:I

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hq:Ljava/util/ArrayList;

    .line 127
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hs:[I

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hv:I

    .line 135
    new-instance v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/applications/ApplicationsContainer$1;-><init>(Lcom/android/vendorsettings/applications/ApplicationsContainer;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hz:Landroid/os/Handler;

    .line 545
    return-void

    .line 127
    nop

    :array_0
    .array-data 4
        0x7f0c05a3
        0x7f0c05a5
        0x7f0c05a6
        0x7f0c0eec
    .end array-data
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/ApplicationsContainer;)Lcom/android/vendorsettings/applications/RunningState;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    return-object v0
.end method

.method private aF(I)V
    .locals 2

    .prologue
    .line 325
    iput p1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hv:I

    .line 326
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hr:Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    .line 327
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hr:Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->a(Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 330
    const/4 v0, 0x0

    .line 331
    packed-switch p1, :pswitch_data_0

    .line 342
    :goto_0
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/RunningApplicationsFragment;->update()V

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->ke()V

    .line 347
    return-void

    .line 333
    :pswitch_0
    const v0, 0x7f0c05a6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/RunningApplicationsFragment;

    goto :goto_0

    .line 338
    :pswitch_1
    const v0, 0x7f0c0eec

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/RunningApplicationsFragment;

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/android/vendorsettings/applications/ApplicationsContainer;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hp:Z

    return v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/applications/ApplicationsContainer;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hq:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/applications/ApplicationsContainer;)Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hr:Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    return-object v0
.end method

.method static synthetic e(Lcom/android/vendorsettings/applications/ApplicationsContainer;)I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hn:I

    return v0
.end method

.method private jH()V
    .locals 3

    .prologue
    .line 537
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 538
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.applications.InstalledAppDetailsTop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    const-string v1, "package"

    iget-object v2, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Fx:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    const-string v1, "is_xspace_app"

    iget-object v2, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Ho:Lcom/android/b/a/o;

    iget-boolean v2, v2, Lcom/android/b/a/o;->aIG:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 541
    const-string v1, ":android:show_fragment_title"

    const v2, 0x7f0c0578

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 542
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->startActivity(Landroid/content/Intent;)V

    .line 543
    return-void
.end method

.method private kd()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 255
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hw:Lmiui/app/ActionBar;

    if-eqz v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hw:Lmiui/app/ActionBar;

    .line 259
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hw:Lmiui/app/ActionBar;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/app/ActionBar;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V

    .line 260
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hw:Lmiui/app/ActionBar;

    invoke-virtual {v0, p0}, Lmiui/app/ActionBar;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    move v3, v7

    .line 262
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hs:[I

    array-length v0, v0

    if-ge v3, v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hw:Lmiui/app/ActionBar;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 264
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hs:[I

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 265
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hs:[I

    aget v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 267
    const/4 v4, 0x0

    .line 269
    packed-switch v3, :pswitch_data_0

    move v0, v7

    .line 291
    :goto_2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 292
    const-string v8, "filter_app_key"

    invoke-virtual {v5, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 293
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hw:Lmiui/app/ActionBar;

    invoke-virtual/range {v0 .. v6}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I

    .line 295
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hw:Lmiui/app/ActionBar;

    invoke-virtual {v0, v3}, Lmiui/app/ActionBar;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0, p0, v7}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 262
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 272
    :pswitch_0
    const-class v4, Lcom/android/vendorsettings/applications/ManageApplicationsFragment;

    move v0, v7

    .line 273
    goto :goto_2

    .line 277
    :pswitch_1
    const-class v4, Lcom/android/vendorsettings/applications/ManageApplicationsFragment;

    move v0, v6

    .line 278
    goto :goto_2

    .line 281
    :pswitch_2
    const/4 v0, 0x2

    .line 282
    const-class v4, Lcom/android/vendorsettings/applications/RunningApplicationsFragment;

    goto :goto_2

    .line 286
    :pswitch_3
    const/4 v0, 0x3

    .line 287
    const-class v4, Lcom/android/vendorsettings/applications/RunningApplicationsFragment;

    goto :goto_2

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hw:Lmiui/app/ActionBar;

    iget v1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hv:I

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 223
    if-nez p1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hn:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hn:I

    .line 227
    const-string v0, "defaultListType"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 228
    if-eq v0, v2, :cond_2

    .line 229
    iput v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hv:I

    .line 232
    :cond_2
    const-string v0, "resetDialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->kg()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;)V
    .locals 2

    .prologue
    .line 495
    invoke-virtual {p1}, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;->isUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 498
    :cond_0
    iput-object p1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hr:Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    .line 501
    iget-boolean v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hp:Z

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hr:Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    iget v1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hn:I

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;->resume(I)V

    .line 507
    :goto_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->ke()V

    .line 508
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->invalidateOptionsMenu()V

    goto :goto_0

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hr:Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;->pause()V

    goto :goto_1
.end method

.method public a(Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    const v5, 0x7f0c0578

    .line 519
    iget-object v0, p1, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;->HX:Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;->HX:Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;->getCount()I

    move-result v0

    if-le v0, p4, :cond_0

    .line 520
    iget-object v0, p1, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;->HX:Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {v0, p4}, Lcom/android/vendorsettings/applications/ApplicationsContainer$ApplicationsAdapter;->aI(I)Lcom/android/b/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Ho:Lcom/android/b/a/o;

    .line 521
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Ho:Lcom/android/b/a/o;

    iget-object v0, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Fx:Ljava/lang/String;

    .line 522
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/vendorsettings/MiuiSettings;

    if-eqz v0, :cond_1

    .line 523
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 524
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Fx:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v0, ":android:show_fragment_title"

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 526
    const-class v0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->a(Lmiui/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->jH()V

    goto :goto_0
.end method

.method public a(Lcom/android/vendorsettings/applications/RunningState$OnRefreshUiListener;)V
    .locals 1

    .prologue
    .line 1017
    if-nez p1, :cond_0

    .line 1021
    :goto_0
    return-void

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hy:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public aG(I)V
    .locals 2

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/RunningState$OnRefreshUiListener;

    .line 1012
    invoke-interface {v0, p1}, Lcom/android/vendorsettings/applications/RunningState$OnRefreshUiListener;->aG(I)V

    goto :goto_0

    .line 1014
    :cond_0
    return-void
.end method

.method public b(Lcom/android/vendorsettings/applications/RunningState$OnRefreshUiListener;)V
    .locals 1

    .prologue
    .line 1024
    if-nez p1, :cond_0

    .line 1028
    :goto_0
    return-void

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hy:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public kc()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hq:Ljava/util/ArrayList;

    return-object v0
.end method

.method ke()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 873
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Ht:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 890
    :goto_0
    return-void

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hr:Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hr:Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    iget v0, v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;->HT:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hr:Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    iget v0, v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;->HT:I

    if-ne v0, v1, :cond_4

    .line 882
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Ht:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hn:I

    if-eq v0, v4, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 883
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Ht:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hn:I

    if-eq v3, v5, :cond_2

    move v2, v1

    :cond_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 884
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Ht:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v0, v2

    .line 882
    goto :goto_1

    .line 886
    :cond_4
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Ht:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 887
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Ht:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 888
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Ht:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public kf()I
    .locals 1

    .prologue
    .line 916
    iget v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hv:I

    return v0
.end method

.method kg()V
    .locals 3

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hu:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 921
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 922
    const v1, 0x7f0c059d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 923
    const v1, 0x7f0c059e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 924
    const v1, 0x7f0c059f

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 925
    const v1, 0x7f0c01a6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 926
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hu:Landroid/app/AlertDialog;

    .line 927
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hu:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 929
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hu:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 942
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 944
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    .line 945
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 946
    new-instance v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/vendorsettings/applications/ApplicationsContainer$2;-><init>(Lcom/android/vendorsettings/applications/ApplicationsContainer;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/ApplicationsContainer$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1007
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 145
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->mActivity:Landroid/app/Activity;

    .line 147
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/a/a;->a(Landroid/app/Application;)Lcom/android/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->HA:Lcom/android/b/a/a;

    .line 148
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 149
    const-string v1, "com.android.settings.APPLICATION_LIST_TYPE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hv:I

    .line 150
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/RunningState;->aq(Landroid/content/Context;)Lcom/android/vendorsettings/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hx:Lcom/android/vendorsettings/applications/RunningState;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hy:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->HA:Lcom/android/b/a/a;

    const v1, 0x7f0c05a3

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;-><init>(Lcom/android/vendorsettings/applications/ApplicationsContainer;Lcom/android/b/a/a;Ljava/lang/CharSequence;ILcom/android/vendorsettings/applications/ManageAppClickListener;Landroid/os/Bundle;)V

    .line 156
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->HA:Lcom/android/b/a/a;

    const v1, 0x7f0c05a5

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;-><init>(Lcom/android/vendorsettings/applications/ApplicationsContainer;Lcom/android/b/a/a;Ljava/lang/CharSequence;ILcom/android/vendorsettings/applications/ManageAppClickListener;Landroid/os/Bundle;)V

    .line 161
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->HA:Lcom/android/b/a/a;

    const v1, 0x7f0c05a6

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;-><init>(Lcom/android/vendorsettings/applications/ApplicationsContainer;Lcom/android/b/a/a;Ljava/lang/CharSequence;ILcom/android/vendorsettings/applications/ManageAppClickListener;Landroid/os/Bundle;)V

    .line 166
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->HA:Lcom/android/b/a/a;

    const v1, 0x7f0c0eec

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;-><init>(Lcom/android/vendorsettings/applications/ApplicationsContainer;Lcom/android/b/a/a;Ljava/lang/CharSequence;ILcom/android/vendorsettings/applications/ManageAppClickListener;Landroid/os/Bundle;)V

    .line 171
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/vendorsettings/MiuiSettings;

    if-eqz v0, :cond_1

    const v0, 0x7f0d0093

    .line 175
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->setThemeRes(I)V

    .line 178
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 179
    return-void

    .line 173
    :cond_1
    const v0, 0x7f0d0092

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 844
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 846
    iput-object p1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Ht:Landroid/view/Menu;

    .line 849
    const v0, 0x7f0c0597

    invoke-interface {p1, v2, v5, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 852
    const/4 v0, 0x2

    const v1, 0x7f0c0598

    invoke-interface {p1, v2, v3, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 855
    const/16 v0, 0x8

    const v1, 0x7f0c059c

    invoke-interface {p1, v2, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 857
    const/16 v0, 0x9

    const v1, 0x7f0c0fd1

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->action_button_setting_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 860
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->ke()V

    .line 862
    return v4
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 302
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hs:[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;->kh()V

    .line 302
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 305
    :cond_0
    invoke-super {p0}, Lcom/android/vendorsettings/BaseFragment;->onDetach()V

    .line 306
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hu:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 934
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hu:Landroid/app/AlertDialog;

    .line 936
    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->kd()V

    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 894
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 895
    const/4 v1, 0x4

    if-eq v3, v1, :cond_0

    const/4 v1, 0x5

    if-ne v3, v1, :cond_2

    .line 896
    :cond_0
    iget v1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hn:I

    if-ne v1, v3, :cond_1

    move v1, v2

    .line 897
    :goto_0
    iput v3, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hn:I

    move v3, v0

    .line 898
    :goto_1
    if-gt v3, v2, :cond_3

    .line 899
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hq:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;->al(Z)V

    .line 900
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hq:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->a(Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;)V

    .line 898
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move v1, v0

    .line 896
    goto :goto_0

    .line 902
    :cond_2
    const/16 v0, 0x8

    if-ne v3, v0, :cond_4

    .line 903
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->kg()V

    .line 911
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->ke()V

    .line 912
    :goto_3
    return v2

    .line 904
    :cond_4
    const/16 v0, 0x9

    if-ne v3, v0, :cond_5

    .line 905
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/vendorsettings/applications/PreferredListSettings;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 906
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 909
    :cond_5
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_3
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->aF(I)V

    .line 322
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-super {p0}, Lcom/android/vendorsettings/BaseFragment;->onPause()V

    .line 209
    iput-boolean v2, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hp:Z

    move v1, v2

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;->pause()V

    .line 210
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hz:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 867
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 869
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->ke()V

    .line 870
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 192
    invoke-super {p0}, Lcom/android/vendorsettings/BaseFragment;->onResume()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hp:Z

    .line 195
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hv:I

    if-ne v0, v1, :cond_0

    .line 196
    iput v4, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hv:I

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hq:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hv:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hr:Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    .line 200
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hr:Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->a(Lcom/android/vendorsettings/applications/ApplicationsContainer$TabInfo;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ApplicationsContainer;->ke()V

    .line 203
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hz:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 204
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 241
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hn:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    iget v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hv:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 243
    const-string v0, "defaultListType"

    iget v1, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hv:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hu:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 246
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0}, Lcom/android/vendorsettings/BaseFragment;->onStop()V

    .line 184
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hu:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hu:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ApplicationsContainer;->Hu:Landroid/app/AlertDialog;

    .line 188
    :cond_0
    return-void
.end method
