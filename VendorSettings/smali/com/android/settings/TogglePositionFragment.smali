.class public Lcom/android/vendorsettings/TogglePositionFragment;
.super Lcom/android/vendorsettings/BaseFragment;
.source "TogglePositionFragment.java"


# instance fields
.field private Bf:Ljava/util/List;

.field private Bg:Lcom/android/vendorsettings/toggleposition/DragGridView;

.field private Bh:I

.field private Bi:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/vendorsettings/BaseFragment;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/TogglePositionFragment;->Bf:Ljava/util/List;

    return-void
.end method

.method private il()V
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/vendorsettings/TogglePositionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/vendorsettings/TogglePositionFragment;->Bg:Lcom/android/vendorsettings/toggleposition/DragGridView;

    iget v1, p0, Lcom/android/vendorsettings/TogglePositionFragment;->Bi:I

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/toggleposition/DragGridView;->setNumColumns(I)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/TogglePositionFragment;->Bg:Lcom/android/vendorsettings/toggleposition/DragGridView;

    iget v1, p0, Lcom/android/vendorsettings/TogglePositionFragment;->Bh:I

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/toggleposition/DragGridView;->setNumColumns(I)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 84
    invoke-direct {p0}, Lcom/android/vendorsettings/TogglePositionFragment;->il()V

    .line 85
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 38
    const v0, 0x7f04015b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 41
    if-eqz p2, :cond_0

    .line 42
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 43
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 44
    instance-of v2, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 45
    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 48
    :cond_0
    return-object v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    const v1, 0x7f0e0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 56
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 57
    :goto_0
    const v0, 0x7f1302c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/toggleposition/DragGridView;

    iput-object v0, p0, Lcom/android/vendorsettings/TogglePositionFragment;->Bg:Lcom/android/vendorsettings/toggleposition/DragGridView;

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 60
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 61
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lmiui/app/ToggleManager;->getImageDrawable(IZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 62
    if-eqz v1, :cond_0

    .line 63
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v1, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 65
    :cond_0
    const-string v6, "item_image"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v5, "item_text"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lmiui/app/ToggleManager;->getName(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v5, "item_id"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/android/vendorsettings/TogglePositionFragment;->Bf:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v1, v0

    .line 56
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/android/vendorsettings/TogglePositionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11060007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/TogglePositionFragment;->Bh:I

    .line 73
    invoke-virtual {p0}, Lcom/android/vendorsettings/TogglePositionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11060008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/TogglePositionFragment;->Bi:I

    .line 76
    new-instance v0, Lcom/android/vendorsettings/toggleposition/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/TogglePositionFragment;->Bf:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/vendorsettings/toggleposition/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 77
    iget-object v1, p0, Lcom/android/vendorsettings/TogglePositionFragment;->Bg:Lcom/android/vendorsettings/toggleposition/DragGridView;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/toggleposition/DragGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/TogglePositionFragment;->il()V

    .line 79
    return-void
.end method
