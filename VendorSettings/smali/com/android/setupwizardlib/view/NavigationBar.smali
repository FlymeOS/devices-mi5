.class public Lcom/android/setupwizardlib/view/NavigationBar;
.super Landroid/widget/LinearLayout;
.source "NavigationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private aLn:Landroid/widget/Button;

.field private aMk:Landroid/widget/Button;

.field private aMl:Lcom/android/setupwizardlib/view/c;

.field private dZ:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 76
    invoke-static {p1}, Lcom/android/setupwizardlib/view/NavigationBar;->cT(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->init()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 81
    invoke-static {p1}, Lcom/android/setupwizardlib/view/NavigationBar;->cT(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->init()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 87
    invoke-static {p1}, Lcom/android/setupwizardlib/view/NavigationBar;->cT(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->init()V

    .line 89
    return-void
.end method

.method private static cS(Landroid/content/Context;)I
    .locals 7

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v6, 0x2

    const/4 v2, 0x0

    .line 45
    new-array v0, v4, [I

    sget v3, Lcom/android/setupwizardlib/b;->aLq:I

    aput v3, v0, v2

    const v3, 0x1010030

    aput v3, v0, v1

    const v3, 0x1010031

    aput v3, v0, v6

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 50
    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 51
    if-nez v0, :cond_0

    .line 54
    new-array v0, v4, [F

    .line 55
    new-array v4, v4, [F

    .line 56
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 57
    invoke-virtual {v3, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 58
    aget v0, v0, v6

    aget v4, v4, v6

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    move v0, v1

    .line 59
    :goto_0
    if-eqz v0, :cond_2

    sget v0, Lcom/android/setupwizardlib/g;->aLI:I

    .line 61
    :cond_0
    :goto_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    return v0

    :cond_1
    move v0, v2

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    sget v0, Lcom/android/setupwizardlib/g;->aLJ:I

    goto :goto_1
.end method

.method private static cT(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    .prologue
    .line 66
    invoke-static {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->cS(Landroid/content/Context;)I

    move-result v0

    .line 67
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/setupwizardlib/f;->aLG:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 95
    sget v0, Lcom/android/setupwizardlib/e;->aLE:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/NavigationBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->dZ:Landroid/widget/Button;

    .line 96
    sget v0, Lcom/android/setupwizardlib/e;->aLC:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/NavigationBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->aLn:Landroid/widget/Button;

    .line 97
    sget v0, Lcom/android/setupwizardlib/e;->aLD:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/NavigationBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->aMk:Landroid/widget/Button;

    .line 98
    return-void
.end method


# virtual methods
.method public Bd()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->aLn:Landroid/widget/Button;

    return-object v0
.end method

.method public a(Lcom/android/setupwizardlib/view/c;)V
    .locals 1

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/setupwizardlib/view/NavigationBar;->aMl:Lcom/android/setupwizardlib/view/c;

    .line 114
    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->aMl:Lcom/android/setupwizardlib/view/c;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->Bd()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    :cond_0
    return-void
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->dZ:Landroid/widget/Button;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->aMl:Lcom/android/setupwizardlib/view/c;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->Bd()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->aMl:Lcom/android/setupwizardlib/view/c;

    invoke-interface {v0}, Lcom/android/setupwizardlib/view/c;->hX()V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->aMl:Lcom/android/setupwizardlib/view/c;

    invoke-interface {v0}, Lcom/android/setupwizardlib/view/c;->hY()V

    goto :goto_0
.end method
