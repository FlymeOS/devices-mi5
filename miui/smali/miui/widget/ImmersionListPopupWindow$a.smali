.class Lmiui/widget/ImmersionListPopupWindow$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ImmersionListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic RR:Lmiui/widget/ImmersionListPopupWindow;

.field private RV:Z

.field private RX:Landroid/animation/Animator;


# direct methods
.method private constructor <init>(Lmiui/widget/ImmersionListPopupWindow;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow$a;->RR:Lmiui/widget/ImmersionListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ImmersionListPopupWindow;Lmiui/widget/ImmersionListPopupWindow$1;)V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lmiui/widget/ImmersionListPopupWindow$a;-><init>(Lmiui/widget/ImmersionListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 444
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$a;->RX:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$a;->RX:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 446
    iput-object v1, p0, Lmiui/widget/ImmersionListPopupWindow$a;->RX:Landroid/animation/Animator;

    .line 448
    :cond_0
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$a;->RR:Lmiui/widget/ImmersionListPopupWindow;

    invoke-static {v0}, Lmiui/widget/ImmersionListPopupWindow;->a(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 449
    iget-boolean v0, p0, Lmiui/widget/ImmersionListPopupWindow$a;->RV:Z

    if-nez v0, :cond_1

    .line 450
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$a;->RR:Lmiui/widget/ImmersionListPopupWindow;

    invoke-static {v0}, Lmiui/widget/ImmersionListPopupWindow;->i(Lmiui/widget/ImmersionListPopupWindow;)V

    .line 452
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 456
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 434
    iget-boolean v0, p0, Lmiui/widget/ImmersionListPopupWindow$a;->RV:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$a;->RR:Lmiui/widget/ImmersionListPopupWindow;

    invoke-static {v0}, Lmiui/widget/ImmersionListPopupWindow;->g(Lmiui/widget/ImmersionListPopupWindow;)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    .line 436
    :goto_0
    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow$a;->RR:Lmiui/widget/ImmersionListPopupWindow;

    iget-boolean v2, p0, Lmiui/widget/ImmersionListPopupWindow$a;->RV:Z

    invoke-virtual {v1, v0, v2}, Lmiui/widget/ImmersionListPopupWindow;->getBackgroundAnimator(Landroid/view/animation/LayoutAnimationController;Z)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$a;->RX:Landroid/animation/Animator;

    .line 437
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$a;->RX:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$a;->RX:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 440
    :cond_0
    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$a;->RR:Lmiui/widget/ImmersionListPopupWindow;

    invoke-static {v0}, Lmiui/widget/ImmersionListPopupWindow;->h(Lmiui/widget/ImmersionListPopupWindow;)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    goto :goto_0
.end method

.method public t(Z)V
    .locals 0

    .prologue
    .line 429
    iput-boolean p1, p0, Lmiui/widget/ImmersionListPopupWindow$a;->RV:Z

    .line 430
    return-void
.end method
