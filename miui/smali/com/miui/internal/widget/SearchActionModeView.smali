.class public Lcom/miui/internal/widget/SearchActionModeView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/os/MessageQueue$IdleHandler;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/internal/widget/ActionModeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/SearchActionModeView$c;,
        Lcom/miui/internal/widget/SearchActionModeView$b;,
        Lcom/miui/internal/widget/SearchActionModeView$e;,
        Lcom/miui/internal/widget/SearchActionModeView$a;,
        Lcom/miui/internal/widget/SearchActionModeView$d;
    }
.end annotation


# instance fields
.field private ca:Lcom/miui/internal/widget/ActionBarContainer;

.field private mActionBarView:Lcom/miui/internal/widget/ActionBarView;

.field private pB:Z

.field private qd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/view/ActionModeAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private qe:F

.field private qf:Z

.field private uJ:Landroid/view/View;

.field private uK:Landroid/widget/EditText;

.field private uL:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private uM:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private uN:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private uO:[I

.field private uP:I

.field private uQ:I

.field private uR:I

.field private uS:I

.field private uT:I

.field private uU:I

.field private uV:I

.field private uW:I

.field private uX:I

.field private uY:I

.field private uZ:I

.field private va:I

.field private vb:I

.field private vc:Z

.field private vd:Landroid/animation/ObjectAnimator;

.field private ve:Lcom/miui/internal/widget/ActionBarContainer;

.field private vf:Landroid/view/View;

.field private vg:Z

.field private vh:I

.field private vi:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uO:[I

    .line 100
    const v0, 0x7fffffff

    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vh:I

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->setAlpha(F)V

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->uV:I

    return p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/SearchActionModeView;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qf:Z

    return v0
.end method

.method static synthetic b(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->uW:I

    return p1
.end method

.method static synthetic b(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uJ:Landroid/view/View;

    return-object v0
.end method

.method private bB()V
    .locals 1

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->bC()V

    .line 490
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->bD()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 491
    return-void
.end method

.method private bC()V
    .locals 1

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->bD()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 495
    return-void
.end method

.method private bD()Landroid/os/MessageQueue;
    .locals 1

    .prologue
    .line 498
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    return-object v0
.end method

.method private bE()Z
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uL:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uM:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vh:I

    return p1
.end method

.method static synthetic c(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uK:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uV:I

    return v0
.end method

.method static synthetic d(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->uR:I

    return p1
.end method

.method static synthetic e(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uW:I

    return v0
.end method

.method static synthetic e(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->uS:I

    return p1
.end method

.method static synthetic f(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uU:I

    return v0
.end method

.method static synthetic f(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->uP:I

    return p1
.end method

.method static synthetic g(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uT:I

    return v0
.end method

.method static synthetic g(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->uQ:I

    return p1
.end method

.method private getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 475
    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_0

    .line 477
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 479
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vh:I

    return v0
.end method

.method static synthetic i(Lcom/miui/internal/widget/SearchActionModeView;)[I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uO:[I

    return-object v0
.end method

.method static synthetic j(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uL:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic k(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uR:I

    return v0
.end method

.method static synthetic l(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uP:I

    return v0
.end method

.method static synthetic m(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uS:I

    return v0
.end method

.method static synthetic n(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uM:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic o(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uQ:I

    return v0
.end method

.method static synthetic p(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vf:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public addAnimationListener(Lmiui/view/ActionModeAnimationListener;)V
    .locals 1

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qd:Ljava/util/List;

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qd:Ljava/util/List;

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 439
    if-nez p1, :cond_2

    move v0, v1

    .line 440
    :goto_0
    if-nez v0, :cond_3

    .line 441
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vf:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vf:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 444
    :cond_0
    invoke-static {}, Lmiui/view/inputmethod/InputMethodHelper;->getInstance()Lmiui/view/inputmethod/InputMethodHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->uK:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lmiui/view/inputmethod/InputMethodHelper;->showKeyBoard(Landroid/widget/EditText;)V

    .line 450
    :cond_1
    :goto_1
    return-void

    .line 439
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_0

    .line 445
    :cond_3
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uX:I

    if-nez v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vf:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vf:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public animateToVisibility(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qf:Z

    if-ne v0, p1, :cond_1

    .line 112
    iput-boolean v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->pB:Z

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->pollViews()V

    .line 118
    iput-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->qf:Z

    .line 119
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->makeAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vd:Landroid/animation/ObjectAnimator;

    .line 120
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->createAnimationListeners()V

    .line 121
    if-eqz p1, :cond_2

    .line 122
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->setOverlayMode(Z)V

    .line 124
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->notifyAnimationStart(Z)V

    .line 125
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->bE()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->requestLayout()V

    .line 127
    iput-boolean v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->pB:Z

    .line 132
    :goto_1
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qf:Z

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 135
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->uK:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vd:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 430
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uX:I

    .line 431
    return-void

    .line 430
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method public closeMode()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vd:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vd:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 198
    :cond_0
    return-void
.end method

.method protected createAnimationListeners()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qd:Ljava/util/List;

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qd:Ljava/util/List;

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getDimView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qd:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/widget/SearchActionModeView$c;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SearchActionModeView$c;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qd:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/widget/SearchActionModeView$d;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SearchActionModeView$d;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->bE()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qd:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/widget/SearchActionModeView$b;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SearchActionModeView$b;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qd:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/widget/SearchActionModeView$a;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SearchActionModeView$a;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qd:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/widget/SearchActionModeView$e;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SearchActionModeView$e;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_2
    return-void
.end method

.method protected finishAnimation()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vd:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vd:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vd:Landroid/animation/ObjectAnimator;

    .line 230
    :cond_0
    return-void
.end method

.method protected getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;
    .locals 5

    .prologue
    .line 273
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->ca:Lcom/miui/internal/widget/ActionBarContainer;

    if-nez v0, :cond_1

    .line 274
    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 275
    if-eqz v0, :cond_0

    .line 276
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 277
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/miui/internal/R$id;->action_bar_container:I

    if-ne v3, v4, :cond_2

    instance-of v3, v1, Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 279
    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->ca:Lcom/miui/internal/widget/ActionBarContainer;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->ca:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->ca:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vi:I

    .line 287
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vi:I

    if-lez v0, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->uT:I

    iget v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->vi:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/internal/widget/SearchActionModeView;->setPadding(IIII)V

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->ca:Lcom/miui/internal/widget/ActionBarContainer;

    return-object v0

    .line 276
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method protected getActionBarView()Lcom/miui/internal/widget/ActionBarView;
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-nez v0, :cond_0

    .line 315
    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_0

    .line 317
    sget v1, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    return-object v0
.end method

.method public getAnimationProgress()F
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qe:F

    return v0
.end method

.method protected getDimView()Landroid/view/View;
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vf:Landroid/view/View;

    if-nez v0, :cond_0

    .line 325
    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_0

    .line 327
    sget v1, Lcom/miui/internal/R$id;->content_mask:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vf:Landroid/view/View;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vf:Landroid/view/View;

    return-object v0
.end method

.method public getSearchInput()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uK:Landroid/widget/EditText;

    return-object v0
.end method

.method protected getSplitActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;
    .locals 5

    .prologue
    .line 298
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->ve:Lcom/miui/internal/widget/ActionBarContainer;

    if-nez v0, :cond_0

    .line 299
    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 300
    if-eqz v2, :cond_0

    .line 301
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 302
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/miui/internal/R$id;->split_action_bar:I

    if-ne v3, v4, :cond_1

    instance-of v3, v0, Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_1

    .line 304
    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->ve:Lcom/miui/internal/widget/ActionBarContainer;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->ve:Lcom/miui/internal/widget/ActionBarContainer;

    return-object v0

    .line 301
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected getViewPager()Lmiui/view/ViewPager;
    .locals 2

    .prologue
    .line 344
    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 345
    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/app/ActionBarImpl;

    .line 346
    invoke-virtual {v1}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    sget v1, Lcom/miui/internal/R$id;->view_pager:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager;

    .line 349
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 0

    .prologue
    .line 426
    return-void
.end method

.method public killMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->finishAnimation()V

    .line 203
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 204
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 207
    :cond_0
    iput-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->ca:Lcom/miui/internal/widget/ActionBarContainer;

    .line 208
    iput-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 209
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qd:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 211
    iput-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->qd:Ljava/util/List;

    .line 213
    :cond_1
    iput-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->ve:Lcom/miui/internal/widget/ActionBarContainer;

    .line 214
    return-void
.end method

.method protected makeAnimation()Landroid/animation/ObjectAnimator;
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vd:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vd:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vd:Landroid/animation/ObjectAnimator;

    .line 236
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->bC()V

    .line 238
    :cond_0
    const-string v0, "AnimationProgress"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 239
    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 240
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0xfa

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 241
    return-object v2

    .line 240
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 238
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public notifyAnimationEnd(Z)V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qd:Ljava/util/List;

    if-nez v0, :cond_1

    .line 545
    :cond_0
    return-void

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ActionModeAnimationListener;

    .line 543
    invoke-interface {v0, p1}, Lmiui/view/ActionModeAnimationListener;->onStop(Z)V

    goto :goto_0
.end method

.method public notifyAnimationStart(Z)V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qd:Ljava/util/List;

    if-nez v0, :cond_1

    .line 525
    :cond_0
    return-void

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ActionModeAnimationListener;

    .line 523
    invoke-interface {v0, p1}, Lmiui/view/ActionModeAnimationListener;->onStart(Z)V

    goto :goto_0
.end method

.method public notifyAnimationUpdate(ZF)V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qd:Ljava/util/List;

    if-nez v0, :cond_1

    .line 535
    :cond_0
    return-void

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ActionModeAnimationListener;

    .line 533
    invoke-interface {v0, p1, p2}, Lmiui/view/ActionModeAnimationListener;->onUpdate(ZF)V

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vg:Z

    .line 418
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vg:Z

    if-eqz v0, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vd:Landroid/animation/ObjectAnimator;

    .line 390
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qf:Z

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->notifyAnimationEnd(Z)V

    .line 391
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qf:Z

    if-eqz v0, :cond_2

    .line 392
    invoke-static {}, Lmiui/view/inputmethod/InputMethodHelper;->getInstance()Lmiui/view/inputmethod/InputMethodHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->uK:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lmiui/view/inputmethod/InputMethodHelper;->showKeyBoard(Landroid/widget/EditText;)V

    .line 397
    :goto_1
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_3

    .line 398
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qf:Z

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->setResultViewMargin(Z)V

    .line 408
    :goto_2
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qf:Z

    if-nez v0, :cond_0

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->setOverlayMode(Z)V

    .line 410
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->setAlpha(F)V

    .line 411
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->killMode()V

    goto :goto_0

    .line 394
    :cond_2
    invoke-static {}, Lmiui/view/inputmethod/InputMethodHelper;->getInstance()Lmiui/view/inputmethod/InputMethodHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->uK:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lmiui/view/inputmethod/InputMethodHelper;->hideKeyBoard(Landroid/widget/EditText;)V

    goto :goto_1

    .line 400
    :cond_3
    new-instance v0, Lcom/miui/internal/widget/SearchActionModeView$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/SearchActionModeView$1;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 422
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 372
    iput-boolean v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vg:Z

    .line 373
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qf:Z

    if-eqz v0, :cond_1

    .line 374
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->setAlpha(F)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 454
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/internal/R$id;->content_mask:I

    if-ne v0, v1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uJ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 457
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 246
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 247
    sget v0, Lcom/miui/internal/R$id;->search_btn_cancel:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uJ:Landroid/view/View;

    .line 248
    const v0, 0x1020009

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uK:Landroid/widget/EditText;

    .line 249
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uT:I

    .line 250
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->va:I

    .line 253
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vb:I

    .line 255
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 260
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 261
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->pB:Z

    if-eqz v0, :cond_1

    .line 262
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qf:Z

    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->bE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->uR:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->bB()V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->pB:Z

    .line 270
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method protected pollViews()V
    .locals 0

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarView()Lcom/miui/internal/widget/ActionBarView;

    .line 335
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    .line 336
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getSplitActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    .line 337
    return-void
.end method

.method public queueIdle()Z
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vd:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public removeAnimationListener(Lmiui/view/ActionModeAnimationListener;)V
    .locals 1

    .prologue
    .line 169
    if-nez p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qd:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uL:Ljava/lang/ref/WeakReference;

    .line 147
    :cond_0
    return-void
.end method

.method public setAnimateView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uM:Ljava/lang/ref/WeakReference;

    .line 153
    :cond_0
    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 2

    .prologue
    .line 221
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->qe:F

    .line 222
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->qf:Z

    iget v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->qe:F

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->notifyAnimationUpdate(ZF)V

    .line 223
    return-void
.end method

.method protected setContentViewPadding(II)V
    .locals 5

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->va:I

    add-int/2addr v2, p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/miui/internal/widget/SearchActionModeView;->vb:I

    add-int/2addr v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 472
    :cond_0
    return-void
.end method

.method protected setContentViewTranslation(I)V
    .locals 2

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_0

    .line 462
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 464
    :cond_0
    return-void
.end method

.method public setOnBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uJ:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void
.end method

.method protected setOverlayMode(Z)V
    .locals 1

    .prologue
    .line 340
    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 341
    return-void
.end method

.method public setResultView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 178
    if-eqz p1, :cond_0

    .line 179
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uN:Ljava/lang/ref/WeakReference;

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 181
    instance-of v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 182
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uY:I

    .line 183
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uZ:I

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vc:Z

    .line 187
    :cond_0
    return-void
.end method

.method protected setResultViewMargin(Z)V
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uN:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->vc:Z

    if-eqz v0, :cond_0

    .line 356
    if-eqz p1, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->uU:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->vi:I

    sub-int v1, v0, v1

    .line 359
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    .line 364
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 365
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 366
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 368
    :cond_0
    return-void

    .line 361
    :cond_1
    iget v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->uY:I

    .line 362
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->uZ:I

    move v2, v1

    move v1, v0

    goto :goto_0
.end method

.method public setStatusBarPaddingTop(I)V
    .locals 0

    .prologue
    .line 548
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->uU:I

    .line 549
    return-void
.end method
