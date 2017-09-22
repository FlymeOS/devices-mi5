.class public Lcom/miui/internal/app/ActionBarImpl;
.super Lmiui/app/ActionBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/app/ActionBarImpl$TabImpl;
    }
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final aY:I = 0x0

.field private static final aZ:I = 0x1

.field private static ba:Landroid/app/ActionBar$TabListener;


# instance fields
.field private bA:Lcom/miui/internal/widget/SearchActionModeView;

.field private bB:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

.field private bb:Landroid/content/Context;

.field private bc:Lcom/miui/internal/widget/ActionBarOverlayLayout;

.field private bd:Lcom/miui/internal/widget/ActionBarContainer;

.field private be:Lcom/miui/internal/widget/ActionBarView;

.field private bf:Lcom/miui/internal/widget/ActionBarContextView;

.field private bg:Lcom/miui/internal/view/menu/PhoneActionMenuView;

.field private bh:Landroid/view/View;

.field private bi:Landroid/view/View$OnClickListener;

.field private bj:Lcom/miui/internal/app/ActionBarViewPagerController;

.field private bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

.field private bl:Lcom/miui/internal/widget/ActionModeView;

.field private bm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/internal/app/ActionBarImpl$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private bn:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

.field private bo:Landroid/app/FragmentManager;

.field private bp:I

.field private bq:Z

.field private br:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private bs:I

.field private bt:Z

.field private bu:I

.field private bv:Z

.field private bw:Z

.field private bx:Z

.field private by:Z

.field private bz:Z

.field mActionMode:Landroid/view/ActionMode;

.field private mContext:Landroid/content/Context;

