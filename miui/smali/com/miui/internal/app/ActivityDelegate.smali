.class public Lcom/miui/internal/app/ActivityDelegate;
.super Lcom/miui/internal/app/ActionBarDelegateImpl;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/miui/internal/view/menu/MenuPresenter$Callback;


# static fields
.field private static final bU:Ljava/lang/String; = "miui:ActionBar"

.field private static final bV:Lmiui/reflect/Method;

.field private static final bW:Lmiui/reflect/Method;

.field private static final bX:Lmiui/reflect/Method;


# instance fields
.field private final bY:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private bZ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

.field private ca:Lcom/miui/internal/widget/ActionBarContainer;

.field private final cb:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const-class v0, Landroid/app/Activity;

    const-string v1, "onCreatePanelMenu"

    const-string v2, "(ILandroid/view/Menu;)Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/app/ActivityDelegate;->bV:Lmiui/reflect/Method;

    .line 52
    const-class v0, Landroid/app/Activity;

    const-string v1, "onPreparePanel"

    const-string v2, "(ILandroid/view/View;Landroid/view/Menu;)Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/app/ActivityDelegate;->bW:Lmiui/reflect/Method;

    .line 55
    const-class v0, Landroid/app/Activity;

    const-string v1, "onMenuItemSelected"

    const-string v2, "(ILandroid/view/MenuItem;)Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/app/ActivityDelegate;->bX:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;-><init>(Landroid/app/Activity;)V

    .line 64
    new-instance v0, Lcom/miui/internal/app/ActivityDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActivityDelegate$1;-><init>(Lcom/miui/internal/app/ActivityDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->cb:Ljava/lang/Runnable;

    .line 80
    iput-object p2, p0, Lcom/miui/internal/app/ActivityDelegate;->bY:Ljava/lang/Class;

    .line 81
    return-void
.end method

.method private a(ILandroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 415
    sget-object v0, Lcom/miui/internal/app/ActivityDelegate;->bV:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->bY:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private a(ILandroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 425
    sget-object v0, Lcom/miui/internal/app/ActivityDelegate;->bX:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->bY:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private a(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 420
    sget-object v0, Lcom/miui/internal/app/ActivityDelegate;->bW:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->bY:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/miui/internal/app/ActivityDelegate;ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->a(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/miui/internal/app/ActivityDelegate;ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/app/ActivityDelegate;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 123
    sget v0, Lmiui/R$attr;->windowActionBar:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static getDecorViewLayoutRes(Landroid/view/Window;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 90
    sget v0, Lcom/miui/internal/R$attr;->windowActionBar:I

    invoke-static {v2, v0, v4}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    sget v0, Lcom/miui/internal/R$attr;->windowActionBarMovable:I

    invoke-static {v2, v0, v4}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    sget v0, Lcom/miui/internal/R$layout;->screen_action_bar_movable:I

    .line 102
    :goto_0
    sget v1, Lmiui/R$attr;->startingWindowOverlay:I

    invoke-static {v2, v1}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v1

    .line 104
    if-lez v1, :cond_0

    invoke-static {}, Lcom/miui/internal/app/ActivityDelegate;->r()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/miui/internal/app/ActivityDelegate;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->isFloating()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 109
    sget v1, Lcom/miui/internal/R$attr;->windowTranslucentStatus:I

    invoke-static {v2, v1, v4}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v1

    .line 111
    invoke-static {}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_Window_class$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->get()Lcom/miui/internal/variable/Android_View_Window_class;

    move-result-object v2

    .line 112
    invoke-virtual {v2, p0, v1}, Lcom/miui/internal/variable/Android_View_Window_class;->setTranslucentStatus(Landroid/view/Window;I)Z

    .line 114
    :cond_1
    return v0

    .line 96
    :cond_2
    sget v0, Lcom/miui/internal/R$layout;->screen_action_bar:I

    goto :goto_0

    .line 99
    :cond_3
    sget v0, Lcom/miui/internal/R$layout;->screen_simple:I

    goto :goto_0
.end method

.method private static r()Z
    .locals 2

    .prologue
    .line 118
    const-string v0, "android"

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createActionBar()Lmiui/app/ActionBar;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected installSubDecor()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 159
    iget-boolean v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 163
    :cond_0
    iput-boolean v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecorInstalled:Z

    .line 165
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    sget-object v1, Lmiui/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 167
    sget v0, Lmiui/R$styleable;->Window_windowLayoutMode:I

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 170
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 173
    :cond_1
    sget v0, Lmiui/R$styleable;->Window_windowActionBar:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a miui theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_2
    sget v0, Lmiui/R$styleable;->Window_windowActionBar:I

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActivityDelegate;->requestWindowFeature(I)Z

    .line 181
    :cond_3
    sget v0, Lmiui/R$styleable;->Window_windowActionBarOverlay:I

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 182
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActivityDelegate;->requestWindowFeature(I)Z

    .line 185
    :cond_4
    sget v0, Lcom/miui/internal/R$styleable;->Window_windowTranslucentStatus:I

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActivityDelegate;->setTranslucentStatus(I)V

    .line 189
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 191
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->bZ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 192
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->bZ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setCallback(Landroid/view/Window$Callback;)V

    .line 193
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->bZ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setRootSubDecor(Z)V

    .line 194
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->bZ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getTranslucentStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setTranslucentStatus(I)V

    .line 197
    iget-boolean v0, p0, Lcom/miui/internal/app/ActivityDelegate;->aR:Z

    if-eqz v0, :cond_a

    .line 198
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->bZ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    sget v1, Lcom/miui/internal/R$id;->action_bar_container:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->ca:Lcom/miui/internal/widget/ActionBarContainer;

    .line 200
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->bZ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-boolean v1, p0, Lcom/miui/internal/app/ActivityDelegate;->aS:Z

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 201
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->bZ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    sget v1, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 202
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 205
    iget-boolean v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mFeatureProgress:Z

    if-eqz v0, :cond_5

    .line 206
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->initProgress()V

    .line 208
    :cond_5
    iget-boolean v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mFeatureIndeterminateProgress:Z

    if-eqz v0, :cond_6

    .line 209
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->initIndeterminateProgress()V

    .line 213
    :cond_6
    sget v0, Lcom/miui/internal/R$styleable;->Window_immersionMenuLayout:I

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mImmersionLayoutResourceId:I

    .line 214
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->isImmersionMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 215
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mImmersionLayoutResourceId:I

    invoke-virtual {v0, v1, p0}, Lcom/miui/internal/widget/ActionBarView;->initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V

    .line 220
    :cond_7
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 221
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 225
    :cond_8
    const-string v0, "splitActionBarWhenNarrow"

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getUiOptionsFromMetadata()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 229
    if-eqz v4, :cond_c

    .line 230
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    move v2, v0

    .line 236
    :goto_1
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->bZ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    sget v1, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    .line 238
    if-eqz v0, :cond_9

    .line 239
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    .line 240
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    .line 241
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1, v4}, Lcom/miui/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    .line 243
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->bZ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    sget v5, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {v1, v5}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarContextView;

    .line 245
    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setActionBarContextView(Lcom/miui/internal/widget/ActionBarContextView;)V

    .line 246
    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    .line 247
    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    .line 248
    invoke-virtual {v1, v4}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 251
    :cond_9
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->cb:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 254
    :cond_a
    sget v0, Lcom/miui/internal/R$styleable;->Window_immersionMenuEnabled:I

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 255
    invoke-virtual {p0, v7}, Lcom/miui/internal/app/ActivityDelegate;->setImmersionMenuEnabled(Z)V

    .line 258
    :cond_b
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 233
    :cond_c
    sget v0, Lmiui/R$styleable;->Window_windowSplitActionBar:I

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v2, v0

    goto :goto_1
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->cb:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 375
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionMode:Landroid/view/ActionMode;

    .line 398
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionMode:Landroid/view/ActionMode;

    .line 393
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 401
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 411
    :goto_0
    return v0

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->hasExpandedActionView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->collapseActionView()V

    goto :goto_0

    .line 411
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->installSubDecor()V

    .line 130
    invoke-static {}, Lmiui/extension/ExtensionManager;->getInstance()Lmiui/extension/ExtensionManager;

    move-result-object v0

    const-string v1, "Activity"

    const-string v2, "onCreate"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/extension/ExtensionManager;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 308
    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->a(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 269
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->isImmersionMenuEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 270
    const/4 v1, 0x1

    .line 271
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 274
    iget-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_1

    .line 275
    if-nez v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    .line 278
    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActivityDelegate;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 281
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 283
    invoke-direct {p0, v4, v0}, Lcom/miui/internal/app/ActivityDelegate;->a(ILandroid/view/Menu;)Z

    move-result v1

    .line 286
    :cond_0
    if-eqz v1, :cond_1

    .line 288
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 290
    invoke-direct {p0, v4, v3, v0}, Lcom/miui/internal/app/ActivityDelegate;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    .line 294
    :cond_1
    if-eqz v1, :cond_3

    .line 296
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 303
    :cond_2
    :goto_0
    return-object v3

    .line 299
    :cond_3
    invoke-virtual {p0, v3}, Lcom/miui/internal/app/ActivityDelegate;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->a(ILandroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    if-nez p1, :cond_0

    .line 349
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    .line 358
    :goto_0
    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 364
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPostResume()V
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    .line 153
    if-eqz v0, :cond_0

    .line 154
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 156
    :cond_0
    return-void
.end method

.method protected onPrepareImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 433
    const/4 v0, 0x1

    .line 436
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 313
    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/app/ActivityDelegate;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->ca:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 326
    const-string v0, "miui:ActionBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_0

    .line 328
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->ca:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 331
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->ca:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 319
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->ca:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 320
    const-string v1, "miui:ActionBar"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 322
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-virtual {p0, v1}, Lcom/miui/internal/app/ActivityDelegate;->dismissImmersionMenu(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    .line 145
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 148
    :cond_0
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 265
    :cond_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 387
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->bZ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->bZ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V

    .line 443
    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->bZ:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
