.class public Lcom/miui/internal/widget/ActionBarView;
.super Lcom/miui/internal/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ActionBarView$a;,
        Lcom/miui/internal/widget/ActionBarView$HomeView;,
        Lcom/miui/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActionBarView"

.field private static final rl:I = 0x1f

.field private static final rm:I = 0x800013

.field private static final rn:I = 0x1

.field private static final ro:I = 0x2


# instance fields
.field private bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

.field cD:Landroid/view/Window$Callback;

.field private cm:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mTitle:Ljava/lang/CharSequence;

.field private pS:Landroid/widget/LinearLayout;

.field private pV:I

.field private rA:Lcom/miui/internal/widget/ActionBarView$HomeView;

.field private rB:Landroid/widget/TextView;

.field private rC:Landroid/view/View;

.field private rD:Landroid/widget/Spinner;

.field private rE:Landroid/widget/LinearLayout;

.field private rF:Landroid/view/View;

.field private rG:Landroid/widget/ProgressBar;

.field private rH:Landroid/widget/ProgressBar;

.field private rI:Landroid/view/View;

.field private rJ:Landroid/view/View;

.field private rK:Landroid/view/View;

.field private rL:I

.field private rM:I

.field private rN:I

.field private rO:Z

.field private rP:Z

.field private rQ:Z

.field private rR:Z

.field private rS:Lcom/miui/internal/view/menu/MenuBuilder;

.field private rT:Lcom/miui/internal/view/menu/ActionMenuItem;

.field private rU:Landroid/widget/SpinnerAdapter;

.field private rV:Landroid/app/ActionBar$OnNavigationListener;

.field private rW:Lcom/miui/internal/widget/ActionBarView$a;

.field rX:Landroid/view/View;

.field private final rY:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final rZ:Landroid/view/View$OnClickListener;

.field private rp:I

.field private rq:I

.field private rr:Ljava/lang/CharSequence;

.field private rs:I

.field private rt:Landroid/graphics/drawable/Drawable;

.field private final ru:I

.field private rv:Landroid/graphics/drawable/Drawable;

.field private rw:I

.field private rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

.field private final sa:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->rq:I

    .line 136
    new-instance v0, Lcom/miui/internal/widget/ActionBarView$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ActionBarView$1;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rY:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 150
    new-instance v0, Lcom/miui/internal/widget/ActionBarView$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ActionBarView$2;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rZ:Landroid/view/View$OnClickListener;

    .line 160
    new-instance v0, Lcom/miui/internal/widget/ActionBarView$3;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ActionBarView$3;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Landroid/view/View$OnClickListener;

    .line 168
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarView;->setBackgroundResource(I)V

    .line 173
    sget-object v0, Lmiui/R$styleable;->ActionBar:[I

    const v1, 0x10102ce

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 176
    sget v1, Lmiui/R$styleable;->ActionBar_android_navigationMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/ActionBarView;->rp:I

    .line 178
    sget v1, Lmiui/R$styleable;->ActionBar_android_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 179
    sget v1, Lmiui/R$styleable;->ActionBar_android_subtitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rr:Ljava/lang/CharSequence;

    .line 180
    sget v1, Lcom/miui/internal/R$styleable;->ActionBar_titleCenter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarView;->rR:Z

    .line 182
    sget v1, Lmiui/R$styleable;->ActionBar_android_logo:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rt:Landroid/graphics/drawable/Drawable;

    .line 183
    sget v1, Lmiui/R$styleable;->ActionBar_android_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 185
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 187
    sget v3, Lmiui/R$styleable;->ActionBar_android_homeLayout:I

    sget v4, Lcom/miui/internal/R$layout;->action_bar_home:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarView;->ru:I

    .line 191
    sget v3, Lmiui/R$styleable;->ActionBar_android_titleTextStyle:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarView;->pV:I

    .line 192
    sget v3, Lmiui/R$styleable;->ActionBar_android_subtitleTextStyle:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarView;->rN:I

    .line 194
    sget v3, Lmiui/R$styleable;->ActionBar_android_progressBarPadding:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarView;->rL:I

    .line 196
    sget v3, Lmiui/R$styleable;->ActionBar_android_itemPadding:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarView;->rM:I

    .line 198
    sget v3, Lmiui/R$styleable;->ActionBar_android_displayOptions:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 200
    sget v3, Lmiui/R$styleable;->ActionBar_android_customNavigationLayout:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 201
    if-eqz v3, :cond_0

    .line 202
    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rF:Landroid/view/View;

    .line 203
    iput v2, p0, Lcom/miui/internal/widget/ActionBarView;->rp:I

    .line 206
    :cond_0
    sget v1, Lmiui/R$styleable;->ActionBar_android_height:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    .line 207
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 208
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuItem;

    const v3, 0x102002c

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rT:Lcom/miui/internal/view/menu/ActionMenuItem;

    .line 209
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/widget/ActionBarView;)Landroid/app/ActionBar$OnNavigationListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rV:Landroid/app/ActionBar$OnNavigationListener;

    return-object v0
.end method

