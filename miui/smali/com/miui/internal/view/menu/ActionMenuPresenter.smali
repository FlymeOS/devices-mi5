.class public Lcom/miui/internal/view/menu/ActionMenuPresenter;
.super Lcom/miui/internal/view/menu/BaseMenuPresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/menu/ActionMenuPresenter$1;,
        Lcom/miui/internal/view/menu/ActionMenuPresenter$c;,
        Lcom/miui/internal/view/menu/ActionMenuPresenter$g;,
        Lcom/miui/internal/view/menu/ActionMenuPresenter$a;,
        Lcom/miui/internal/view/menu/ActionMenuPresenter$f;,
        Lcom/miui/internal/view/menu/ActionMenuPresenter$b;,
        Lcom/miui/internal/view/menu/ActionMenuPresenter$d;,
        Lcom/miui/internal/view/menu/ActionMenuPresenter$e;,
        Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;
    }
.end annotation


# instance fields
.field private mA:Lcom/miui/internal/view/menu/ActionMenuPresenter$d;

.field private mB:Lcom/miui/internal/view/menu/MenuItemImpl;

.field private mC:Lcom/miui/internal/view/menu/ActionMenuPresenter$a;

.field private mD:Lcom/miui/internal/view/menu/ActionMenuPresenter$c;

.field final mE:Lcom/miui/internal/view/menu/ActionMenuPresenter$g;

.field mF:I

.field private mk:Landroid/view/View;

.field private ml:Z

.field private mm:Z

.field private mn:I

.field private mo:I

.field private mp:I

.field private mq:I

.field private mr:I

.field private ms:Z

.field private mt:Z

.field private mu:Z

.field private mv:Z

.field private mw:I

.field private final mx:Landroid/util/SparseBooleanArray;

.field private my:Landroid/view/View;

.field private mz:Lcom/miui/internal/view/menu/ActionMenuPresenter$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 67
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;IIII)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 46
    const v0, 0x10102f6

    iput v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mw:I

    .line 49
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mx:Landroid/util/SparseBooleanArray;

    .line 63
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$g;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$1;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mE:Lcom/miui/internal/view/menu/ActionMenuPresenter$g;

    .line 73
    iput p4, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mr:I

    .line 74
    iput p5, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mq:I

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/view/menu/ActionMenuPresenter;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mw:I

    return v0
.end method

.method private a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 261
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 262
    if-nez v0, :cond_1

    move-object v2, v3

    .line 274
    :cond_0
    :goto_0
    return-object v2

    .line 266
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 267
    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v5, :cond_3

    .line 268
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 269
    instance-of v1, v2, Lcom/miui/internal/view/menu/MenuView$ItemView;

    if-eqz v1, :cond_2

    move-object v1, v2

    check-cast v1, Lcom/miui/internal/view/menu/MenuView$ItemView;

    invoke-interface {v1}, Lcom/miui/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 267
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 274
    goto :goto_0
.end method

.method static synthetic a(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$a;)Lcom/miui/internal/view/menu/ActionMenuPresenter$a;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mC:Lcom/miui/internal/view/menu/ActionMenuPresenter$a;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$c;)Lcom/miui/internal/view/menu/ActionMenuPresenter$c;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mD:Lcom/miui/internal/view/menu/ActionMenuPresenter$c;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$d;)Lcom/miui/internal/view/menu/ActionMenuPresenter$d;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mz:Lcom/miui/internal/view/menu/ActionMenuPresenter$d;

    return-object p1
.end method

.method private aC()Lcom/miui/internal/view/menu/ActionMenuPresenter$d;
    .locals 6

    .prologue
    .line 302
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 303
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$f;

    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v4, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mk:Landroid/view/View;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/ActionMenuPresenter$f;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 308
    :goto_0
    return-object v0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mA:Lcom/miui/internal/view/menu/ActionMenuPresenter$d;

    if-nez v0, :cond_1

    .line 306
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$b;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$1;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mA:Lcom/miui/internal/view/menu/ActionMenuPresenter$d;

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mA:Lcom/miui/internal/view/menu/ActionMenuPresenter$d;

    goto :goto_0
.end method

