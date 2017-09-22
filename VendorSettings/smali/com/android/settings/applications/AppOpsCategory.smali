.class public Lcom/android/settings/applications/AppOpsCategory;
.super Landroid/app/ListFragment;
.source "AppOpsCategory.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# instance fields
.field Fv:Lcom/android/settings/applications/AppOpsState;

.field Fw:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

.field Fx:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/applications/AppOpsState$OpsTemplate;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    const-string v1, "template"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppOpsCategory;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method private jH()V
    .locals 7

    .prologue
    .line 333
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 334
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/settings/applications/AppOpsCategory;->Fx:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hn;

    .line 337
    const-class v1, Lcom/android/settings/applications/AppOpsDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c05dc

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 339
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 360
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory;->Fw:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->s(Ljava/util/List;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppOpsCategory;->setListShown(Z)V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppOpsCategory;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 310
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 314
    const-string v0, "No applications"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppOpsCategory;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 317
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppOpsCategory;->setHasOptionsMenu(Z)V

    .line 320
    new-instance v0, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppOpsCategory;->Fv:Lcom/android/settings/applications/AppOpsState;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/applications/AppOpsState;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsCategory;->Fw:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    .line 321
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory;->Fw:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppOpsCategory;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 324
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AppOpsCategory;->setListShown(Z)V

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 328
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 306
    new-instance v0, Lcom/android/settings/applications/AppOpsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppOpsState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsCategory;->Fv:Lcom/android/settings/applications/AppOpsState;

    .line 307
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 351
    const/4 v0, 0x0

    .line 352
    if-eqz v1, :cond_0

    .line 353
    const-string v0, "template"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 355
    :cond_0
    new-instance v1, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/AppOpsCategory;->Fv:Lcom/android/settings/applications/AppOpsState;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;-><init>(Landroid/content/Context;Lcom/android/settings/applications/AppOpsState;Lcom/android/settings/applications/AppOpsState$OpsTemplate;)V

    return-object v1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory;->Fw:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->az(I)Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->jJ()Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/AppOpsState$AppEntry;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsCategory;->Fx:Ljava/lang/String;

    .line 345
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsCategory;->jH()V

    .line 347
    :cond_0
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/AppOpsCategory;->a(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory;->Fw:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->s(Ljava/util/List;)V

    .line 373
    return-void
.end method
