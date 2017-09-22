.class public Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;
.super Lmiui/widget/ImmersionListPopupWindow;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;


# instance fields
.field private na:Landroid/graphics/drawable/Drawable;

.field private oq:Lcom/miui/internal/app/ActionBarDelegateImpl;

.field private or:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

.field private os:Landroid/view/View;

.field private ot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/widget/ImmersionListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->oq:Lcom/miui/internal/app/ActionBarDelegateImpl;

    .line 35
    new-instance v1, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    invoke-direct {v1, v0, p2}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    iput-object v1, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->or:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    .line 36
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->or:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    new-instance v1, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1;

    invoke-direct {v1, p0}, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1;-><init>(Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;)V

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    sget v1, Lmiui/R$attr;->immersionWindowBackground:I

    invoke-static {v0, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->na:Landroid/graphics/drawable/Drawable;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;)Lcom/miui/internal/view/menu/ImmersionMenuAdapter;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->or:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;)Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->os:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->ot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic d(Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;)Lcom/miui/internal/app/ActionBarDelegateImpl;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->oq:Lcom/miui/internal/app/ActionBarDelegateImpl;

    return-object v0
.end method


# virtual methods
.method protected getBlurBackground(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->na:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->na:Landroid/graphics/drawable/Drawable;

    .line 76
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/widget/ImmersionListPopupWindow;->getBlurBackground(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->os:Landroid/view/View;

    .line 67
    iput-object p2, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->ot:Landroid/view/ViewGroup;

    .line 68
    invoke-super {p0, p1, p2}, Lmiui/widget/ImmersionListPopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 69
    return-void
.end method

.method public update(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->or:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->update(Landroid/view/Menu;)V

    .line 62
    return-void
.end method
