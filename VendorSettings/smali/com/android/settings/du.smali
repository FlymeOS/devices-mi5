.class Lcom/android/settings/du;
.super Landroid/preference/Preference;
.source "HomeSettings.java"


# instance fields
.field index:I

.field final synthetic nW:Lcom/android/settings/HomeSettings;

.field nX:Landroid/content/ComponentName;

.field nY:Lcom/android/settings/HomeSettings;

.field final nZ:Landroid/graphics/ColorFilter;

.field oa:Z

.field ob:Z

.field oc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/HomeSettings;Landroid/content/pm/ActivityInfo;ZLjava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/settings/du;->nW:Lcom/android/settings/HomeSettings;

    .line 311
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 312
    const v0, 0x7f0400de

    invoke-virtual {p0, v0}, Lcom/android/settings/du;->setLayoutResource(I)V

    .line 313
    invoke-virtual {p0, p5}, Lcom/android/settings/du;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 314
    invoke-virtual {p0, p6}, Lcom/android/settings/du;->setTitle(Ljava/lang/CharSequence;)V

    .line 315
    invoke-virtual {p0, p9}, Lcom/android/settings/du;->setEnabled(Z)V

    .line 316
    invoke-virtual {p0, p10}, Lcom/android/settings/du;->setSummary(Ljava/lang/CharSequence;)V

    .line 317
    iput-object p3, p0, Lcom/android/settings/du;->nX:Landroid/content/ComponentName;

    .line 318
    iput-object p7, p0, Lcom/android/settings/du;->nY:Lcom/android/settings/HomeSettings;

    .line 319
    iput p4, p0, Lcom/android/settings/du;->index:I

    .line 321
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 322
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 323
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    .line 324
    const/16 v2, 0x12

    const/high16 v3, 0x3f000000    # 0.5f

    aput v3, v1, v2

    .line 325
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v1, p0, Lcom/android/settings/du;->nZ:Landroid/graphics/ColorFilter;

    .line 327
    invoke-direct {p0, p8}, Lcom/android/settings/du;->a(Landroid/content/pm/ActivityInfo;)V

    .line 328
    return-void
.end method

.method private a(Landroid/content/pm/ActivityInfo;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 333
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 334
    if-eqz v2, :cond_1

    .line 335
    const-string v3, "android.app.home.alternate"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 336
    if-eqz v2, :cond_1

    .line 338
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/du;->nW:Lcom/android/settings/HomeSettings;

    invoke-static {v3}, Lcom/android/settings/HomeSettings;->d(Lcom/android/settings/HomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 339
    if-ltz v3, :cond_1

    .line 340
    iget-object v3, p0, Lcom/android/settings/du;->nW:Lcom/android/settings/HomeSettings;

    invoke-static {v3}, Lcom/android/settings/HomeSettings;->d(Lcom/android/settings/HomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 341
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 342
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/du;->ob:Z

    .line 343
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/du;->oc:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_1
    return-void

    :cond_0
    move v2, v1

    .line 342
    goto :goto_0

    .line 346
    :catch_0
    move-exception v2

    .line 348
    const-string v3, "HomeSettings"

    const-string v4, "Unable to compare/resolve alternate"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    :cond_1
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings/du;->ob:Z

    .line 354
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/du;->oc:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v0, v1

    .line 353
    goto :goto_2
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 359
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 361
    const v0, 0x7f1301be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 362
    iget-boolean v1, p0, Lcom/android/settings/du;->oa:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 364
    new-instance v1, Ljava/lang/Integer;

    iget v0, p0, Lcom/android/settings/du;->index:I

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 366
    const v0, 0x7f1301bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 367
    iget-boolean v2, p0, Lcom/android/settings/du;->ob:Z

    if-eqz v2, :cond_0

    .line 368
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 369
    iget-object v2, p0, Lcom/android/settings/du;->nZ:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 376
    :goto_0
    const v0, 0x7f130042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 377
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 379
    iget-object v1, p0, Lcom/android/settings/du;->nW:Lcom/android/settings/HomeSettings;

    iget-object v1, v1, Lcom/android/settings/HomeSettings;->nU:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    return-void

    .line 371
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 372
    iget-object v2, p0, Lcom/android/settings/du;->nW:Lcom/android/settings/HomeSettings;

    iget-object v2, v2, Lcom/android/settings/HomeSettings;->nV:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method setChecked(Z)V
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/android/settings/du;->oa:Z

    if-eq p1, v0, :cond_0

    .line 384
    iput-boolean p1, p0, Lcom/android/settings/du;->oa:Z

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/du;->notifyChanged()V

    .line 387
    :cond_0
    return-void
.end method
