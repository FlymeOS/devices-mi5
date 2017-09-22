.class public Lmiui/widget/ImmersionListPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/ImmersionListPopupWindow$a;,
        Lmiui/widget/ImmersionListPopupWindow$b;
    }
.end annotation


# static fields
.field private static final RK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ImmersionListPopupWindow"


# instance fields
.field private RD:Ljava/lang/Runnable;

.field private RL:Landroid/widget/FrameLayout;

.field private RM:Landroid/widget/AdapterView$OnItemClickListener;

.field private RN:Landroid/view/animation/LayoutAnimationController;

.field private RP:Landroid/view/animation/LayoutAnimationController;

.field private RQ:Lmiui/widget/ImmersionListPopupWindow$a;

.field private ck:Landroid/widget/ListView;

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private nC:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 66
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Lmiui/widget/ImmersionListPopupWindow$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/widget/ImmersionListPopupWindow$a;-><init>(Lmiui/widget/ImmersionListPopupWindow;Lmiui/widget/ImmersionListPopupWindow$1;)V

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RQ:Lmiui/widget/ImmersionListPopupWindow$a;

    .line 69
    invoke-virtual {p0, v2}, Lmiui/widget/ImmersionListPopupWindow;->setFocusable(Z)V

    .line 70
    invoke-virtual {p0, v3, v3}, Lmiui/widget/ImmersionListPopupWindow;->setWindowLayoutMode(II)V

    .line 72
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RL:Landroid/widget/FrameLayout;

    .line 73
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RL:Landroid/widget/FrameLayout;

    new-instance v1, Lmiui/widget/ImmersionListPopupWindow$1;

    invoke-direct {v1, p0}, Lmiui/widget/ImmersionListPopupWindow$1;-><init>(Lmiui/widget/ImmersionListPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RL:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 81
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p0, v2}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInScreenEnabled(Landroid/widget/PopupWindow;Z)V

    .line 84
    invoke-virtual {v0, p0, v2}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInsetDecor(Landroid/widget/PopupWindow;Z)V

    .line 85
    return-void
.end method

