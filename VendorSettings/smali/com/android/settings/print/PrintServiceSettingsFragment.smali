.class public Lcom/android/settings/print/PrintServiceSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings/widget/I;


# instance fields
.field private CW:Lcom/android/settings/widget/ToggleSwitch;

.field private DC:Ljava/lang/CharSequence;

.field private DD:Landroid/content/Intent;

.field private R:Landroid/content/ComponentName;

.field private aic:Ljava/lang/CharSequence;

.field private final amh:Lcom/android/settings/print/l;

.field private final ami:Landroid/database/DataSetObserver;

.field private amj:Ljava/lang/CharSequence;

.field private amk:Landroid/content/Intent;

.field private aml:Ljava/lang/CharSequence;

.field private amm:Ljava/lang/CharSequence;

.field private amn:Lcom/android/settings/print/h;

.field private amo:I

.field private amp:Z

.field private amq:Lmiui/widget/SlidingButton;

.field private me:Lcom/android/settings/widget/SwitchBar;

.field private zW:Ljava/lang/String;

.field private zt:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 94
    new-instance v0, Lcom/android/settings/print/b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/b;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amh:Lcom/android/settings/print/l;

    .line 107
    new-instance v0, Lcom/android/settings/print/c;

    invoke-direct {v0, p0}, Lcom/android/settings/print/c;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->ami:Landroid/database/DataSetObserver;

    .line 709
    return-void
.end method

.method static synthetic a(Lcom/android/settings/print/PrintServiceSettingsFragment;I)I
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amo:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->tf()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->te()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/print/PrintServiceSettingsFragment;I)V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->showDialog(I)V

    return-void
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 236
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/print/u;->bV(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 238
    if-eqz p2, :cond_0

    .line 239
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/settings/print/u;->f(Landroid/content/Context;Ljava/util/List;)V

    .line 244
    return-void

    .line 241
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings/print/PrintServiceSettingsFragment;)Lcom/android/settings/print/h;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amn:Lcom/android/settings/print/h;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/print/PrintServiceSettingsFragment;I)V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/print/PrintServiceSettingsFragment;)I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amo:I

    return v0
.end method