.field private mSplitView:Lcom/miui/internal/widget/ActionBarContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$1;

    invoke-direct {v0}, Lcom/miui/internal/app/ActionBarImpl$1;-><init>()V

    sput-object v0, Lcom/miui/internal/app/ActionBarImpl;->ba:Landroid/app/ActionBar$TabListener;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 172
    invoke-direct {p0}, Lmiui/app/ActionBar;-><init>()V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Ljava/util/ArrayList;

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bp:I

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->br:Ljava/util/ArrayList;

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bu:I

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->by:Z

    .line 163
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarImpl$2;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bB:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    .line 173
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 174
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bo:Landroid/app/FragmentManager;

    .line 175
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->init(Landroid/view/ViewGroup;)V

    .line 176
    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    .prologue
    .line 187
    invoke-direct {p0}, Lmiui/app/ActionBar;-><init>()V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Ljava/util/ArrayList;

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bp:I

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->br:Ljava/util/ArrayList;

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bu:I

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->by:Z

    .line 163
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarImpl$2;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bB:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    .line 188
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 189
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->init(Landroid/view/ViewGroup;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Lmiui/app/ActionBar;-><init>()V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Ljava/util/ArrayList;

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bp:I

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->br:Ljava/util/ArrayList;

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bu:I

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->by:Z

    .line 163
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarImpl$2;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bB:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    move-object v0, p1

    .line 180
    check-cast v0, Lmiui/app/IFragment;

    invoke-interface {v0}, Lmiui/app/IFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 181
    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bo:Landroid/app/FragmentManager;

    .line 182
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->init(Landroid/view/ViewGroup;)V

    .line 183
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .prologue
    .line 822
    instance-of v0, p1, Lmiui/view/SearchActionMode$Callback;

    if-eqz v0, :cond_0

    .line 823
    new-instance v0, Lcom/miui/internal/view/SearchActionModeImpl;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/miui/internal/view/SearchActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 827
    :goto_0
    return-object v0

    .line 825
    :cond_0
    new-instance v0, Lcom/miui/internal/view/EditActionModeImpl;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/miui/internal/view/EditActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/view/menu/PhoneActionMenuView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bg:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    return-object v0
.end method

.method private a(Z)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    iput-boolean p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bt:Z

    .line 276
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bt:Z

    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    .line 278
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ActionBarContainer;->setTabContainer(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    .line 283
    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 284
    :goto_1
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_0

    .line 285
    if-eqz v0, :cond_3

    .line 286
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 290
    :goto_2
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iget-boolean v4, p0, Lcom/miui/internal/app/ActionBarImpl;->bt:Z

    invoke-virtual {v3, v4}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    .line 292
    :cond_0
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    iget-boolean v4, p0, Lcom/miui/internal/app/ActionBarImpl;->bt:Z

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v3, v1}, Lcom/miui/internal/widget/ActionBarView;->setCollapsable(Z)V

    .line 293
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ActionBarContainer;->setTabContainer(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    .line 281
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 283
    goto :goto_1

    .line 288
    :cond_3
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v1, v2

    .line 292
    goto :goto_3
.end method

.method private static a(ZZZ)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 215
    if-eqz p2, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 217
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 218
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method private b(Landroid/app/ActionBar$Tab;I)V
    .locals 3

    .prologue
    .line 1045
    check-cast p1, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    .line 1046
    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    .line 1048
    if-nez v0, :cond_0

    .line 1049
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action Bar Tab must have a Callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1053
    :cond_0
    invoke-virtual {p1, p2}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 1054
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1056
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1057
    add-int/lit8 v0, p2, 0x1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1058
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 1057
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1060
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/miui/internal/app/ActionBarImpl;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private c(Z)V
    .locals 3

    .prologue
    .line 1075
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bv:Z

    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bw:Z

    iget-boolean v2, p0, Lcom/miui/internal/app/ActionBarImpl;->bx:Z

    invoke-static {v0, v1, v2}, Lcom/miui/internal/app/ActionBarImpl;->a(ZZZ)Z

    move-result v0

    .line 1078
    if-eqz v0, :cond_1

    .line 1079
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->by:Z

    if-nez v0, :cond_0

    .line 1080
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->by:Z

    .line 1081
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->doShow(Z)V

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1084
    :cond_1
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->by:Z

    if-eqz v0, :cond_0

    .line 1085
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->by:Z

    .line 1086
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->doHide(Z)V

    goto :goto_0
.end method

.method private d(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1158
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1161
    check-cast v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bg:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    .line 1163
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bg:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bh:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1164
    if-eqz p1, :cond_1

    .line 1165
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bi:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->show()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1168
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->hide()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public static getActionBar(Landroid/view/View;)Lcom/miui/internal/app/ActionBarImpl;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 194
    move-object v0, p0

    .line 195
    :goto_0
    if-eqz v0, :cond_2

    .line 196
    instance-of v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_0

    .line 197
    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    .line 209
    :goto_1
    return-object v0

    .line 202
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 203
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 205
    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private n()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1022
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 1042
    :goto_0
    return-void

    .line 1026
    :cond_0
    new-instance v0, Lcom/miui/internal/widget/ScrollingTabContainerView;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 1029
    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bt:Z

    if-eqz v1, :cond_1

    .line 1030
    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1031
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    .line 1040
    :goto_1
    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bt:Z

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    .line 1041
    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    goto :goto_0

    .line 1033
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1034
    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1038
    :goto_2
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setTabContainer(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    goto :goto_1

    .line 1036
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2
.end method

.method private o()V
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bn:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_0

    .line 1064
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1067
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 1068
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 1070
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bp:I

    .line 1071
    return-void
.end method

.method static synthetic q()Landroid/app/ActionBar$TabListener;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/miui/internal/app/ActionBarImpl;->ba:Landroid/app/ActionBar$TabListener;

    return-object v0
.end method


# virtual methods
.method a(Landroid/app/ActionBar$Tab;)V
    .locals 1

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getTabCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->a(Landroid/app/ActionBar$Tab;Z)V

    .line 561
    return-void

    .line 560
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/app/ActionBar$Tab;I)V
    .locals 1

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getTabCount()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/internal/app/ActionBarImpl;->a(Landroid/app/ActionBar$Tab;IZ)V

    .line 574
    return-void

    .line 573
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/app/ActionBar$Tab;IZ)V
    .locals 1

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->n()V

    .line 578
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 579
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActionBarImpl;->b(Landroid/app/ActionBar$Tab;I)V

    .line 580
    if-eqz p3, :cond_0

    .line 581
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 583
    :cond_0
    return-void
.end method

.method a(Landroid/app/ActionBar$Tab;Z)V
    .locals 1

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->n()V

    .line 565
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 566
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->b(Landroid/app/ActionBar$Tab;I)V

    .line 567
    if-eqz p2, :cond_0

    .line 568
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 570
    :cond_0
    return-void
.end method

.method public addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/ActionBar$Tab;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 942
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/app/ActionBarViewPagerController;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/app/ActionBarViewPagerController;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I

    move-result v0

    return v0
.end method

.method public addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/ActionBar$Tab;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 934
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/app/ActionBarViewPagerController;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/app/ActionBarViewPagerController;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    move-result v0

    return v0
.end method

.method public addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 912
    return-void
.end method

.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->br:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 526
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 542
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 2

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/app/ActionBarImpl;->a(Landroid/app/ActionBar$Tab;IZ)V

    .line 553
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 2

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/app/ActionBarImpl;->a(Landroid/app/ActionBar$Tab;Z)V

    .line 537
    return-void
.end method

.method b(I)V
    .locals 4

    .prologue
    .line 623
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-nez v0, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bn:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bn:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getPosition()I

    move-result v0

    move v1, v0

    .line 630
    :goto_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 631
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    .line 632
    if-eqz v0, :cond_2

    .line 633
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 636
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, p1

    .line 637
    :goto_2
    if-ge v2, v3, :cond_4

    .line 638
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0, v2}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 637
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 628
    :cond_3
    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bp:I

    move v1, v0

    goto :goto_1

    .line 641
    :cond_4
    if-ne v1, p1, :cond_0

    .line 642
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Ljava/util/ArrayList;

    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    goto :goto_3
.end method

.method b(Landroid/app/ActionBar$Tab;)V
    .locals 1

    .prologue
    .line 619
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->b(I)V

    .line 620
    return-void
.end method

.method b(Z)V
    .locals 2

    .prologue
    .line 808
    if-eqz p1, :cond_1

    .line 809
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->l()V

    .line 814
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v0, p1}, Lcom/miui/internal/widget/ActionModeView;->animateToVisibility(Z)V

    .line 815
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->hasEmbeddedTabs()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 818
    :cond_0
    return-void

    .line 811
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->m()V

    goto :goto_0

    .line 816
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public createActionModeView(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionModeView;
    .locals 2

    .prologue
    .line 832
    instance-of v0, p1, Lmiui/view/SearchActionMode$Callback;

    if-eqz v0, :cond_2

    .line 833
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bA:Lcom/miui/internal/widget/SearchActionModeView;

    if-nez v0, :cond_0

    .line 834
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->createSearchActionModeView()Lcom/miui/internal/widget/SearchActionModeView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bA:Lcom/miui/internal/widget/SearchActionModeView;

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bA:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/SearchActionModeView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 837
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bA:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->addView(Landroid/view/View;)V

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bA:Lcom/miui/internal/widget/SearchActionModeView;

    .line 844
    :goto_0
    return-object v0

    .line 841
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bf:Lcom/miui/internal/widget/ActionBarContextView;

    goto :goto_0
.end method

.method public createSearchActionModeView()Lcom/miui/internal/widget/SearchActionModeView;
    .locals 4

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 849
    sget v1, Lcom/miui/internal/R$layout;->search_action_mode_view:I

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/SearchActionModeView;

    .line 851
    new-instance v1, Lcom/miui/internal/app/ActionBarImpl$4;

    invoke-direct {v1, p0}, Lcom/miui/internal/app/ActionBarImpl$4;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 859
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarContainer;->getPendingInsets()Landroid/graphics/Rect;

    move-result-object v1

    .line 860
    if-eqz v1, :cond_0

    .line 861
    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->setStatusBarPaddingTop(I)V

    .line 863
    :cond_0
    return-object v0
.end method

.method public doHide(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x8

    .line 1118
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->clearAnimation()V

    .line 1119
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->p()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_5

    :cond_2
    const/4 v0, 0x1

    .line 1125
    :goto_1
    if-eqz v0, :cond_3

    .line 1126
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/miui/internal/R$anim;->action_bar_slide_out_top:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 1128
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ActionBarContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1130
    :cond_3
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v4}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 1132
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 1133
    if-eqz v0, :cond_4

    .line 1134
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/miui/internal/R$anim;->action_bar_slide_out_bottom:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1136
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v0}, Lcom/miui/internal/widget/ActionBarContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1138
    :cond_4
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v4}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 1139
    invoke-direct {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->d(Z)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1123
    goto :goto_1
.end method

.method public doShow(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1092
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->clearAnimation()V

    .line 1093
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1115
    :cond_0
    :goto_0
    return-void

    .line 1097
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->p()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_5

    :cond_2
    move v0, v2

    .line 1099
    :goto_1
    if-eqz v0, :cond_3

    .line 1100
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    sget v4, Lcom/miui/internal/R$anim;->action_bar_slide_in_top:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1102
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v3}, Lcom/miui/internal/widget/ActionBarContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1104
    :cond_3
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 1106
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1107
    if-eqz v0, :cond_4

    .line 1108
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/miui/internal/R$anim;->action_bar_slide_in_bottom:I

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1110
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v0}, Lcom/miui/internal/widget/ActionBarContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1112
    :cond_4
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 1113
    invoke-direct {p0, v2}, Lcom/miui/internal/app/ActionBarImpl;->d(Z)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1097
    goto :goto_1
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getFragmentAt(I)Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentTabCount()I
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->getFragmentTabCount()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 376
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 383
    :cond_0
    :goto_0
    return v0

    .line 378
    :pswitch_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 380
    :pswitch_1
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->getDropdownAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    .line 381
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 364
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 370
    :cond_0
    :goto_0
    return v0

    .line 366
    :pswitch_0
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bn:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bn:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getPosition()I

    move-result v0

    goto :goto_0

    .line 368
    :pswitch_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getDropdownSelectedPosition()I

    move-result v0

    goto :goto_0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bn:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 4

    .prologue
    .line 700
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bb:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 701
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 702
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 703
    const v2, 0x1010397

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 704
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 706
    if-eqz v0, :cond_1

    .line 707
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bb:Landroid/content/Context;

    .line 712
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bb:Landroid/content/Context;

    return-object v0

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bb:Landroid/content/Context;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewPagerOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->getViewPagerOffscreenPageLimit()I

    move-result v0

    return v0