.method static synthetic a(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->ck:Landroid/widget/ListView;

    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 236
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->nC:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 239
    new-array v0, v2, [I

    .line 240
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 241
    new-array v1, v2, [I

    .line 242
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 243
    aget v2, v1, v5

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    aget v3, v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 244
    aget v1, v1, v6

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    aget v0, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sub-int v0, v1, v0

    .line 245
    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->nC:Landroid/view/View;

    invoke-virtual {v1, v5, v5, v2, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 246
    return-void
.end method

.method static synthetic b(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic c(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RM:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private c(F)V
    .locals 2

    .prologue
    .line 325
    invoke-virtual {p0}, Lmiui/widget/ImmersionListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 326
    instance-of v1, v0, Lmiui/widget/ImmersionListPopupWindow$b;

    if-eqz v1, :cond_0

    .line 327
    check-cast v0, Lmiui/widget/ImmersionListPopupWindow$b;

    invoke-virtual {v0, p1}, Lmiui/widget/ImmersionListPopupWindow$b;->setRangeRatio(F)V

    .line 329
    :cond_0
    return-void
.end method

.method static synthetic d(Lmiui/widget/ImmersionListPopupWindow;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lmiui/widget/ImmersionListPopupWindow;)Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method private eu()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RD:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RD:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RD:Ljava/lang/Runnable;

    .line 317
    :cond_0
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-nez v0, :cond_1

    .line 318
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/ImmersionListPopupWindow;->c(F)V

    .line 321
    :cond_1
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 322
    return-void
.end method

.method static synthetic f(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RL:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic g(Lmiui/widget/ImmersionListPopupWindow;)Landroid/view/animation/LayoutAnimationController;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RN:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method static synthetic h(Lmiui/widget/ImmersionListPopupWindow;)Landroid/view/animation/LayoutAnimationController;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RP:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method static synthetic i(Lmiui/widget/ImmersionListPopupWindow;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lmiui/widget/ImmersionListPopupWindow;->eu()V

    return-void
.end method

.method private m(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 163
    invoke-virtual {p0}, Lmiui/widget/ImmersionListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 168
    instance-of v0, v1, Lmiui/app/IActivity;

    if-nez v0, :cond_1

    .line 169
    const-string v0, "ImmersionListPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to setup translucent status for unknown context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RD:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 174
    check-cast v0, Lmiui/app/IActivity;

    .line 175
    invoke-interface {v0}, Lmiui/app/IActivity;->getTranslucentStatus()I

    move-result v2

    .line 176
    sget v3, Lcom/miui/internal/R$attr;->immersionStatusBarStyle:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v1

    .line 179
    invoke-interface {v0, v1}, Lmiui/app/IActivity;->setTranslucentStatus(I)V

    .line 180
    new-instance v1, Lmiui/widget/ImmersionListPopupWindow$3;

    invoke-direct {v1, p0, v0, v2}, Lmiui/widget/ImmersionListPopupWindow$3;-><init>(Lmiui/widget/ImmersionListPopupWindow;Lmiui/app/IActivity;I)V

    iput-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->RD:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private n(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 227
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    const v1, 0x10102eb

    invoke-static {v0, v1}, Lmiui/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    .line 228
    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->nC:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 229
    invoke-virtual {p1, v3, v3}, Landroid/view/View;->measure(II)V

    .line 230
    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->nC:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 232
    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->nC:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 233
    return-void
.end method


# virtual methods
.method protected createDefaultFadeInAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    sget v1, Lcom/miui/internal/R$anim;->immersion_layout_fade_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    return-object v0
.end method

.method protected createDefaultFadeOutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    sget v1, Lcom/miui/internal/R$anim;->immersion_layout_fade_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lmiui/widget/ImmersionListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_4

    .line 281
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->ck:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RP:Landroid/view/animation/LayoutAnimationController;

    if-nez v0, :cond_2

    .line 285
    invoke-virtual {p0}, Lmiui/widget/ImmersionListPopupWindow;->createDefaultFadeOutAnimation()Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RP:Landroid/view/animation/LayoutAnimationController;

    .line 287
    :cond_2
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RP:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_3

    .line 288
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->ck:Landroid/widget/ListView;

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->RP:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 289
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->ck:Landroid/widget/ListView;

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->RQ:Lmiui/widget/ImmersionListPopupWindow$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 290
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RQ:Lmiui/widget/ImmersionListPopupWindow$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ImmersionListPopupWindow$a;->t(Z)V

    .line 291
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->ck:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->startLayoutAnimation()V

    .line 294
    :cond_3
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RD:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RD:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RD:Ljava/lang/Runnable;

    goto :goto_0

    .line 299
    :cond_4
    invoke-direct {p0}, Lmiui/widget/ImmersionListPopupWindow;->eu()V

    goto :goto_0
.end method

.method public dismiss(Z)V
    .locals 0

    .prologue
    .line 304
    if-eqz p1, :cond_0

    .line 305
    invoke-virtual {p0}, Lmiui/widget/ImmersionListPopupWindow;->dismiss()V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-direct {p0}, Lmiui/widget/ImmersionListPopupWindow;->eu()V

    goto :goto_0
.end method

.method public fastShow(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 195
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->ck:Landroid/widget/ListView;

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->RN:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 197
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RQ:Lmiui/widget/ImmersionListPopupWindow$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/ImmersionListPopupWindow$a;->t(Z)V

    .line 201
    :goto_0
    invoke-virtual {p0, p1, v2, v2, v2}, Lmiui/widget/ImmersionListPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 202
    return-void

    .line 199
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lmiui/widget/ImmersionListPopupWindow;->c(F)V

    goto :goto_0
.end method

.method protected getBackgroundAnimator(Landroid/view/animation/LayoutAnimationController;Z)Landroid/animation/Animator;
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    const/4 v4, 0x2

    .line 259
    if-eqz p2, :cond_0

    .line 260
    invoke-virtual {p0}, Lmiui/widget/ImmersionListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "rangeRatio"

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 261
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 262
    invoke-virtual {p1}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    .line 272
    :goto_0
    invoke-virtual {v4, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 273
    invoke-virtual {v4, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 274
    return-object v4

    .line 265
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/ImmersionListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "rangeRatio"

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 266
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v4, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 267
    invoke-virtual {p1}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/view/animation/LayoutAnimationController;->getDelay()F

    move-result v5

    iget-object v6, p0, Lmiui/widget/ImmersionListPopupWindow;->ck:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    mul-float/2addr v2, v3

    float-to-long v6, v2

    .line 269
    invoke-virtual {p1}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    .line 270
    sub-long/2addr v6, v2

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 260
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 265
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected getBlurBackground(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 332
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-nez v0, :cond_0

    sget v0, Lcom/miui/internal/R$attr;->themeType:I

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v0

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$color;->immersion_window_background_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 373
    :goto_0
    return-object v0

    .line 338
    :cond_0
    sget v0, Lcom/miui/internal/R$attr;->immersionBlurMask:I

    invoke-static {p1, v0}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 340
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 341
    if-nez v0, :cond_1

    .line 342
    const-string v0, "ImmersionListPopupWindow"

    const-string v1, "getBlurBackground: decorView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 343
    goto :goto_0

    .line 348
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v0, v4, v5, v6}, Lcom/miui/internal/variable/Android_View_View_class;->createSnapshot(Landroid/view/View;Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 353
    :goto_1
    if-nez v1, :cond_2

    .line 354
    const-string v0, "ImmersionListPopupWindow"

    const-string v1, "getBlurBackground: snapshot is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 355
    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    const-string v1, "ImmersionListPopupWindow"

    const-string v4, "getBlurBackground: OOM occurs while createSnapshot"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    goto :goto_1

    .line 358
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    invoke-static {v1, v0, v4, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 360
    if-eq v0, v1, :cond_3

    .line 361
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 365
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/miui/internal/R$dimen;->screenshot_blur_radius:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 367
    invoke-static {v0, v1}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 368
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 369
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 370
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 371
    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 373
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected installHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$layout;->list_immersion_header:I

    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->ck:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->nC:Landroid/view/View;

    .line 206
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->ck:Landroid/widget/ListView;

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->nC:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 208
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->nC:Landroid/view/View;

    sget v1, Lcom/miui/internal/R$id;->close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 209
    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 212
    :cond_0
    new-instance v1, Lmiui/widget/ImmersionListPopupWindow$4;

    invoke-direct {v1, p0}, Lmiui/widget/ImmersionListPopupWindow$4;-><init>(Lmiui/widget/ImmersionListPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    if-nez p2, :cond_1

    .line 220
    invoke-direct {p0, v0}, Lmiui/widget/ImmersionListPopupWindow;->n(Landroid/view/View;)V

    goto :goto_0

    .line 222
    :cond_1
    invoke-direct {p0, p1, p2}, Lmiui/widget/ImmersionListPopupWindow;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 89
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    .line 97
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->RM:Landroid/widget/AdapterView$OnItemClickListener;

    .line 93
    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    const v4, 0x102000a

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    if-nez p1, :cond_0

    .line 105
    const-string v0, "ImmersionListPopupWindow"

    const-string v1, "show: anchor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 110
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setId(I)V

    .line 112
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->immersion_list_padding_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 114
    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 117
    :cond_1
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RL:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RL:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v1, :cond_3

    .line 118
    :cond_2
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RL:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 119
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RL:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 120
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 121
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 122
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 125
    :cond_3
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->ck:Landroid/widget/ListView;

    .line 126
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->ck:Landroid/widget/ListView;

    if-nez v0, :cond_4

    .line 127
    const-string v0, "ImmersionListPopupWindow"

    const-string v1, "list not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_4
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->ck:Landroid/widget/ListView;

    new-instance v1, Lmiui/widget/ImmersionListPopupWindow$2;

    invoke-direct {v1, p0}, Lmiui/widget/ImmersionListPopupWindow$2;-><init>(Lmiui/widget/ImmersionListPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 140
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_6

    .line 141
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RN:Landroid/view/animation/LayoutAnimationController;

    if-nez v0, :cond_5

    .line 142
    invoke-virtual {p0}, Lmiui/widget/ImmersionListPopupWindow;->createDefaultFadeInAnimation()Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RN:Landroid/view/animation/LayoutAnimationController;

    .line 144
    :cond_5
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->ck:Landroid/widget/ListView;

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->RN:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 145
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->ck:Landroid/widget/ListView;

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->RQ:Lmiui/widget/ImmersionListPopupWindow$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 146
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->RQ:Lmiui/widget/ImmersionListPopupWindow$a;

    invoke-virtual {v0, v3}, Lmiui/widget/ImmersionListPopupWindow$a;->t(Z)V

    .line 149
    :cond_6
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->nC:Landroid/view/View;

    if-nez v0, :cond_7

    .line 150
    invoke-virtual {p0, p1, p2}, Lmiui/widget/ImmersionListPopupWindow;->installHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 152
    :cond_7
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->ck:Landroid/widget/ListView;

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    new-instance v1, Lmiui/widget/ImmersionListPopupWindow$b;

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lmiui/widget/ImmersionListPopupWindow;->getBlurBackground(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lmiui/widget/ImmersionListPopupWindow$b;-><init>(Lmiui/widget/ImmersionListPopupWindow;Landroid/graphics/drawable/Drawable;)V

    .line 154
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lmiui/widget/ImmersionListPopupWindow$b;->setRangeRatio(F)V

    .line 155
    invoke-virtual {p0, v1}, Lmiui/widget/ImmersionListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    invoke-static {}, Lmiui/view/inputmethod/InputMethodHelper;->getInstance()Lmiui/view/inputmethod/InputMethodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/view/inputmethod/InputMethodHelper;->getManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 158
    invoke-direct {p0, p1}, Lmiui/widget/ImmersionListPopupWindow;->m(Landroid/view/View;)V

    .line 159
    invoke-virtual {p0, p1, v2, v2, v2}, Lmiui/widget/ImmersionListPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 154
    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1
.end method
