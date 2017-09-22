.class final Lcom/android/settings/print/h;
.super Landroid/widget/BaseAdapter;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/Filterable;


# instance fields
.field final synthetic amr:Lcom/android/settings/print/PrintServiceSettingsFragment;

.field private final ams:Ljava/util/List;

.field private final amt:Ljava/util/List;

.field private amu:Ljava/lang/CharSequence;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 1

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/settings/print/h;->amr:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 538
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/print/h;->mLock:Ljava/lang/Object;

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/print/h;->ams:Ljava/util/List;

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/print/h;->amt:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;Lcom/android/settings/print/b;)V
    .locals 0

    .prologue
    .line 536
    invoke-direct {p0, p1}, Lcom/android/settings/print/h;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/print/h;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/settings/print/h;->amu:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/print/h;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/settings/print/h;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/print/h;)Ljava/util/List;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/settings/print/h;->ams:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/print/h;)Ljava/util/List;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/settings/print/h;->amt:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Loader;Ljava/util/List;)V
    .locals 6

    .prologue
    .line 680
    iget-object v2, p0, Lcom/android/settings/print/h;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 681
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/print/h;->ams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 682
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 683
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 684
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterInfo;

    .line 685
    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v4

    invoke-virtual {v4}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/print/h;->amr:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v5}, Lcom/android/settings/print/PrintServiceSettingsFragment;->k(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 686
    iget-object v4, p0, Lcom/android/settings/print/h;->ams:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/android/settings/print/h;->amt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 690
    iget-object v0, p0, Lcom/android/settings/print/h;->amt:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/print/h;->ams:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 691
    iget-object v0, p0, Lcom/android/settings/print/h;->amu:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 692
    invoke-virtual {p0}, Lcom/android/settings/print/h;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/h;->amu:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 694
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    invoke-virtual {p0}, Lcom/android/settings/print/h;->notifyDataSetChanged()V

    .line 696
    return-void

    .line 694
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/settings/print/h;->amr:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 552
    iget-object v0, p0, Lcom/android/settings/print/h;->ams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 553
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/settings/print/h;->amr:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 548
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 604
    iget-object v1, p0, Lcom/android/settings/print/h;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 605
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/print/h;->amt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 561
    new-instance v0, Lcom/android/settings/print/i;

    invoke-direct {v0, p0}, Lcom/android/settings/print/i;-><init>(Lcom/android/settings/print/h;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 611
    iget-object v1, p0, Lcom/android/settings/print/h;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/print/h;->amt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 618
    int-to-long v0, p1

    return-wide v0
.end method

.method public getUnfilteredCount()I
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/settings/print/h;->ams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 623
    if-nez p2, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/settings/print/h;->amr:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040101

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 628
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/print/h;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterInfo;

    .line 629
    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 633
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/print/h;->amr:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->h(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 635
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/settings/print/h;->amr:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v3}, Lcom/android/settings/print/PrintServiceSettingsFragment;->i(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 636
    :try_start_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/settings/print/h;->amr:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v3}, Lcom/android/settings/print/PrintServiceSettingsFragment;->j(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v3, v1

    move-object v1, v0

    .line 641
    :goto_0
    const v0, 0x7f130061

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 642
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    const v0, 0x7f1301e6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 645
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 646
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 653
    :goto_1
    const v0, 0x7f130060

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 654
    if-eqz v1, :cond_2

    .line 655
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 656
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 661
    :goto_2
    return-object p2

    .line 637
    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_3
    move-object v1, v2

    move-object v3, v0

    goto :goto_0

    .line 649
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 658
    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 637
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_3
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2

    .prologue
    .line 671
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 672
    new-instance v0, Lcom/android/settings/print/j;

    iget-object v1, p0, Lcom/android/settings/print/h;->amr:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/print/j;-><init>(Landroid/content/Context;)V

    .line 674
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 536
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/print/h;->a(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2

    .prologue
    .line 700
    iget-object v1, p0, Lcom/android/settings/print/h;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/print/h;->ams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 702
    iget-object v0, p0, Lcom/android/settings/print/h;->amt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 703
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/print/h;->amu:Ljava/lang/CharSequence;

    .line 704
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    invoke-virtual {p0}, Lcom/android/settings/print/h;->notifyDataSetInvalidated()V

    .line 706
    return-void

    .line 704
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