.end method

.method public hasNonEmbeddedTabs()Z
    .locals 2

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bt:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bv:Z

    if-nez v0, :cond_0

    .line 738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bv:Z

    .line 739
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->c(Z)V

    .line 741
    :cond_0
    return-void
.end method

.method protected init(Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 225
    move-object v0, p1

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 226
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setActionBar(Lmiui/app/ActionBar;)V

    .line 227
    sget v0, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    .line 228
    sget v0, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bf:Lcom/miui/internal/widget/ActionBarContextView;

    .line 230
    sget v0, Lcom/miui/internal/R$id;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarContainer;

    .line 232
    sget v0, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    .line 234
    sget v0, Lcom/miui/internal/R$id;->content_mask:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bh:Landroid/view/View;

    .line 236
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bh:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$3;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarImpl$3;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bi:Landroid/view/View$OnClickListener;

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bf:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarContainer;

    if-nez v0, :cond_2

    .line 249
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "with a compatible window decor layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bs:I

    .line 258
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    .line 259
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    move v0, v1

    .line 260
    :goto_1
    if-eqz v0, :cond_3

    .line 261
    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bq:Z

    .line 264
    :cond_3
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object v3

    .line 265
    invoke-virtual {v3}, Lcom/miui/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    move v2, v1

    :cond_5
    invoke-virtual {p0, v2}, Lcom/miui/internal/app/ActionBarImpl;->setHomeButtonEnabled(Z)V

    .line 266
    invoke-virtual {v3}, Lcom/miui/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->a(Z)V

    .line 267
    return-void

    :cond_6
    move v0, v2

    .line 254
    goto :goto_0

    :cond_7
    move v0, v2

    .line 259
    goto :goto_1
.end method

.method public isFragmentViewPagerMode()Z
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/app/ActionBarViewPagerController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->by:Z

    return v0
.end method

.method j()Lcom/miui/internal/widget/ActionBarOverlayLayout;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bc:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method k()V
    .locals 0

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->o()V

    .line 649
    return-void
.end method

.method l()V
    .locals 1

    .prologue
    .line 729
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bx:Z

    if-nez v0, :cond_0

    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bx:Z

    .line 731
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->c(Z)V

    .line 733
    :cond_0
    return-void
.end method

.method m()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 744
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bx:Z

    if-eqz v0, :cond_0

    .line 745
    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bx:Z

    .line 746
    invoke-direct {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->c(Z)V

    .line 748
    :cond_0
    return-void
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 520
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->a(Z)V

    .line 271
    return-void
.end method

.method p()Z
    .locals 1

    .prologue
    .line 1144
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bz:Z

    return v0
.end method

.method public removeAllFragmentTab()V
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeAllFragmentTab()V

    .line 969
    return-void
.end method

.method public removeAllTabs()V
    .locals 2

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->k()V

    .line 616
    return-void
.end method

.method public removeFragmentTab(Landroid/app/ActionBar$Tab;)V
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeFragmentTab(Landroid/app/ActionBar$Tab;)V

    .line 959
    return-void
.end method

.method public removeFragmentTab(Landroid/app/Fragment;)V
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->a(Landroid/app/Fragment;)V

    .line 964
    return-void
.end method

.method public removeFragmentTab(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeFragmentTab(Ljava/lang/String;)V

    .line 954
    return-void
.end method

.method public removeFragmentTabAt(I)V
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->c(I)V

    .line 949
    return-void
.end method

.method public removeOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 918
    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->br:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 764
    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 2

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->b(Landroid/app/ActionBar$Tab;)V

    .line 594
    return-void
.end method

.method public removeTabAt(I)V
    .locals 2

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->b(I)V

    .line 605
    return-void
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 653
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 654
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    :cond_0
    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bp:I

    .line 681
    :cond_1
    :goto_0
    return-void

    .line 659
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bo:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 661
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->bn:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-ne v2, p1, :cond_4

    .line 662
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bn:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_3

    .line 663
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bn:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->bn:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v0, v2, v1}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 664
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 678
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 679
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 667
    :cond_4
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    :cond_5
    invoke-virtual {v2, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 669
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bn:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_6

    .line 670
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bn:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->bn:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v0, v2, v1}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 672
    :cond_6
    check-cast p1, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bn:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    .line 673
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bn:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_3

    .line 674
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bn:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->bn:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v0, v2, v1}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    goto :goto_1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 442
    return-void
.end method

.method public setCustomView(I)V
    .locals 3

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setCustomView(Landroid/view/View;)V

    .line 453
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    .line 312
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    .line 318
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 418
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 420
    return-void

    .line 418
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1

    .prologue
    .line 512
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bq:Z

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 516
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4

    .prologue
    .line 399
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    .line 400
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 401
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bq:Z

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 404
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 430
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 432
    return-void

    .line 430
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 413
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 414
    return-void

    .line 413
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 424
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 426
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 408
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 409
    return-void

    .line 408
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEndView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setEndView(Landroid/view/View;)V

    .line 1014
    return-void
.end method

.method public setFragmentActionMenuAt(IZ)V
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/ActionBarViewPagerController;->setFragmentActionMenuAt(IZ)V

    .line 974
    return-void
.end method

.method public setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 888
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/internal/app/ActionBarImpl;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;Z)V

    .line 889
    return-void