.method private aD()Lcom/miui/internal/view/menu/MenuItemImpl;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 313
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mB:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Lcom/miui/internal/view/menu/MenuItemImpl;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    sget v3, Lcom/miui/internal/R$id;->more:I

    iget-object v4, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    sget v5, Lcom/miui/internal/R$string;->more:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move v4, v2

    move v5, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/miui/internal/view/menu/MenuItemImpl;-><init>(Lcom/miui/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mB:Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mB:Lcom/miui/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method static synthetic b(Lcom/miui/internal/view/menu/ActionMenuPresenter;)Lcom/miui/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->aD()Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/miui/internal/view/menu/ActionMenuPresenter;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mr:I

    return v0
.end method

.method static synthetic d(Lcom/miui/internal/view/menu/ActionMenuPresenter;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mq:I

    return v0
.end method

.method static synthetic e(Lcom/miui/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mk:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public bindItemView(Lcom/miui/internal/view/menu/MenuItemImpl;Lcom/miui/internal/view/menu/MenuView$ItemView;)V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/miui/internal/view/menu/MenuView$ItemView;->initialize(Lcom/miui/internal/view/menu/MenuItemImpl;I)V

    .line 180
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Lcom/miui/internal/view/menu/MenuBuilder$ItemInvoker;

    invoke-interface {p2, v0}, Lcom/miui/internal/view/menu/MenuView$ItemView;->setItemInvoker(Lcom/miui/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 181
    return-void
.end method

.method protected createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 658
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$e;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$e;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    return-object v0
.end method

.method public dismissPopupMenus(Z)Z
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    move-result v0

    return v0
.end method

.method public flagActionItems()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 381
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 382
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 384
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mp:I

    if-ge v0, v7, :cond_1

    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mp:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    move v5, v2

    move v4, v0

    .line 386
    :goto_1
    if-ge v5, v7, :cond_5

    if-lez v4, :cond_5

    .line 387
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 388
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v3

    .line 389
    :goto_2
    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 390
    if-eqz v1, :cond_4

    .line 391
    add-int/lit8 v0, v4, -0x1

    .line 393
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move v4, v0

    .line 394
    goto :goto_1

    .line 384
    :cond_1
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mp:I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 388
    goto :goto_2

    .line 396
    :goto_4
    if-ge v1, v7, :cond_3

    .line 397
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 398
    invoke-virtual {v0, v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 399
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 400
    goto :goto_4

    .line 401
    :cond_3
    return v3

    :cond_4
    move v0, v4

    goto :goto_3

    :cond_5
    move v1, v5

    goto :goto_4
.end method

.method public getItemView(Lcom/miui/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    :cond_0
    instance-of v0, p2, Lcom/miui/internal/view/menu/ActionMenuItemView;

    if-nez v0, :cond_1

    .line 163
    const/4 p2, 0x0

    .line 165
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/miui/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 167
    :cond_2
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    check-cast p3, Lcom/miui/internal/view/menu/ActionMenuView;

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 171
    invoke-virtual {p3, v1}, Lcom/miui/internal/view/menu/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 172
    invoke-virtual {p3, v1}, Lcom/miui/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    :cond_3
    return-object v0

    .line 167
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;
    .locals 2

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object v1

    move-object v0, v1

    .line 154
    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, p0}, Lcom/miui/internal/view/menu/ActionMenuView;->setPresenter(Lcom/miui/internal/view/menu/ActionMenuPresenter;)V

    .line 155
    return-object v1
.end method

.method public hideOverflowMenu(Z)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 326
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mD:Lcom/miui/internal/view/menu/ActionMenuPresenter$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mk:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 328
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mD:Lcom/miui/internal/view/menu/ActionMenuPresenter$c;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mD:Lcom/miui/internal/view/menu/ActionMenuPresenter$c;

    .line 330
    const/4 v0, 0x1

    .line 341
    :goto_0
    return v0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mz:Lcom/miui/internal/view/menu/ActionMenuPresenter$d;

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mz:Lcom/miui/internal/view/menu/ActionMenuPresenter$d;

    invoke-interface {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$d;->isShowing()Z

    move-result v0

    .line 335
    if-eqz v0, :cond_1

    .line 336
    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mk:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mz:Lcom/miui/internal/view/menu/ActionMenuPresenter$d;

    invoke-interface {v1, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$d;->dismiss(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 341
    goto :goto_0
.end method

.method public hideSubMenus()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mC:Lcom/miui/internal/view/menu/ActionMenuPresenter$a;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mC:Lcom/miui/internal/view/menu/ActionMenuPresenter$a;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$a;->dismiss()V

    .line 361
    const/4 v0, 0x1

    .line 363
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 79
    invoke-super {p0, p1, p2}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    invoke-static {p1}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 84
    iget-boolean v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mm:Z

    if-nez v1, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/miui/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->ml:Z

    .line 88
    :cond_0
    iget-boolean v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mu:Z

    if-nez v1, :cond_1

    .line 89
    invoke-virtual {v0}, Lcom/miui/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mn:I

    .line 93
    :cond_1
    iget-boolean v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->ms:Z

    if-nez v1, :cond_2

    .line 94
    invoke-virtual {v0}, Lcom/miui/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mp:I

    .line 97
    :cond_2
    iget v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mn:I

    .line 98
    iget-boolean v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->ml:Z

    if-eqz v1, :cond_4

    .line 99
    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mk:Landroid/view/View;

    if-nez v1, :cond_3

    .line 100
    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mk:Landroid/view/View;

    .line 101
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 102
    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mk:Landroid/view/View;

    invoke-virtual {v2, v1, v1}, Landroid/view/View;->measure(II)V

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mk:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 109
    :goto_0
    iput v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mo:I

    .line 112
    iput-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->my:Landroid/view/View;

    .line 113
    return-void

    .line 106
    :cond_4
    iput-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mk:Landroid/view/View;

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mz:Lcom/miui/internal/view/menu/ActionMenuPresenter$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mz:Lcom/miui/internal/view/menu/ActionMenuPresenter$d;

    invoke-interface {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->ml:Z

    return v0
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    .line 407
    invoke-super {p0, p1, p2}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    .line 408
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->ms:Z

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$integer;->abc_max_action_buttons:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mp:I

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->i(Z)V

    .line 123
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 419
    check-cast p1, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;

    .line 420
    iget v0, p1, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;->mJ:I

    if-lez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget v1, p1, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;->mJ:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_0

    .line 423
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/SubMenuBuilder;

    .line 424
    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z

    .line 427
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 412
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;-><init>()V

    .line 413
    iget v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mF:I

    iput v1, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;->mJ:I

    .line 414
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 257
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 242
    :goto_1
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eq v2, v3, :cond_1

    .line 243
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/SubMenuBuilder;

    goto :goto_1

    .line 245
    :cond_1
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 246
    if-nez v0, :cond_3

    .line 247
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mk:Landroid/view/View;

    if-nez v0, :cond_2

    move v0, v1

    .line 248
    goto :goto_0

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mk:Landroid/view/View;

    .line 253
    :cond_3
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mF:I

    .line 254
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$a;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/SubMenuBuilder;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mC:Lcom/miui/internal/view/menu/ActionMenuPresenter$a;

    .line 255
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mC:Lcom/miui/internal/view/menu/ActionMenuPresenter$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$a;->show(Landroid/os/IBinder;)V

    .line 256
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z

    .line 257
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2

    .prologue
    .line 430
    if-eqz p1, :cond_0

    .line 432
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->h(Z)V

    goto :goto_0
.end method

.method public setActionEditMode(Z)V
    .locals 1

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 147
    sget v0, Lcom/miui/internal/R$attr;->actionModeOverflowButtonStyle:I

    iput v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mw:I

    .line 149
    :cond_0
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mv:Z

    .line 143
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1

    .prologue
    .line 137
    iput p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mp:I

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->ms:Z

    .line 139
    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 1

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->ml:Z

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mm:Z

    .line 134
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1

    .prologue
    .line 126
    iput p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mn:I

    .line 127
    iput-boolean p2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mt:Z

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mu:Z

    .line 129
    return-void
.end method

.method public shouldIncludeItem(ILcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p2}, Lcom/miui/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 283
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->ml:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mD:Lcom/miui/internal/view/menu/ActionMenuPresenter$c;

    if-nez v0, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->aC()Lcom/miui/internal/view/menu/ActionMenuPresenter$d;

    move-result-object v0

    .line 286
    new-instance v2, Lcom/miui/internal/view/menu/ActionMenuPresenter$c;

    invoke-direct {v2, p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$c;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$d;)V

    iput-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mD:Lcom/miui/internal/view/menu/ActionMenuPresenter$c;

    .line 288
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mD:Lcom/miui/internal/view/menu/ActionMenuPresenter$c;

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 292
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z

    .line 294
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mk:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    move v0, v1

    .line 298
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 192
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    if-nez v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 200
    :goto_1
    iget-boolean v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->ml:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 202
    if-ne v3, v1, :cond_7

    .line 203
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_2
    move v2, v0

    .line 209
    :cond_2
    :goto_3
    if-eqz v2, :cond_a

    .line 210
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mk:Landroid/view/View;

    if-nez v0, :cond_9

    .line 211
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->createOverflowMenuButton(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mk:Landroid/view/View;

    .line 216
    :goto_4
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mk:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 217
    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    if-eq v0, v1, :cond_4

    .line 218
    if-eqz v0, :cond_3

    .line 219
    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mk:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView;

    .line 222
    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mk:Landroid/view/View;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->generateOverflowButtonLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView;

    iget-boolean v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->ml:Z

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuView;->setOverflowReserved(Z)V

    .line 231
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->aC()Lcom/miui/internal/view/menu/ActionMenuPresenter$d;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$d;->e(Lcom/miui/internal/view/menu/MenuBuilder;)V

    goto :goto_0

    .line 196
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    move v0, v2

    .line 203
    goto :goto_2

    .line 205
    :cond_7
    if-lez v3, :cond_8

    :goto_6
    move v2, v1

    goto :goto_3

    :cond_8
    move v1, v2

    goto :goto_6

    .line 214
    :cond_9
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mk:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_4

    .line 224
    :cond_a
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mk:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mk:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    if-ne v0, v1, :cond_4

    .line 225
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mk:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_5
.end method