.method private a(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1795
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1796
    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1799
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    .line 1800
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1802
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 545
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 546
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->cm:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->cm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rX:Landroid/view/View;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rq:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rr:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 551
    :goto_0
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rT:Lcom/miui/internal/view/menu/ActionMenuItem;

    if-eqz v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rT:Lcom/miui/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 556
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 548
    goto :goto_0

    .line 551
    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method

.method static synthetic b(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$a;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rW:Lcom/miui/internal/widget/ActionBarView$a;

    return-object v0
.end method

.method private b(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1806
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1807
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1809
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1810
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1812
    :cond_1
    return-void
.end method

.method private bd()V
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 849
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->hasEmbeddedTabs()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/miui/internal/view/ActionBarPolicy;->isTightTitle()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    .line 850
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->cm:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->cm:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->cm:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 853
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rB:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rB:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 854
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rB:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 856
    :cond_1
    return-void

    .line 849
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private be()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 859
    .line 860
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rF:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 862
    instance-of v3, v0, Landroid/app/ActionBar$LayoutParams;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/app/ActionBar$LayoutParams;

    .line 864
    :goto_0
    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    .line 867
    :cond_0
    return v2

    .line 862
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 864
    :cond_2
    iget v0, v0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/miui/internal/widget/ActionBarView;->d(IZ)I

    move-result v0

    const v3, 0x800005

    if-ne v0, v3, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private bf()Z
    .locals 2

    .prologue
    .line 871
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->rR:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rC:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->be()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->hasEmbeddedTabs()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bg()Z
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rq:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bh()V
    .locals 5

    .prologue
    const v3, 0x800003

    const/4 v2, 0x1

    .line 883
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->bf()Z

    move-result v4

    .line 884
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->cm:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 885
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 886
    check-cast v0, Landroid/widget/LinearLayout;

    .line 887
    if-eqz v4, :cond_2

    move v1, v2

    :goto_0
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 890
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->cm:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    move v0, v2

    :goto_1
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 891
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->cm:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 892
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rB:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rB:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    :goto_3
    or-int/lit8 v1, v2, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 894
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rB:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 896
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 887
    goto :goto_0

    :cond_3
    move v0, v3

    .line 890
    goto :goto_1

    .line 891
    :cond_4
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    :cond_5
    move v2, v3

    .line 893
    goto :goto_3

    .line 894
    :cond_6
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_4
.end method

.method private bi()Landroid/widget/ProgressBar;
    .locals 2

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rH:Landroid/widget/ProgressBar;

    .line 1816
    if-eqz v0, :cond_0

    .line 1817
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1819
    :cond_0
    return-object v0
.end method

.method private bj()Landroid/widget/ProgressBar;
    .locals 2

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rG:Landroid/widget/ProgressBar;

    .line 1824
    if-eqz v0, :cond_0

    .line 1825
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1827
    :cond_0
    return-object v0
.end method

.method private bk()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 1848
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rs:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 1849
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 1850
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1852
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rt:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1857
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rt:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 1858
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rt:Landroid/graphics/drawable/Drawable;

    .line 1861
    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rs:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->rs:I

    .line 1863
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rt:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 1853
    :catch_0
    move-exception v0

    .line 1854
    const-string v1, "ActionBarView"

    const-string v2, "Activity component name not found!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private bl()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1867
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-nez v0, :cond_2

    .line 1868
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->ru:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    .line 1869
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1870
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setClickable(Z)V

    .line 1871
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 1873
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rw:I

    if-eqz v0, :cond_0

    .line 1874
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->rw:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->p(I)V

    .line 1875
    iput v2, p0, Lcom/miui/internal/widget/ActionBarView;->rw:I

    .line 1878
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rv:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1879
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1880
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rv:Landroid/graphics/drawable/Drawable;

    .line 1883
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1885
    :cond_2
    return-void
.end method

.method private bm()V
    .locals 3

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rA:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-nez v0, :cond_0

    .line 1889
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->ru:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rA:Lcom/miui/internal/widget/ActionBarView$HomeView;

    .line 1890
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rA:Lcom/miui/internal/widget/ActionBarView$HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->m(Z)V

    .line 1891
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rA:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rZ:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1893
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/view/menu/ActionMenuItem;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rT:Lcom/miui/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method private d(IZ)I
    .locals 4

    .prologue
    const v0, 0x800005

    const v1, 0x800003

    .line 1896
    const v2, 0x800007

    and-int/2addr v2, p1

    .line 1897
    const/high16 v3, 0x800000

    and-int/2addr v3, v2

    if-nez v3, :cond_3

    .line 1898
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1899
    if-eqz p2, :cond_0

    .line 1904
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1899
    goto :goto_0

    .line 1900
    :cond_1
    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 1901
    if-eqz p2, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method static synthetic d(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/miui/internal/widget/ActionBarView;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->bm()V

    return-void
.end method

.method static synthetic f(Lcom/miui/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rA:Lcom/miui/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method private g(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 460
    if-eqz p1, :cond_0

    .line 461
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    .line 462
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rW:Lcom/miui/internal/widget/ActionBarView$a;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    .line 469
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 470
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rW:Lcom/miui/internal/widget/ActionBarView$a;

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarView$a;->updateMenuView(Z)V

    .line 471
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 465
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rW:Lcom/miui/internal/widget/ActionBarView$a;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/miui/internal/widget/ActionBarView$a;->initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V

    goto :goto_0
.end method

.method private getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 1831
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rs:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 1832
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1834
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1839
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 1840
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1842
    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rs:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->rs:I

    .line 1844
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 1835
    :catch_0
    move-exception v0

    .line 1836
    const-string v1, "ActionBarView"

    const-string v2, "Activity component name not found!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic h(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic i(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method private initTitle()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 782
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    if-nez v0, :cond_4

    .line 783
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 784
    sget v3, Lcom/miui/internal/R$layout;->action_bar_title_item:I

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    .line 786
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    sget v3, Lcom/miui/internal/R$id;->action_bar_title:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->cm:Landroid/widget/TextView;

    .line 787
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    sget v3, Lcom/miui/internal/R$id;->action_bar_subtitle:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rB:Landroid/widget/TextView;

    .line 788
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    sget v3, Lcom/miui/internal/R$id;->up:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rC:Landroid/view/View;

    .line 790
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->sa:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 792
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->pV:I

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->cm:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/miui/internal/widget/ActionBarView;->pV:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->cm:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rN:I

    if-eqz v0, :cond_2

    .line 800
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rB:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/miui/internal/widget/ActionBarView;->rN:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 802
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rr:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 803
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rB:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->rr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rB:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 807
    :cond_3
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rq:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    move v0, v1

    .line 808
    :goto_0
    iget v3, p0, Lcom/miui/internal/widget/ActionBarView;->rq:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8

    move v3, v1

    .line 809
    :goto_1
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->rC:Landroid/view/View;

    if-nez v3, :cond_a

    if-eqz v0, :cond_9

    move v4, v2

    :goto_2
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 810
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    if-nez v3, :cond_b

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 812
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->bd()V

    .line 815
    :cond_4
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 817
    new-instance v0, Lcom/miui/internal/widget/ActionBarView$5;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ActionBarView$5;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 832
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rX:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rr:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 835
    :cond_5
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 837
    :cond_6
    return-void

    :cond_7
    move v0, v2

    .line 807
    goto :goto_0

    :cond_8
    move v3, v2

    .line 808
    goto :goto_1

    .line 809
    :cond_9
    const/4 v4, 0x4

    goto :goto_2

    :cond_a
    move v4, v5

    goto :goto_2

    :cond_b
    move v1, v2

    .line 810
    goto :goto_3
.end method

.method static synthetic j(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rD:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic k(Lcom/miui/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rF:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/miui/internal/widget/ActionBarView;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rq:I

    return v0
.end method

.method static synthetic m(Lcom/miui/internal/widget/ActionBarView;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic n(Lcom/miui/internal/widget/ActionBarView;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rp:I

    return v0
.end method

.method private o(I)V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/16 v5, 0x2710

    const/4 v1, 0x0

    .line 1755
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->bi()Landroid/widget/ProgressBar;

    move-result-object v2

    .line 1756
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->bj()Landroid/widget/ProgressBar;

    move-result-object v3

    .line 1758
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 1759
    if-eqz v3, :cond_1

    .line 1760
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 1761
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v4

    if-nez v4, :cond_0

    if-ge v0, v5, :cond_3

    :cond_0
    move v0, v1

    .line 1763
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1765
    :cond_1
    if-eqz v2, :cond_2

    .line 1766
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1791
    :cond_2
    :goto_1
    return-void

    .line 1761
    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    .line 1768
    :cond_4
    const/4 v0, -0x2

    if-ne p1, v0, :cond_6

    .line 1769
    if-eqz v3, :cond_5

    .line 1770
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1772
    :cond_5
    if-eqz v2, :cond_2

    .line 1773
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 1775
    :cond_6
    const/4 v0, -0x3

    if-ne p1, v0, :cond_7

    .line 1776
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    .line 1777
    :cond_7
    const/4 v0, -0x4

    if-ne p1, v0, :cond_8

    .line 1778
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    .line 1779
    :cond_8
    if-ltz p1, :cond_2

    if-gt p1, v5, :cond_2

    .line 1783
    add-int/lit8 v0, p1, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1785
    if-ge p1, v5, :cond_9

    .line 1786
    invoke-direct {p0, v3, v2}, Lcom/miui/internal/widget/ActionBarView;->a(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_1

    .line 1788
    :cond_9
    invoke-direct {p0, v3, v2}, Lcom/miui/internal/widget/ActionBarView;->b(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic animateToVisibility(I)V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->animateToVisibility(I)V

    return-void
.end method

.method public collapseActionView()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rW:Lcom/miui/internal/widget/ActionBarView$a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 481
    :goto_0
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 484
    :cond_0
    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rW:Lcom/miui/internal/widget/ActionBarView$a;

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView$a;->se:Lcom/miui/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method protected createActionMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)Lcom/miui/internal/view/menu/ActionMenuPresenter;
    .locals 6

    .prologue
    .line 1713
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v2, Lcom/miui/internal/R$layout;->action_menu_layout:I

    sget v3, Lcom/miui/internal/R$layout;->action_menu_item_layout:I

    sget v4, Lcom/miui/internal/R$layout;->action_bar_expanded_menu_layout:I

    sget v5, Lcom/miui/internal/R$layout;->action_bar_list_menu_item_layout:I

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;IIII)V

    .line 1718
    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    .line 1719
    sget v1, Lcom/miui/internal/R$id;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setId(I)V

    .line 1720
    return-object v0
.end method

.method protected createExpandedActionViewMenuPresenter()Lcom/miui/internal/widget/ActionBarView$a;
    .locals 2

    .prologue
    .line 1724
    new-instance v0, Lcom/miui/internal/widget/ActionBarView$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/widget/ActionBarView$a;-><init>(Lcom/miui/internal/widget/ActionBarView;Lcom/miui/internal/widget/ActionBarView$1;)V

    return-object v0
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/miui/internal/widget/a;->dismissPopupMenus()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 778
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 1329
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .prologue
    .line 1334
    if-nez p1, :cond_0

    .line 1335
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1337
    :cond_0
    return-object p1
.end method

.method public bridge synthetic getActionMenuView()Lcom/miui/internal/view/menu/ActionMenuView;
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/miui/internal/widget/a;->getActionMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/miui/internal/widget/a;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/miui/internal/widget/a;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rF:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 771
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rq:I

    return v0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rU:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rD:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/miui/internal/widget/a;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rp:I

    return v0
.end method

.method public getSplitActionBarHeight(Z)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 361
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getContentHeight()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rr:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->rP:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rW:Lcom/miui/internal/widget/ActionBarView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rW:Lcom/miui/internal/widget/ActionBarView$a;

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView$a;->se:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideImmersionMore()Z
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rI:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rI:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    const/4 v0, 0x1

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/miui/internal/widget/a;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V
    .locals 3

    .prologue
    .line 274
    if-gtz p1, :cond_1

    .line 275
    const-string v0, "ActionBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to initialize invalid layout for immersion more button: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rq:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 280
    const-string v0, "ActionBarView"

    const-string v1, "Don\'t show immersion menu button for custom action bar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    :cond_2
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rq:I

    if-nez v0, :cond_3

    .line 283
    const-string v0, "ActionBarView"

    const-string v1, "Don\'t show immersion menu button for null display option"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    :cond_3
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rI:Landroid/view/View;

    .line 288
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rI:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 290
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rI:Landroid/view/View;

    sget v1, Lcom/miui/internal/R$id;->more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_0

    .line 292
    new-instance v1, Lcom/miui/internal/widget/ActionBarView$4;

    invoke-direct {v1, p0, p2, v0}, Lcom/miui/internal/widget/ActionBarView$4;-><init>(Lcom/miui/internal/widget/ActionBarView;Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public initIndeterminateProgress()V
    .locals 4

    .prologue
    .line 266
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget v3, Lmiui/R$attr;->actionBarIndeterminateProgressStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rH:Landroid/widget/ProgressBar;

    .line 267
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rH:Landroid/widget/ProgressBar;

    sget v1, Lcom/miui/internal/R$id;->progress_circular:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 268
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rH:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rH:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 270
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rH:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 271
    return-void
.end method

.method public initProgress()V
    .locals 4

    .prologue
    .line 258
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget v3, Lmiui/R$attr;->actionBarProgressStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rG:Landroid/widget/ProgressBar;

    .line 259
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rG:Landroid/widget/ProgressBar;

    sget v1, Lcom/miui/internal/R$id;->progress_horizontal:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 260
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rG:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 261
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rG:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rG:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 263
    return-void
.end method

.method public isCollapsed()Z
    .locals 1

    .prologue
    .line 844
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->rQ:Z

    return v0
.end method

.method public bridge synthetic isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/miui/internal/widget/a;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/miui/internal/widget/a;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public isSplitActionBar()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 215
    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->cm:Landroid/widget/TextView;

    .line 216
    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rB:Landroid/widget/TextView;

    .line 217
    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rC:Landroid/view/View;

    .line 218
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 221
    :cond_0
    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    .line 222
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rq:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->initTitle()V

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->rP:Z

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_2

    .line 229
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 230
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 233
    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 246
    invoke-super {p0}, Lcom/miui/internal/widget/a;->onDetachedFromWindow()V

    .line 247
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 249
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 251
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    .prologue
    .line 1100
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingStart()I

    move-result v0

    .line 1101
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v7

    .line 1102
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    .line 1103
    sub-int v1, p5, p3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v2

    sub-int v9, v1, v2

    .line 1105
    if-gtz v9, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1110
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rX:Landroid/view/View;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rA:Lcom/miui/internal/widget/ActionBarView$HomeView;

    .line 1111
    :goto_1
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_e

    .line 1112
    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->bn()I

    move-result v2

    .line 1113
    add-int v3, v0, v2

    invoke-virtual {p0, v1, v3, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    move v6, v0

    .line 1118
    :goto_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rX:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1119
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->bg()Z

    move-result v10

    .line 1121
    if-eqz v10, :cond_4

    .line 1122
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->bf()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1123
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->cm:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 1124
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v1

    sub-int v0, v1, v0

    div-int/lit8 v2, v0, 0x2

    .line 1125
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rC:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1127
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rC:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1128
    instance-of v3, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_2

    .line 1129
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1130
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    move v1, v0

    .line 1133
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->cm:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1134
    instance-of v3, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_3

    .line 1135
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1136
    invoke-virtual {v0}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result v0

    add-int/2addr v1, v0

    .line 1139
    :cond_3
    sub-int/2addr v2, v1

    .line 1140
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    add-int v4, v2, v0

    .line 1142
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 1143
    sub-int v1, v9, v0

    div-int/lit8 v1, v1, 0x2

    add-int v3, v7, v1

    .line 1144
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    add-int v5, v3, v0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 1150
    :cond_4
    :goto_3
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rp:I

    packed-switch v0, :pswitch_data_0

    .line 1203
    :cond_5
    :goto_4
    :pswitch_0
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1204
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_6

    .line 1205
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v1, v0, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1206
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1209
    :cond_6
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rK:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 1210
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rK:Landroid/view/View;

    invoke-virtual {p0, v1, v0, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1211
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rK:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1214
    :cond_7
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rH:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rH:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_8

    .line 1216
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rH:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->rL:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v1, v2, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1217
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rH:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->rL:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 1220
    :cond_8
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rI:Landroid/view/View;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rI:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_21

    .line 1222
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rI:Landroid/view/View;

    invoke-virtual {p0, v1, v0, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1223
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rI:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    move v1, v0

    .line 1226
    :goto_5
    const/4 v0, 0x0

    .line 1227
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->rX:Landroid/view/View;

    if-eqz v2, :cond_17

    .line 1228
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rX:Landroid/view/View;

    move-object v7, v0

    .line 1233
    :goto_6
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_b

    .line 1234
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1235
    instance-of v2, v0, Landroid/app/ActionBar$LayoutParams;

    if-eqz v2, :cond_18

    check-cast v0, Landroid/app/ActionBar$LayoutParams;

    move-object v4, v0

    .line 1238
    :goto_7
    if-eqz v4, :cond_19

    iget v0, v4, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 1239
    :goto_8
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1241
    const/4 v3, 0x0

    .line 1242
    const/4 v2, 0x0

    .line 1243
    if-eqz v4, :cond_1f

    .line 1244
    invoke-virtual {v4}, Landroid/app/ActionBar$LayoutParams;->getMarginStart()I

    move-result v2

    add-int/2addr v6, v2

    .line 1245
    invoke-virtual {v4}, Landroid/app/ActionBar$LayoutParams;->getMarginEnd()I

    move-result v2

    sub-int v3, v1, v2

    .line 1246
    iget v2, v4, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    .line 1247
    iget v1, v4, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    move v4, v1

    move v5, v2

    move v11, v3

    move v3, v6

    move v6, v11

    .line 1250
    :goto_9
    const v1, 0x800007

    and-int/2addr v1, v0

    .line 1252
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 1253
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v9

    div-int/lit8 v2, v2, 0x2

    .line 1254
    if-ge v2, v3, :cond_1a

    .line 1255
    const v1, 0x800003

    .line 1263
    :cond_9
    :goto_a
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingStart()I

    move-result v2

    .line 1264
    invoke-direct {p0, v1, v8}, Lcom/miui/internal/widget/ActionBarView;->d(IZ)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move v3, v2

    .line 1276
    :goto_b
    :sswitch_0
    and-int/lit8 v1, v0, 0x70

    .line 1278
    const/4 v2, -0x1

    if-ne v0, v2, :cond_a

    .line 1279
    const/16 v0, 0x10

    move v1, v0

    .line 1282
    :cond_a
    const/4 v0, 0x0

    .line 1283
    sparse-switch v1, :sswitch_data_1

    .line 1297
    :goto_c
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1298
    if-eqz v8, :cond_1c

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    move v2, v1

    .line 1299
    :goto_d
    if-eqz v8, :cond_1d

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v3

    .line 1300
    :goto_e
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v7, v2, v0, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 1303
    :cond_b
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rG:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_c

    .line 1304
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rG:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1305
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rG:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1306
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rG:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->rL:I

    neg-int v3, v0

    iget v4, p0, Lcom/miui/internal/widget/ActionBarView;->rL:I

    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->rG:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 1310
    :cond_c
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rC:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rC:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rC:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1312
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 1313
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->cm:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 1314
    const/4 v0, 0x0

    .line 1315
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->cm:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1e

    .line 1316
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->cm:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    move v1, v0

    .line 1318
    :goto_f
    const/4 v0, 0x2

    new-array v4, v0, [I

    .line 1319
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rC:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 1321
    const/4 v0, 0x1

    aget v0, v3, v0

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, v4, v1

    sub-int/2addr v0, v1

    .line 1322
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rC:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTop(I)V

    .line 1323
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rC:Landroid/view/View;

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setBottom(I)V

    goto/16 :goto_0

    .line 1110
    :cond_d
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    goto/16 :goto_1

    .line 1114
    :cond_e
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rJ:Landroid/view/View;

    if-eqz v1, :cond_25

    .line 1115
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rJ:Landroid/view/View;

    invoke-virtual {p0, v1, v0, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    add-int/2addr v0, v1

    move v6, v0

    goto/16 :goto_2

    .line 1146
    :cond_f
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v6, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v0

    add-int/2addr v6, v0

    goto/16 :goto_3

    .line 1154
    :pswitch_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rE:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 1155
    if-eqz v10, :cond_10

    .line 1156
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rM:I

    add-int/2addr v6, v0

    .line 1158
    :cond_10
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rE:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v6, v7, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->rM:I

    add-int/2addr v0, v1

    add-int/2addr v6, v0

    goto/16 :goto_4

    .line 1162
    :pswitch_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_5

    .line 1163
    if-eqz v10, :cond_11

    .line 1164
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rM:I

    add-int/2addr v6, v0

    .line 1167
    :cond_11
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v2

    .line 1168
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getMeasuredHeight()I

    move-result v4

    .line 1170
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 1171
    if-le v6, v0, :cond_13

    move v1, v6

    .line 1173
    :goto_10
    add-int v3, v1, v2

    .line 1175
    const/4 v0, 0x0

    .line 1176
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->rF:Landroid/view/View;

    if-eqz v2, :cond_12

    .line 1177
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1178
    instance-of v2, v0, Landroid/app/ActionBar$LayoutParams;

    if-eqz v2, :cond_14

    check-cast v0, Landroid/app/ActionBar$LayoutParams;

    .line 1180
    :goto_11
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->rF:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1181
    if-eqz v0, :cond_24

    .line 1182
    iget v5, v0, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    iget v0, v0, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    add-int/2addr v0, v5

    add-int/2addr v0, v2

    .line 1186
    :cond_12
    :goto_12
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingEnd()I

    move-result v5

    sub-int/2addr v2, v5

    sub-int v0, v2, v0

    .line 1187
    if-le v3, v0, :cond_23

    .line 1188
    add-int v2, v1, v3

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_22

    :goto_13
    move v1, v0

    move v3, v6

    .line 1194
    :goto_14
    if-eqz v8, :cond_15

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v0

    sub-int/2addr v0, v1

    move v2, v0

    .line 1195
    :goto_15
    if-eqz v8, :cond_16

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v0

    sub-int/2addr v0, v3

    .line 1196
    :goto_16
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    add-int/2addr v4, v7

    invoke-virtual {v3, v2, v7, v0, v4}, Lcom/miui/internal/widget/ScrollingTabContainerView;->layout(IIII)V

    move v6, v1

    .line 1197
    goto/16 :goto_4

    :cond_13
    move v1, v0

    .line 1171
    goto :goto_10

    .line 1178
    :cond_14
    const/4 v0, 0x0

    goto :goto_11

    :cond_15
    move v2, v3

    .line 1194
    goto :goto_15

    :cond_16
    move v0, v1

    .line 1195
    goto :goto_16

    .line 1229
    :cond_17
    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->rq:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->rF:Landroid/view/View;

    if-eqz v2, :cond_20

    .line 1231
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rF:Landroid/view/View;

    move-object v7, v0

    goto/16 :goto_6

    .line 1235
    :cond_18
    const/4 v0, 0x0

    move-object v4, v0

    goto/16 :goto_7

    .line 1238
    :cond_19
    const v0, 0x800013

    goto/16 :goto_8

    .line 1256
    :cond_1a
    add-int/2addr v2, v9

    if-le v2, v6, :cond_9

    .line 1257
    const v1, 0x800005

    goto/16 :goto_a

    .line 1259
    :cond_1b
    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 1260
    const v1, 0x800003

    goto/16 :goto_a

    .line 1266
    :sswitch_1
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v9

    div-int/lit8 v3, v1, 0x2

    goto/16 :goto_b

    .line 1272
    :sswitch_2
    sub-int v3, v6, v9

    goto/16 :goto_b

    .line 1285
    :sswitch_3
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v0

    .line 1286
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1287
    sub-int v0, v1, v0

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto/16 :goto_c

    .line 1290
    :sswitch_4
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v5

    .line 1291
    goto/16 :goto_c

    .line 1293
    :sswitch_5
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v4

    goto/16 :goto_c

    :cond_1c
    move v2, v3

    .line 1298
    goto/16 :goto_d

    .line 1299
    :cond_1d
    add-int v1, v3, v4

    goto/16 :goto_e

    :cond_1e
    move v1, v0

    goto/16 :goto_f

    :cond_1f
    move v4, v2

    move v5, v3

    move v3, v6

    move v6, v1

    goto/16 :goto_9

    :cond_20
    move-object v7, v0

    goto/16 :goto_6

    :cond_21
    move v1, v0

    goto/16 :goto_5

    :cond_22
    move v6, v1

    goto/16 :goto_13

    :cond_23
    move v11, v3

    move v3, v1

    move v1, v11

    goto/16 :goto_14

    :cond_24
    move v0, v2

    goto/16 :goto_12

    :cond_25
    move v6, v0

    goto/16 :goto_2

    .line 1150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1264
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_2
    .end sparse-switch

    .line 1283
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_4
        0x50 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 20

    .prologue
    .line 900
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getChildCount()I

    move-result v13

    .line 901
    const/4 v2, 0x0

    .line 902
    const/4 v1, 0x0

    move/from16 v19, v1

    move v1, v2

    move/from16 v2, v19

    :goto_0
    if-ge v2, v13, :cond_2

    .line 903
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 904
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-ne v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v3}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_1

    .line 906
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 902
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 910
    :cond_2
    if-nez v1, :cond_4

    .line 912
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 913
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/miui/internal/widget/ActionBarView;->rQ:Z

    .line 1096
    :cond_3
    :goto_1
    return-void

    .line 917
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/miui/internal/widget/ActionBarView;->rQ:Z

    .line 919
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 921
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    if-lez v1, :cond_11

    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    move v3, v1

    .line 924
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v2

    add-int v15, v1, v2

    .line 925
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingStart()I

    move-result v1

    .line 926
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingEnd()I

    move-result v2

    .line 927
    sub-int v11, v3, v15

    .line 928
    const/high16 v4, -0x80000000

    invoke-static {v11, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 930
    sub-int v1, v14, v1

    sub-int/2addr v1, v2

    .line 931
    div-int/lit8 v5, v1, 0x2

    .line 934
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->rJ:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->rJ:Landroid/view/View;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1, v6, v4}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v1

    .line 937
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->rK:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->rK:Landroid/view/View;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1, v6, v4}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v1

    .line 941
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->rX:Landroid/view/View;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->rA:Lcom/miui/internal/widget/ActionBarView$HomeView;

    .line 943
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarView;->rJ:Landroid/view/View;

    if-eqz v4, :cond_7

    if-eqz v2, :cond_7

    .line 944
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 947
    :cond_7
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v4

    const/16 v7, 0x8

    if-eq v4, v7, :cond_25

    .line 948
    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 950
    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v7, :cond_13

    .line 951
    const/high16 v4, -0x80000000

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 955
    :goto_4
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v11, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v2, v4, v7}, Lcom/miui/internal/widget/ActionBarView$HomeView;->measure(II)V

    .line 957
    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarView$HomeView;->bn()I

    move-result v2

    add-int/2addr v4, v2

    .line 958
    const/4 v2, 0x0

    sub-int/2addr v1, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 959
    const/4 v1, 0x0

    sub-int v4, v2, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v4, v1

    move v1, v2

    .line 962
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object/from16 v0, p0

    if-ne v2, v0, :cond_8

    .line 963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1, v6, v7}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v1

    .line 965
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v7}, Lcom/miui/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 968
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->rH:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->rH:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    const/16 v7, 0x8

    if-eq v2, v7, :cond_9

    .line 970
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->rH:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/miui/internal/widget/ActionBarView;->rL:I

    mul-int/lit8 v7, v7, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1, v6, v7}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v1

    .line 972
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/internal/widget/ActionBarView;->rH:Landroid/widget/ProgressBar;

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/miui/internal/widget/ActionBarView;->rL:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 976
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->rI:Landroid/view/View;

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->rI:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v7, 0x8

    if-eq v2, v7, :cond_24

    .line 978
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->rI:Landroid/view/View;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1, v6, v7}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v1

    .line 980
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/internal/widget/ActionBarView;->rI:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v1

    .line 984
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->bg()Z

    move-result v16

    .line 986
    if-eqz v16, :cond_a

    .line 987
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->bh()V

    .line 990
    :cond_a
    const/4 v1, 0x0

    .line 991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->rX:Landroid/view/View;

    if-eqz v2, :cond_14

    .line 992
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->rX:Landroid/view/View;

    move-object v7, v1

    .line 998
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->rJ:Landroid/view/View;

    if-nez v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->rK:Landroid/view/View;

    if-eqz v1, :cond_c

    :cond_b
    if-eqz v7, :cond_c

    .line 999
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1002
    :cond_c
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_e

    .line 1003
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1004
    instance-of v1, v2, Landroid/app/ActionBar$LayoutParams;

    if-eqz v1, :cond_15

    move-object v1, v2

    check-cast v1, Landroid/app/ActionBar$LayoutParams;

    move-object v12, v1

    .line 1007
    :goto_8
    const/4 v8, 0x0

    .line 1008
    const/4 v1, 0x0

    .line 1009
    if-eqz v12, :cond_d

    .line 1010
    iget v1, v12, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    iget v8, v12, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    add-int/2addr v8, v1

    .line 1011
    iget v1, v12, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    iget v9, v12, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v9

    .line 1017
    :cond_d
    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    if-gtz v9, :cond_16

    .line 1018
    const/high16 v9, -0x80000000

    .line 1023
    :goto_9
    const/16 v17, 0x0

    iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v10, :cond_18

    iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_a
    sub-int v1, v10, v1

    move/from16 v0, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1026
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v10, -0x2

    if-eq v1, v10, :cond_19

    const/high16 v1, 0x40000000    # 2.0f

    .line 1028
    :goto_b
    const/16 v18, 0x0

    iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v10, :cond_1a

    iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_c
    sub-int/2addr v10, v8

    move/from16 v0, v18

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1031
    if-eqz v12, :cond_1b

    iget v12, v12, Landroid/app/ActionBar$LayoutParams;->gravity:I

    :goto_d
    const v18, 0x800007

    and-int v12, v12, v18

    .line 1036
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_22

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v12, -0x1

    if-ne v2, v12, :cond_22

    .line 1037
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    .line 1040
    :goto_e
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move/from16 v0, v17

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1043
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v8

    sub-int/2addr v6, v1

    .line 1046
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->rX:Landroid/view/View;

    if-nez v1, :cond_f

    if-eqz v16, :cond_f

    .line 1047
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v6, v2, v4}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1051
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->rX:Landroid/view/View;

    if-nez v1, :cond_10

    .line 1052
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/widget/ActionBarView;->rp:I

    packed-switch v1, :pswitch_data_0

    .line 1077
    :cond_10
    :goto_f
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    if-gtz v1, :cond_20

    .line 1078
    const/4 v2, 0x0

    .line 1079
    const/4 v1, 0x0

    move v3, v1

    :goto_10
    if-ge v3, v13, :cond_1f

    .line 1080
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1081
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v15

    .line 1082
    if-le v1, v2, :cond_21

    .line 1079
    :goto_11
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_10

    .line 921
    :cond_11
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    move v3, v1

    goto/16 :goto_2

    .line 941
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    goto/16 :goto_3

    .line 953
    :cond_13
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto/16 :goto_4

    .line 993
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/internal/widget/ActionBarView;->rq:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->rF:Landroid/view/View;

    if-eqz v2, :cond_23

    .line 995
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->rF:Landroid/view/View;

    move-object v7, v1

    goto/16 :goto_7

    .line 1004
    :cond_15
    const/4 v1, 0x0

    move-object v12, v1

    goto/16 :goto_8

    .line 1020
    :cond_16
    iget v9, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v10, -0x2

    if-eq v9, v10, :cond_17

    const/high16 v9, 0x40000000    # 2.0f

    goto/16 :goto_9

    :cond_17
    const/high16 v9, -0x80000000

    goto/16 :goto_9

    :cond_18
    move v10, v11

    .line 1023
    goto/16 :goto_a

    .line 1026
    :cond_19
    const/high16 v1, -0x80000000

    goto/16 :goto_b

    :cond_1a
    move v10, v6

    .line 1028
    goto/16 :goto_c

    .line 1031
    :cond_1b
    const v12, 0x800013

    goto/16 :goto_d

    .line 1054
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->rE:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_10

    .line 1055
    if-eqz v16, :cond_1c

    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/widget/ActionBarView;->rM:I

    mul-int/lit8 v1, v1, 0x2

    .line 1056
    :goto_12
    const/4 v2, 0x0

    sub-int v1, v6, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarView;->rE:Landroid/widget/LinearLayout;

    const/high16 v4, -0x80000000

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v11, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->measure(II)V

    goto/16 :goto_f

    .line 1055
    :cond_1c
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/widget/ActionBarView;->rM:I

    goto :goto_12

    .line 1063
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_10

    .line 1064
    if-eqz v16, :cond_1d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/widget/ActionBarView;->rM:I

    mul-int/lit8 v1, v1, 0x2

    .line 1065
    :goto_13
    const/4 v2, 0x0

    sub-int v1, v6, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1068
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/miui/internal/R$integer;->action_bar_tab_layout_weight:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1069
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarView;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-nez v1, :cond_1e

    const/high16 v1, -0x80000000

    :goto_14
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v11, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v4, v1, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->measure(II)V

    goto/16 :goto_f

    .line 1064
    :cond_1d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/widget/ActionBarView;->rM:I

    goto :goto_13

    .line 1069
    :cond_1e
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_14

    .line 1086
    :cond_1f
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lcom/miui/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1091
    :goto_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->rG:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->rG:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    .line 1092
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->rG:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/internal/widget/ActionBarView;->rL:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v14, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ProgressBar;->measure(II)V

    goto/16 :goto_1

    .line 1088
    :cond_20
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/miui/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_15

    :cond_21
    move v1, v2

    goto/16 :goto_11

    :cond_22
    move v2, v10

    goto/16 :goto_e

    :cond_23
    move-object v7, v1

    goto/16 :goto_7

    :cond_24
    move v6, v1

    goto/16 :goto_6

    :cond_25
    move v4, v5

    goto/16 :goto_5

    .line 1052
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1356
    check-cast p1, Lcom/miui/internal/widget/ActionBarView$SavedState;

    .line 1358
    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/miui/internal/widget/a;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1360
    iget v0, p1, Lcom/miui/internal/widget/ActionBarView$SavedState;->sj:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rW:Lcom/miui/internal/widget/ActionBarView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rS:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rS:Lcom/miui/internal/view/menu/MenuBuilder;

    iget v1, p1, Lcom/miui/internal/widget/ActionBarView$SavedState;->sj:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1363
    if-eqz v0, :cond_0

    .line 1364
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1368
    :cond_0
    iget-boolean v0, p1, Lcom/miui/internal/widget/ActionBarView$SavedState;->qj:Z

    if-eqz v0, :cond_1

    .line 1369
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->postShowOverflowMenu()V

    .line 1371
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1342
    invoke-super {p0}, Lcom/miui/internal/widget/a;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1343
    new-instance v1, Lcom/miui/internal/widget/ActionBarView$SavedState;

    invoke-direct {v1, v0}, Lcom/miui/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1345
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rW:Lcom/miui/internal/widget/ActionBarView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rW:Lcom/miui/internal/widget/ActionBarView$a;

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView$a;->se:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rW:Lcom/miui/internal/widget/ActionBarView$a;

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView$a;->se:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    iput v0, v1, Lcom/miui/internal/widget/ActionBarView$SavedState;->sj:I

    .line 1349
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    iput-boolean v0, v1, Lcom/miui/internal/widget/ActionBarView$SavedState;->qj:Z

    .line 1351
    return-object v1
.end method

.method public onWindowHide()V
    .locals 1

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->onWindowHide()V

    .line 1733
    return-void
.end method

.method public onWindowShow()V
    .locals 1

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->onWindowShow()V

    .line 1729
    return-void
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/miui/internal/widget/a;->postShowOverflowMenu()V

    return-void
.end method

.method public setCallback(Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->rV:Landroid/app/ActionBar$OnNavigationListener;

    .line 387
    return-void
.end method

.method public setCollapsable(Z)V
    .locals 0

    .prologue
    .line 841
    return-void
.end method

.method public bridge synthetic setContentHeight(I)V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->setContentHeight(I)V

    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 487
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rq:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 488
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rF:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 489
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rF:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 491
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->rF:Landroid/view/View;

    .line 492
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rF:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rF:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 495
    :cond_1
    return-void

    .line 487
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 8

    .prologue
    const/16 v3, 0x8

    const/4 v0, -0x1

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 592
    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->rq:I

    if-ne v1, v0, :cond_7

    .line 593
    :goto_0
    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->rq:I

    .line 595
    and-int/lit8 v1, v0, 0x1f

    if-eqz v1, :cond_13

    .line 597
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_8

    move v6, v4

    .line 598
    :goto_1
    if-eqz v6, :cond_d

    .line 599
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->bl()V

    .line 600
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rX:Landroid/view/View;

    if-nez v1, :cond_9

    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 601
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 602
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_a

    move v1, v4

    .line 603
    :goto_3
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v5, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->m(Z)V

    .line 609
    if-eqz v1, :cond_0

    .line 610
    invoke-virtual {p0, v4}, Lcom/miui/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 614
    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 615
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->bk()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 616
    if-eqz v5, :cond_b

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_b

    move v1, v4

    .line 617
    :goto_4
    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v1, :cond_c

    move-object v1, v5

    :goto_5
    invoke-virtual {v7, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 625
    :cond_1
    :goto_6
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 626
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_e

    .line 627
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->initTitle()V

    .line 633
    :cond_2
    :goto_7
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    and-int/lit8 v1, v0, 0x6

    if-eqz v1, :cond_4

    .line 635
    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->rq:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_f

    move v1, v4

    .line 636
    :goto_8
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->rC:Landroid/view/View;

    if-nez v6, :cond_3

    if-eqz v1, :cond_10

    move v3, v2

    :cond_3
    :goto_9
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 637
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    if-nez v6, :cond_11

    if-eqz v1, :cond_11

    :goto_a
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 640
    :cond_4
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rF:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 641
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_12

    .line 642
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rF:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 648
    :cond_5
    :goto_b
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->requestLayout()V

    .line 654
    :goto_c
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_6

    .line 655
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 656
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 665
    :cond_6
    :goto_d
    return-void

    .line 592
    :cond_7
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rq:I

    xor-int/2addr v0, p1

    goto/16 :goto_0

    :cond_8
    move v6, v2

    .line 597
    goto/16 :goto_1

    :cond_9
    move v1, v3

    .line 600
    goto/16 :goto_2

    :cond_a
    move v1, v2

    .line 602
    goto/16 :goto_3

    :cond_b
    move v1, v2

    .line 616
    goto :goto_4

    .line 617
    :cond_c
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_5

    .line 620
    :cond_d
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v1, :cond_1

    .line 621
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_6

    .line 629
    :cond_e
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_7

    :cond_f
    move v1, v2

    .line 635
    goto :goto_8

    .line 636
    :cond_10
    const/4 v3, 0x4

    goto :goto_9

    :cond_11
    move v4, v2

    .line 637
    goto :goto_a

    .line 644
    :cond_12
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rF:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_b

    .line 650
    :cond_13
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->invalidate()V

    goto :goto_c

    .line 657
    :cond_14
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_15

    .line 658
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$string;->abc_action_bar_up_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 661
    :cond_15
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$string;->abc_action_bar_home_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1

    .prologue
    .line 744
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->rU:Landroid/widget/SpinnerAdapter;

    .line 745
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rD:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rD:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 748
    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rD:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 756
    return-void
.end method

.method public setEmbeddedTabView(Lcom/miui/internal/widget/ScrollingTabContainerView;)V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 374
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    .line 375
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->rP:Z

    .line 376
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->rP:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rp:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 377
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 378
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 379
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 380
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 381
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->bd()V

    .line 383
    :cond_1
    return-void

    .line 375
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEndView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rK:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rK:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 511
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->rK:Landroid/view/View;

    .line 512
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rK:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rK:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 515
    :cond_1
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->p(I)V

    .line 1389
    :goto_0
    return-void

    .line 1386
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rv:Landroid/graphics/drawable/Drawable;

    .line 1387
    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->rw:I

    goto :goto_0
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1380
    :goto_0
    return-void

    .line 1377
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->rv:Landroid/graphics/drawable/Drawable;

    .line 1378
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->rw:I

    goto :goto_0
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 3

    .prologue
    .line 575
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 577
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 579
    if-nez p1, :cond_1

    .line 580
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rq:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 582
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$string;->abc_action_bar_up_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 585
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$string;->abc_action_bar_home_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 683
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 668
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 669
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rs:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->rs:I

    .line 670
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rq:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->bk()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rX:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 677
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rA:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 679
    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 697
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 686
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->rt:Landroid/graphics/drawable/Drawable;

    .line 687
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rs:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->rs:I

    .line 688
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rq:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rz:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 693
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 390
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rS:Lcom/miui/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rS:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rS:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    .line 396
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rS:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rW:Lcom/miui/internal/widget/ActionBarView$a;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    .line 399
    :cond_1
    check-cast p1, Lcom/miui/internal/view/menu/MenuBuilder;

    .line 400
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->rS:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 401
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 403
    if-eqz v0, :cond_2

    .line 404
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-nez v0, :cond_3

    .line 408
    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/ActionBarView;->createActionMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)Lcom/miui/internal/view/menu/ActionMenuPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 409
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->createExpandedActionViewMenuPresenter()Lcom/miui/internal/widget/ActionBarView$a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rW:Lcom/miui/internal/widget/ActionBarView$a;

    .line 413
    :cond_3
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 415
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-nez v0, :cond_6

    .line 416
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/miui/internal/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 419
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->g(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 420
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView;

    .line 421
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 422
    if-eqz v1, :cond_4

    if-eq v1, p0, :cond_4

    .line 423
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 425
    :cond_4
    invoke-virtual {p0, v0, v2}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    :cond_5
    :goto_1
    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    goto :goto_0

    .line 427
    :cond_6
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v6}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 429
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 432
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 433
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 434
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x11

    :goto_2
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 435
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->g(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 436
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView;

    .line 437
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_9

    .line 438
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 439
    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eq v1, v3, :cond_7

    .line 440
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 442
    :cond_7
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuView;->setVisibility(I)V

    .line 444
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0, v6, v2}, Lcom/miui/internal/widget/ActionBarContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 446
    sget v1, Lcom/miui/internal/R$id;->expanded_menu:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 448
    if-eqz v1, :cond_5

    .line 449
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    .line 434
    :cond_8
    const/16 v0, 0x50

    goto :goto_2

    .line 453
    :cond_9
    invoke-virtual {v0, v2}, Lcom/miui/internal/view/menu/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setNavigationMode(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 700
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rp:I

    .line 701
    if-eq p1, v0, :cond_2

    .line 702
    packed-switch v0, :pswitch_data_0

    .line 714
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 738
    :cond_1
    :goto_1
    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->rp:I

    .line 739
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->requestLayout()V

    .line 741
    :cond_2
    return-void

    .line 704
    :pswitch_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rE:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rE:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 709
    :pswitch_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->rP:Z

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 716
    :pswitch_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rD:Landroid/widget/Spinner;

    if-nez v0, :cond_3

    .line 717
    new-instance v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v2, 0x10102d7

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rD:Landroid/widget/Spinner;

    .line 719
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$layout;->action_bar_view_list_nav_layout:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rE:Landroid/widget/LinearLayout;

    .line 721
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 723
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 724
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rE:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->rD:Landroid/widget/Spinner;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rD:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rU:Landroid/widget/SpinnerAdapter;

    if-eq v0, v1, :cond_4

    .line 727
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rD:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rU:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 729
    :cond_4
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rD:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rY:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 730
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rE:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 733
    :pswitch_3
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->rP:Z

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->bk:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 714
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setProgress(I)V
    .locals 1

    .prologue
    .line 1751
    add-int/lit8 v0, p1, 0x0

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->o(I)V

    .line 1752
    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 1

    .prologue
    .line 1746
    if-eqz p1, :cond_0

    const/4 v0, -0x3

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->o(I)V

    .line 1748
    return-void

    .line 1746
    :cond_0
    const/4 v0, -0x4

    goto :goto_0
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .locals 1

    .prologue
    .line 1741
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->o(I)V

    .line 1743
    return-void

    .line 1741
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setProgressBarVisibility(Z)V
    .locals 1

    .prologue
    .line 1736
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->o(I)V

    .line 1738
    return-void

    .line 1736
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setSplitActionBar(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 319
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_5

    .line 320
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 322
    if-eqz v0, :cond_0

    .line 323
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 325
    :cond_0
    if-eqz p1, :cond_6

    .line 326
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 334
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->requestLayout()V

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_3

    .line 337
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_4

    .line 341
    if-nez p1, :cond_8

    .line 342
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 352
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->setSplitActionBar(Z)V

    .line 354
    :cond_5
    return-void

    .line 331
    :cond_6
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 332
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 337
    :cond_7
    const/16 v0, 0x8

    goto :goto_1

    .line 346
    :cond_8
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 348
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    goto :goto_2
.end method

.method public bridge synthetic setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rJ:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rJ:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 501
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->rJ:Landroid/view/View;

    .line 502
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rJ:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rJ:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 505
    :cond_1
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 563
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->rr:Ljava/lang/CharSequence;

    .line 564
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rB:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rB:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->rB:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rX:Landroid/view/View;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->rq:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->rr:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 570
    :goto_1
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->pS:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 572
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 566
    goto :goto_0

    :cond_3
    move v0, v1

    .line 567
    goto :goto_1

    :cond_4
    move v1, v2

    .line 570
    goto :goto_2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->rO:Z

    .line 529
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->a(Ljava/lang/CharSequence;)V

    .line 530
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/miui/internal/widget/a;->setVisibility(I)V

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->cD:Landroid/view/Window$Callback;

    .line 242
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->rO:Z

    if-nez v0, :cond_0

    .line 540
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->a(Ljava/lang/CharSequence;)V

    .line 542
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public showImmersionMore()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 302
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rI:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->rI:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 304
    const/4 v0, 0x1

    .line 306
    :cond_0
    return v0
.end method

.method public bridge synthetic showOverflowMenu()Z
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/miui/internal/widget/a;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