.end method

.method public setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;Z)V
    .locals 2

    .prologue
    .line 894
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    :goto_0
    return-void

    .line 898
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->removeAllTabs()V

    .line 899
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setNavigationMode(I)V

    .line 900
    new-instance v0, Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-direct {v0, p0, p2, p3}, Lcom/miui/internal/app/ActionBarViewPagerController;-><init>(Lcom/miui/internal/app/ActionBarImpl;Landroid/app/FragmentManager;Z)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/app/ActionBarViewPagerController;

    .line 902
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 903
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 905
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setFragmentViewPagerMode(Z)V

    goto :goto_0
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 437
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setIcon(I)V

    .line 323
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 328
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 344
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p2}, Lcom/miui/internal/widget/ActionBarView;->setCallback(Landroid/app/ActionBar$OnNavigationListener;)V

    .line 345
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setLogo(I)V

    .line 333
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 338
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 482
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v1

    .line 483
    packed-switch v1, :pswitch_data_0

    .line 490
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1, p1}, Lcom/miui/internal/widget/ActionBarView;->setNavigationMode(I)V

    .line 491
    packed-switch p1, :pswitch_data_1

    .line 501
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    iget-boolean v2, p0, Lcom/miui/internal/app/ActionBarImpl;->bt:Z

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarView;->setCollapsable(Z)V

    .line 503
    return-void

    .line 485
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getSelectedNavigationIndex()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bp:I

    .line 486
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 487
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0

    .line 493
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->n()V

    .line 494
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 495
    iget v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bp:I

    if-eq v1, v3, :cond_0

    .line 496
    iget v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bp:I

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setSelectedNavigationItem(I)V

    .line 497
    iput v3, p0, Lcom/miui/internal/app/ActionBarImpl;->bp:I

    goto :goto_1

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 491
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public setProgress(I)V
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setProgress(I)V

    .line 994
    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setProgressBarIndeterminate(Z)V

    .line 989
    return-void
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setProgressBarIndeterminateVisibility(Z)V

    .line 984
    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setProgressBarVisibility(Z)V

    .line 979
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 357
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :pswitch_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bm:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 360
    :goto_0
    return-void

    .line 354
    :pswitch_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setDropdownSelectedPosition(I)V

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1

    .prologue
    .line 1148
    iput-boolean p1, p0, Lcom/miui/internal/app/ActionBarImpl;->bz:Z

    .line 1149
    if-nez p1, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bd:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->clearAnimation()V

    .line 1151
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->clearAnimation()V

    .line 1155
    :cond_0
    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setStartView(Landroid/view/View;)V

    .line 1009
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 473
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 395
    return-void
