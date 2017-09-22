.class public Lcom/miui/internal/app/FragmentDelegate;
.super Lcom/miui/internal/app/ActionBarDelegateImpl;
.source "SourceFile"


# static fields
.field public static final MENU_INVALIDATE:I = 0x1

.field private static final cS:I = 0x10


# instance fields
.field private bb:Landroid/content/Context;

.field private final cD:Landroid/view/Window$Callback;

.field private cT:Landroid/app/Fragment;

.field private cU:Landroid/view/View;

.field private cV:I

.field private cW:B

.field private final cb:Ljava/lang/Runnable;

.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;-><init>(Landroid/app/Activity;)V

    .line 53
    new-instance v0, Lcom/miui/internal/app/FragmentDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/FragmentDelegate$1;-><init>(Lcom/miui/internal/app/FragmentDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cb:Ljava/lang/Runnable;

    .line 81
    new-instance v0, Lcom/miui/internal/app/FragmentDelegate$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/FragmentDelegate$2;-><init>(Lcom/miui/internal/app/FragmentDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cD:Landroid/view/Window$Callback;

    .line 105
    iput-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->cT:Landroid/app/Fragment;

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/app/FragmentDelegate;)B
    .locals 1

    .prologue
    .line 36
    iget-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cW:B

    return v0
.end method

.method static synthetic a(Lcom/miui/internal/app/FragmentDelegate;I)B
    .locals 1

    .prologue
    .line 36
    iget-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cW:B

    and-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cW:B

    return v0
.end method

.method static synthetic a(Lcom/miui/internal/app/FragmentDelegate;Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object p1
.end method

.method static synthetic b(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic c(Lcom/miui/internal/app/FragmentDelegate;)Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cT:Landroid/app/Fragment;

    return-object v0
.end method


# virtual methods
.method final a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 153
    iget-boolean v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecorInstalled:Z

    if-nez v0, :cond_7

    .line 154
    iput-boolean v5, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecorInstalled:Z

    .line 155
    sget v0, Lcom/miui/internal/R$layout;->screen_action_bar:I

    invoke-virtual {p3, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 157
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->cD:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setCallback(Landroid/view/Window$Callback;)V

    .line 158
    iget-boolean v1, p0, Lcom/miui/internal/app/FragmentDelegate;->aS:Z

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 159
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getTranslucentStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setTranslucentStatus(I)V

    .line 161
    iget v1, p0, Lcom/miui/internal/app/FragmentDelegate;->cV:I

    if-eqz v1, :cond_0

    .line 162
    const v1, 0x1010054

    invoke-static {p1, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 165
    :cond_0
    sget v1, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarView;

    iput-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 166
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v2, p0, Lcom/miui/internal/app/FragmentDelegate;->cD:Landroid/view/Window$Callback;

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 169
    iget-boolean v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mFeatureProgress:Z

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->initProgress()V

    .line 172
    :cond_1
    iget-boolean v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mFeatureIndeterminateProgress:Z

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->initIndeterminateProgress()V

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->isImmersionMenuEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 178
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget v2, p0, Lcom/miui/internal/app/FragmentDelegate;->mImmersionLayoutResourceId:I

    invoke-virtual {v1, v2, p0}, Lcom/miui/internal/widget/ActionBarView;->initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V

    .line 182
    :cond_3
    const-string v1, "splitActionBarWhenNarrow"

    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getUiOptionsFromMetadata()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 185
    if-eqz v4, :cond_6

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    move v3, v1

    .line 194
    :goto_0
    sget v1, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarContainer;

    .line 196
    if-eqz v1, :cond_4

    .line 197
    iget-object v2, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2, v1}, Lcom/miui/internal/widget/ActionBarView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    .line 198
    iget-object v2, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    .line 199
    iget-object v2, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2, v4}, Lcom/miui/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    .line 201
    sget v2, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/widget/ActionBarContextView;

    .line 203
    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarContainer;->setActionBarContextView(Lcom/miui/internal/widget/ActionBarContextView;)V

    .line 204
    invoke-virtual {v2, v1}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    .line 205
    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    .line 206
    invoke-virtual {v2, v4}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 209
    :cond_4
    invoke-virtual {p0, v5}, Lcom/miui/internal/app/FragmentDelegate;->updateOptionsMenu(I)V

    .line 210
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 211
    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cU:Landroid/view/View;

    .line 218
    :cond_5
    :goto_1
    return-void

    .line 189
    :cond_6
    sget-object v1, Lmiui/R$styleable;->Window:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 190
    sget v1, Lmiui/R$styleable;->Window_windowSplitActionBar:I

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 191
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    move v3, v1

    goto :goto_0

    .line 212
    :cond_7
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cU:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cU:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 213
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cU:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 214
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 215
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->cU:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    goto :goto_1
.end method

.method public createActionBar()Lmiui/app/ActionBar;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->cT:Landroid/app/Fragment;

    invoke-direct {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;-><init>(Landroid/app/Fragment;)V

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->bb:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->bb:Landroid/content/Context;

    .line 294
    iget v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cV:I

    if-eqz v0, :cond_0

    .line 295
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->bb:Landroid/content/Context;

    iget v2, p0, Lcom/miui/internal/app/FragmentDelegate;->cV:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->bb:Landroid/content/Context;

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->bb:Landroid/content/Context;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cU:Landroid/view/View;

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 262
    iget-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cW:B

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 263
    iget-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cW:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cW:B

    .line 264
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cT:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->cb:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 266
    :cond_0
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cT:Landroid/app/Fragment;

    check-cast v0, Lmiui/app/IFragment;

    invoke-interface {v0, p1, p2}, Lmiui/app/IFragment;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 234
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmiui/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 115
    sget v1, Lmiui/R$styleable;->Window_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a miui theme (or descendant) with this fragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    sget v1, Lmiui/R$styleable;->Window_windowActionBar:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/FragmentDelegate;->requestWindowFeature(I)Z

    .line 122
    :cond_1
    sget v1, Lmiui/R$styleable;->Window_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/FragmentDelegate;->requestWindowFeature(I)Z

    .line 125
    :cond_2
    sget v1, Lcom/miui/internal/R$styleable;->Window_windowTranslucentStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/FragmentDelegate;->setTranslucentStatus(I)V

    .line 127
    sget v1, Lcom/miui/internal/R$styleable;->Window_immersionMenuEnabled:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/FragmentDelegate;->setImmersionMenuEnabled(Z)V

    .line 128
    sget v1, Lcom/miui/internal/R$styleable;->Window_immersionMenuLayout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mImmersionLayoutResourceId:I

    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 132
    iget-boolean v0, p0, Lcom/miui/internal/app/FragmentDelegate;->aR:Z

    if-eqz v0, :cond_5

    .line 133
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v2}, Lcom/miui/internal/app/FragmentDelegate;->a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 136
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cU:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 137
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->cT:Landroid/app/Fragment;

    check-cast v1, Lmiui/app/IFragment;

    invoke-interface {v1, v2, v0, p2}, Lmiui/app/IFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 138
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, v0, :cond_4

    .line 139
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 140
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 142
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 143
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 149
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cU:Landroid/view/View;

    return-object v0

    .line 146
    :cond_5
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cT:Landroid/app/Fragment;

    check-cast v0, Lmiui/app/IFragment;

    invoke-interface {v0, v2, p1, p2}, Lmiui/app/IFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cU:Landroid/view/View;

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cT:Landroid/app/Fragment;

    invoke-virtual {v0, p2}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/miui/internal/app/FragmentDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPrepareImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cT:Landroid/app/Fragment;

    instance-of v0, v0, Lmiui/app/IFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cT:Landroid/app/Fragment;

    check-cast v0, Lmiui/app/IFragment;

    invoke-interface {v0, p1}, Lmiui/app/IFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cT:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 305
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cT:Landroid/app/Fragment;

    check-cast v0, Lmiui/app/IFragment;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p3}, Lmiui/app/IFragment;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V

    .line 250
    const/4 v0, 0x1

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExtraThemeRes(I)V
    .locals 0

    .prologue
    .line 287
    iput p1, p0, Lcom/miui/internal/app/FragmentDelegate;->cV:I

    .line 288
    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cU:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cU:Landroid/view/View;

    instance-of v0, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cU:Landroid/view/View;

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V

    .line 315
    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cU:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public updateOptionsMenu(I)V
    .locals 2

    .prologue
    .line 269
    iget-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cW:B

    and-int/lit8 v1, p1, 0x1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->cW:B

    .line 270
    return-void
.end method
