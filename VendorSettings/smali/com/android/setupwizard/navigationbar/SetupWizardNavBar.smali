.class public Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;
.super Landroid/app/Fragment;
.source "SetupWizardNavBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private aLl:I

.field private aLm:Landroid/view/ViewGroup;

.field private aLn:Landroid/widget/Button;

.field private aLo:Lcom/android/setupwizard/navigationbar/f;

.field private dZ:Landroid/widget/Button;


# direct methods
.method private AV()I
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v6, 0x2

    const/4 v2, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-array v3, v5, [I

    sget v4, Lcom/android/setupwizard/navigationbar/b;->aLf:I

    aput v4, v3, v2

    const v4, 0x1010030

    aput v4, v3, v1

    const v4, 0x1010031

    aput v4, v3, v6

    invoke-virtual {v0, v3}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 131
    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 132
    if-nez v0, :cond_0

    .line 135
    new-array v0, v5, [F

    .line 136
    new-array v4, v5, [F

    .line 137
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 138
    invoke-virtual {v3, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 139
    aget v0, v0, v6

    aget v4, v4, v6

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    move v0, v1

    .line 140
    :goto_0
    if-eqz v0, :cond_2

    sget v0, Lcom/android/setupwizard/navigationbar/e;->aLj:I

    .line 143
    :cond_0
    :goto_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    return v0

    :cond_1
    move v0, v2

    .line 139
    goto :goto_0

    .line 140
    :cond_2
    sget v0, Lcom/android/setupwizard/navigationbar/e;->aLk:I

    goto :goto_1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 64
    check-cast p1, Lcom/android/setupwizard/navigationbar/f;

    iput-object p1, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->aLo:Lcom/android/setupwizard/navigationbar/f;

    .line 65
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->aLn:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->aLo:Lcom/android/setupwizard/navigationbar/f;

    invoke-interface {v0}, Lcom/android/setupwizard/navigationbar/f;->hX()V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->dZ:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->aLo:Lcom/android/setupwizard/navigationbar/f;

    invoke-interface {v0}, Lcom/android/setupwizard/navigationbar/f;->hY()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->AV()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 71
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 72
    sget v1, Lcom/android/setupwizard/navigationbar/d;->aLi:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->aLm:Landroid/view/ViewGroup;

    .line 74
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->aLm:Landroid/view/ViewGroup;

    sget v1, Lcom/android/setupwizard/navigationbar/c;->aLh:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->dZ:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->aLm:Landroid/view/ViewGroup;

    sget v1, Lcom/android/setupwizard/navigationbar/c;->aLg:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->aLn:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->dZ:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->aLn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->aLm:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->aLm:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->aLl:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 84
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->aLo:Lcom/android/setupwizard/navigationbar/f;

    invoke-interface {v0, p0}, Lcom/android/setupwizard/navigationbar/f;->a(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V

    .line 85
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->aLm:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->aLl:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->aLm:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 91
    return-void
.end method