.end method

.method public setTabBadgeVisibility(IZ)V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setBadgeVisibility(IZ)V

    .line 307
    return-void
.end method

.method public setTabsMode(Z)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->a(Z)V

    .line 302
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 463
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 390
    return-void
.end method

.method public setViewPagerDecor(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->setViewPagerDecor(Landroid/view/View;)V

    .line 1019
    return-void
.end method

.method public setViewPagerOffscreenPageLimit(I)V
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bj:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->setViewPagerOffscreenPageLimit(I)V

    .line 1004
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 722
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bv:Z

    if-eqz v0, :cond_0

    .line 723
    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->bv:Z

    .line 724
    invoke-direct {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->c(Z)V

    .line 726
    :cond_0
    return-void
.end method

.method public showActionBarShadow(Z)V
    .locals 0

    .prologue
    .line 868
    return-void
.end method

.method public showSplitActionBar(ZZ)V
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->be:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    if-eqz p1, :cond_1

    .line 874
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p2}, Lcom/miui/internal/widget/ActionBarContainer;->show(Z)V

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p2}, Lcom/miui/internal/widget/ActionBarContainer;->hide(Z)V

    goto :goto_0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 767
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 771
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    .line 773
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Lcom/miui/internal/widget/ActionModeView;

    instance-of v0, v0, Lcom/miui/internal/widget/SearchActionModeView;

    if-eqz v0, :cond_1

    instance-of v0, v1, Lcom/miui/internal/view/SearchActionModeImpl;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Lcom/miui/internal/widget/ActionModeView;

    instance-of v0, v0, Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_3

    instance-of v0, v1, Lcom/miui/internal/view/EditActionModeImpl;

    if-eqz v0, :cond_3

    .line 775
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v0}, Lcom/miui/internal/widget/ActionModeView;->closeMode()V

    .line 776
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v0}, Lcom/miui/internal/widget/ActionModeView;->killMode()V

    .line 779
    :cond_3
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->createActionModeView(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionModeView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Lcom/miui/internal/widget/ActionModeView;

    .line 781
    instance-of v0, v1, Lcom/miui/internal/view/ActionModeImpl;

    if-eqz v0, :cond_6

    move-object v0, v1

    .line 782
    check-cast v0, Lcom/miui/internal/view/ActionModeImpl;

    .line 783
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Lcom/miui/internal/widget/ActionModeView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/view/ActionModeImpl;->setActionModeView(Lcom/miui/internal/widget/ActionModeView;)V

    .line 784
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->bB:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    invoke-virtual {v0, v2}, Lcom/miui/internal/view/ActionModeImpl;->setActionModeCallback(Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;)V

    .line 785
    invoke-virtual {v0}, Lcom/miui/internal/view/ActionModeImpl;->dispatchOnCreate()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 786
    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 787
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v0, v1}, Lcom/miui/internal/widget/ActionModeView;->initForMode(Landroid/view/ActionMode;)V

    .line 788
    invoke-virtual {p0, v3}, Lcom/miui/internal/app/ActionBarImpl;->b(Z)V

    .line 789
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bs:I

    if-ne v0, v3, :cond_4

    .line 791
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 792
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 795
    :cond_4
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Lcom/miui/internal/widget/ActionModeView;

    instance-of v0, v0, Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_5

    .line 796
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->bl:Lcom/miui/internal/widget/ActionModeView;

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 800
    :cond_5
    iput-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    .line 804
    :goto_0
    return-object v1

    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method
