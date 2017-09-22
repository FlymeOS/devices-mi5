.class public Lcom/android/vendorsettings/R;
.super Landroid/widget/BaseAdapter;
.source "AutoDisableScreenButtonsAppListSettings.java"


# instance fields
.field private D:Ljava/util/List;

.field final synthetic bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

.field mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)V
    .locals 1

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/vendorsettings/R;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 355
    new-instance v0, Lcom/android/vendorsettings/S;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/S;-><init>(Lcom/android/vendorsettings/R;)V

    iput-object v0, p0, Lcom/android/vendorsettings/R;->mClickListener:Landroid/view/View$OnClickListener;

    .line 275
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/R;I)I
    .locals 1

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/R;->i(I)I

    move-result v0

    return v0
.end method

.method private h(I)I
    .locals 2

    .prologue
    .line 385
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->bC:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 386
    sget-object v1, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->bC:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 389
    :goto_1
    return v0

    .line 385
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private i(I)I
    .locals 1

    .prologue
    .line 393
    if-ltz p1, :cond_0

    sget-object v0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->bC:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 394
    :cond_0
    const/4 v0, 0x3

    .line 395
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->bC:[I

    aget v0, v0, p1

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/android/vendorsettings/V;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 365
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/vendorsettings/R;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->d(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c1152

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/android/vendorsettings/R;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    iget-object v1, v1, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->bB:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/vendorsettings/V;->e(Lcom/android/vendorsettings/V;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/vendorsettings/R;->h(I)I

    move-result v2

    new-instance v3, Lcom/android/vendorsettings/T;

    invoke-direct {v3, p0, p1}, Lcom/android/vendorsettings/T;-><init>(Lcom/android/vendorsettings/R;Lcom/android/vendorsettings/V;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 380
    iget-object v1, p0, Lcom/android/vendorsettings/R;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->a(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 381
    iget-object v0, p0, Lcom/android/vendorsettings/R;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->i(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 382
    return-void
.end method

.method public g(I)Lcom/android/vendorsettings/V;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/vendorsettings/R;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/V;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/vendorsettings/R;->D:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/R;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/R;->g(I)Lcom/android/vendorsettings/V;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 308
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/vendorsettings/R;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/V;

    invoke-static {v0}, Lcom/android/vendorsettings/V;->c(Lcom/android/vendorsettings/V;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 313
    iget-object v0, p0, Lcom/android/vendorsettings/R;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/V;

    .line 315
    invoke-static {v0}, Lcom/android/vendorsettings/V;->c(Lcom/android/vendorsettings/V;)I

    move-result v1

    if-nez v1, :cond_3

    .line 316
    if-nez p2, :cond_1

    .line 317
    new-instance v2, Lcom/android/vendorsettings/U;

    invoke-direct {v2, p0, v4}, Lcom/android/vendorsettings/U;-><init>(Lcom/android/vendorsettings/R;Lcom/android/vendorsettings/N;)V

    .line 318
    iget-object v1, p0, Lcom/android/vendorsettings/R;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->g(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f04001d

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 319
    const v1, 0x1020006

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/android/vendorsettings/U;->icon:Landroid/widget/ImageView;

    .line 320
    const v1, 0x1020016

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/vendorsettings/U;->title:Landroid/widget/TextView;

    .line 321
    const v1, 0x1020010

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/vendorsettings/U;->summary:Landroid/widget/TextView;

    .line 322
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 327
    :goto_0
    invoke-static {v0}, Lcom/android/vendorsettings/V;->d(Lcom/android/vendorsettings/V;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 328
    iget-object v2, v1, Lcom/android/vendorsettings/U;->summary:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    :goto_1
    iget-object v2, p0, Lcom/android/vendorsettings/R;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v2}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->h(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Lcom/android/vendorsettings/q;

    move-result-object v2

    iget-object v3, v1, Lcom/android/vendorsettings/U;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/vendorsettings/V;->Q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/vendorsettings/q;->a(Landroid/widget/ImageView;Ljava/lang/String;)Z

    .line 336
    iget-object v1, v1, Lcom/android/vendorsettings/U;->title:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/vendorsettings/V;->b(Lcom/android/vendorsettings/V;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    const v1, 0x7f0c114d

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/android/vendorsettings/R;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    :cond_0
    :goto_2
    return-object p2

    .line 324
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vendorsettings/U;

    goto :goto_0

    .line 331
    :cond_2
    iget-object v2, v1, Lcom/android/vendorsettings/U;->summary:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/vendorsettings/V;->d(Lcom/android/vendorsettings/V;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v2, v1, Lcom/android/vendorsettings/U;->summary:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 339
    :cond_3
    invoke-static {v0}, Lcom/android/vendorsettings/V;->c(Lcom/android/vendorsettings/V;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 340
    if-nez p2, :cond_4

    .line 341
    new-instance v2, Lcom/android/vendorsettings/U;

    invoke-direct {v2, p0, v4}, Lcom/android/vendorsettings/U;-><init>(Lcom/android/vendorsettings/R;Lcom/android/vendorsettings/N;)V

    .line 342
    iget-object v1, p0, Lcom/android/vendorsettings/R;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->g(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f04001c

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 343
    const v1, 0x7f13003c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/vendorsettings/U;->bK:Landroid/widget/TextView;

    .line 344
    invoke-virtual {p2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 345
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 349
    :goto_3
    iget-object v1, v1, Lcom/android/vendorsettings/U;->bK:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/vendorsettings/V;->b(Lcom/android/vendorsettings/V;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 347
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vendorsettings/U;

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x2

    return v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/vendorsettings/R;->D:Ljava/util/List;

    .line 284
    return-void
.end method
