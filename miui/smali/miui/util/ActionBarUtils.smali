.class public Lmiui/util/ActionBarUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 25
    move-object v0, p0

    .line 26
    :goto_0
    if-eqz v0, :cond_2

    .line 27
    instance-of v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_0

    .line 28
    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 38
    :goto_1
    return-object v0

    .line 32
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 35
    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static setOnScrollListener(Landroid/app/Activity;Lmiui/app/ActionBar$OnScrollListener;)V
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/miui/internal/R$id;->action_bar_overlay_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarMovableLayout;

    .line 44
    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->setOnScrollListener(Lmiui/app/ActionBar$OnScrollListener;)V

    .line 45
    return-void
.end method
