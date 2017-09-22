.class Lcom/android/vendorsettings/cH;
.super Landroid/widget/ArrayAdapter;
.source "DreamSettings.java"


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic mg:Lcom/android/vendorsettings/DreamSettings;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/DreamSettings;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/vendorsettings/cH;->mg:Lcom/android/vendorsettings/DreamSettings;

    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 298
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/vendorsettings/cH;->mInflater:Landroid/view/LayoutInflater;

    .line 299
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/cH;Lcom/android/vendorsettings/cB;)V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/cH;->c(Lcom/android/vendorsettings/cB;)V

    return-void
.end method

.method private b(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/vendorsettings/cH;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04006f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 345
    const v1, 0x1020018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 346
    new-instance v2, Lcom/android/vendorsettings/cK;

    invoke-direct {v2, p0, v0}, Lcom/android/vendorsettings/cK;-><init>(Lcom/android/vendorsettings/cH;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    return-object v0
.end method

.method private c(Lcom/android/vendorsettings/cB;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 364
    invoke-direct {p0}, Lcom/android/vendorsettings/cH;->dI()Lcom/android/vendorsettings/cB;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    :goto_0
    return-void

    :cond_0
    move v1, v2

    .line 366
    :goto_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/cH;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 367
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/cH;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/cB;

    iput-boolean v2, v0, Lcom/android/vendorsettings/cB;->lY:Z

    .line 366
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 369
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/vendorsettings/cB;->lY:Z

    .line 370
    iget-object v0, p0, Lcom/android/vendorsettings/cH;->mg:Lcom/android/vendorsettings/DreamSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/DreamSettings;->a(Lcom/android/vendorsettings/DreamSettings;)Lcom/android/vendorsettings/cA;

    move-result-object v0

    iget-object v1, p1, Lcom/android/vendorsettings/cB;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/cA;->b(Landroid/content/ComponentName;)V

    .line 371
    invoke-virtual {p0}, Lcom/android/vendorsettings/cH;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private dI()Lcom/android/vendorsettings/cB;
    .locals 3

    .prologue
    .line 356
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/cH;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 357
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/cH;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/cB;

    .line 358
    iget-boolean v2, v0, Lcom/android/vendorsettings/cB;->lY:Z

    if-eqz v2, :cond_0

    .line 361
    :goto_1
    return-object v0

    .line 356
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 361
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/cH;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/cB;

    .line 304
    const-string v1, "getView(%s)"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/vendorsettings/cB;->lX:Ljava/lang/CharSequence;

    aput-object v6, v5, v3

    invoke-static {v1, v5}, Lcom/android/vendorsettings/DreamSettings;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    if-eqz p2, :cond_0

    .line 306
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 309
    const v1, 0x1020006

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/vendorsettings/cB;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    const v1, 0x1020016

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/vendorsettings/cB;->lX:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    const v1, 0x1020019

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 316
    iget-boolean v5, v0, Lcom/android/vendorsettings/cB;->lY:Z

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 317
    new-instance v5, Lcom/android/vendorsettings/cI;

    invoke-direct {v5, p0, p2}, Lcom/android/vendorsettings/cI;-><init>(Lcom/android/vendorsettings/cH;Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 325
    iget-object v1, v0, Lcom/android/vendorsettings/cB;->lZ:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 326
    :goto_1
    const v1, 0x7f1300e4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 327
    if-eqz v2, :cond_2

    move v1, v3

    :goto_2
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 329
    const v1, 0x102001a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 330
    if-eqz v2, :cond_3

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    iget-boolean v2, v0, Lcom/android/vendorsettings/cB;->lY:Z

    if-eqz v2, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 332
    iget-boolean v2, v0, Lcom/android/vendorsettings/cB;->lY:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 333
    iget-boolean v0, v0, Lcom/android/vendorsettings/cB;->lY:Z

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 334
    new-instance v0, Lcom/android/vendorsettings/cJ;

    invoke-direct {v0, p0, p2}, Lcom/android/vendorsettings/cJ;-><init>(Lcom/android/vendorsettings/cH;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    return-object p2

    .line 305
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/vendorsettings/cH;->b(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_1
    move v2, v3

    .line 325
    goto :goto_1

    :cond_2
    move v1, v4

    .line 327
    goto :goto_2

    :cond_3
    move v3, v4

    .line 330
    goto :goto_3

    .line 331
    :cond_4
    const v2, 0x3ecccccd    # 0.4f

    goto :goto_4
.end method