.method static synthetic e(Lcom/android/settings/print/PrintServiceSettingsFragment;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amm:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/print/PrintServiceSettingsFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->zW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/print/PrintServiceSettingsFragment;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->me:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method private initComponents()V
    .locals 3

    .prologue
    .line 357
    new-instance v0, Lcom/android/settings/print/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/h;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;Lcom/android/settings/print/b;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amn:Lcom/android/settings/print/h;

    .line 358
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amn:Lcom/android/settings/print/h;

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->ami:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings/print/h;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hn;

    .line 362
    invoke-virtual {v0}, Lcom/android/settings/hn;->hD()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->me:Lcom/android/settings/widget/SwitchBar;

    .line 363
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/I;)V

    .line 364
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 366
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->wO()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->CW:Lcom/android/settings/widget/ToggleSwitch;

    .line 367
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->CW:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/print/e;

    invoke-direct {v1, p0}, Lcom/android/settings/print/e;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->a(Lcom/android/settings/widget/M;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amn:Lcom/android/settings/print/h;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 387
    return-void
.end method

.method static synthetic j(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->R:Landroid/content/ComponentName;

    return-object v0
.end method

.method private te()V
    .locals 10

    .prologue
    const v9, 0x7f0c06f7

    const v8, 0x7f0c06ee

    const v7, 0x7f040073

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 292
    invoke-virtual {v3}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 293
    invoke-virtual {v3}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v2

    .line 294
    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->CW:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v4}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    .line 295
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f1300ea

    if-eq v4, v5, :cond_0

    .line 296
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v2, v1

    .line 299
    :cond_0
    if-nez v2, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v7, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 302
    const v1, 0x7f130060

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 303
    invoke-virtual {p0, v9}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 304
    const v1, 0x7f130051

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 305
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    .line 306
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 307
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 337
    :cond_1
    :goto_0
    return-void

    .line 309
    :cond_2
    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amn:Lcom/android/settings/print/h;

    invoke-virtual {v4}, Lcom/android/settings/print/h;->getUnfilteredCount()I

    move-result v4

    if-gtz v4, :cond_4

    .line 310
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f1300ec

    if-eq v4, v5, :cond_3

    .line 312
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v2, v1

    .line 315
    :cond_3
    if-nez v2, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040074

    invoke-virtual {v1, v2, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 318
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 319
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 321
    :cond_4
    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amn:Lcom/android/settings/print/h;

    invoke-virtual {v4}, Lcom/android/settings/print/h;->getCount()I

    move-result v4

    if-gtz v4, :cond_1

    .line 322
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f1300ea

    if-eq v4, v5, :cond_5

    .line 323
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 326
    :goto_1
    if-nez v1, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v7, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 329
    const v1, 0x7f130060

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 330
    invoke-virtual {p0, v8}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 331
    const v1, 0x7f130051

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 332
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 333
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 334
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    move-object v1, v2

    goto :goto_1
.end method

.method private tf()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/print/u;->bV(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->R:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amp:Z

    .line 342
    iget-boolean v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amp:Z

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->bw(Z)V

    .line 345
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amq:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amn:Lcom/android/settings/print/h;

    invoke-virtual {v0}, Lcom/android/settings/print/h;->enable()V

    .line 353
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 354
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->bw(Z)V

    .line 350
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amq:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 351
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amn:Lcom/android/settings/print/h;

    invoke-virtual {v0}, Lcom/android/settings/print/h;->disable()V

    goto :goto_0
.end method

.method private tg()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 399
    const-string v0, "EXTRA_PREFERENCE_KEY"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->zW:Ljava/lang/String;

    .line 402
    const-string v0, "EXTRA_CHECKED"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 403
    iget-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->bw(Z)V

    .line 406
    const-string v0, "EXTRA_SETTINGS_TITLE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 407
    const-string v0, "EXTRA_SETTINGS_COMPONENT_NAME"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 410
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 414
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 416
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_0

    .line 417
    iput-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->DC:Ljava/lang/CharSequence;

    .line 418
    iput-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->DD:Landroid/content/Intent;

    .line 424
    :cond_0
    const-string v0, "EXTRA_ADD_PRINTERS_TITLE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 426
    const-string v0, "EXTRA_ADD_PRINTERS_COMPONENT_NAME"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 430
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 434
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 436
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_1

    .line 437
    iput-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amj:Ljava/lang/CharSequence;

    .line 438
    iput-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amk:Landroid/content/Intent;

    .line 444
    :cond_1
    const-string v0, "EXTRA_ENABLE_WARNING_TITLE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->aml:Ljava/lang/CharSequence;

    .line 448
    const-string v0, "EXTRA_ENABLE_WARNING_MESSAGE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amm:Ljava/lang/CharSequence;

    .line 452
    const-string v0, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->R:Landroid/content/ComponentName;

    .line 455
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->setHasOptionsMenu(Z)V

    .line 456
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Switch;Z)V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->te()V

    .line 393
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 270
    packed-switch p2, :pswitch_data_0

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 272
    :pswitch_0
    const/4 v0, 0x1

    .line 273
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->bw(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_CHECKED"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->zW:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->b(Ljava/lang/String;Z)V

    .line 288
    :goto_0
    return-void

    .line 280
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amq:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->bw(Z)V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_CHECKED"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->zW:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->b(Ljava/lang/String;Z)V

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 248
    .line 250
    packed-switch p1, :pswitch_data_0

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 252
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->aml:Ljava/lang/CharSequence;

    .line 253
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amm:Ljava/lang/CharSequence;

    .line 258
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .prologue
    const v4, 0x7f1303e7

    const v3, 0x7f1303e6

    const v2, 0x7f1303e5

    .line 460
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 461
    const v0, 0x7f140005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 463
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 464
    iget-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amp:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amj:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amk:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amk:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 471
    :goto_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 472
    iget-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amp:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->DC:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->DD:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 474
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->DD:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 479
    :goto_1
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 480
    iget-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amp:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amn:Lcom/android/settings/print/h;

    invoke-virtual {v1}, Lcom/android/settings/print/h;->getUnfilteredCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 481
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->zt:Landroid/widget/SearchView;

    .line 482
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->zt:Landroid/widget/SearchView;

    new-instance v1, Lcom/android/settings/print/f;

    invoke-direct {v1, p0}, Lcom/android/settings/print/f;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 494
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->zt:Landroid/widget/SearchView;

    new-instance v1, Lcom/android/settings/print/g;

    invoke-direct {v1, p0}, Lcom/android/settings/print/g;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 515
    :goto_2
    return-void

    .line 468
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    .line 476
    :cond_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1

    .line 513
    :cond_2
    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_2
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->aic:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->aic:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 230
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 231
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/I;)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 233
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 202
    const v0, 0x7f0400ff

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 203
    const v0, 0x7f1301e3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amq:Lmiui/widget/SlidingButton;

    .line 204
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amq:Lmiui/widget/SlidingButton;

    new-instance v2, Lcom/android/settings/print/d;

    invoke-direct {v2, p0}, Lcom/android/settings/print/d;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 221
    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amh:Lcom/android/settings/print/l;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/print/l;->b(Landroid/content/ContentResolver;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->zt:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->zt:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 189
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 190
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 178
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->amh:Lcom/android/settings/print/l;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/print/l;->a(Landroid/content/ContentResolver;)V

    .line 179
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->te()V

    .line 180
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->tf()V

    .line 181
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 195
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->initComponents()V

    .line 196
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->tg()V

    .line 197
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 162
    const/16 v0, 0x4f

    return v0
.end method
