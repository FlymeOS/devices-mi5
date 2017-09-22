.class Lcom/miui/internal/view/menu/ActionMenuView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field mM:Z

.field mN:Landroid/animation/Animator;

.field mO:Landroid/animation/Animator;

.field final synthetic mP:Lcom/miui/internal/view/menu/ActionMenuView;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuView;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView$a;->mP:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView$a;->initialize()V

    .line 305
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$a;->mN:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$a;->mN:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$a;->mN:Landroid/animation/Animator;

    .line 309
    :cond_0
    return-void
.end method

.method close()V
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView$a;->cancel()V

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$a;->mM:Z

    .line 299
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$a;->mO:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 300
    return-void
.end method

.method initialize()V
    .locals 4

    .prologue
    .line 278
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$a;->mO:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 279
    const-string v0, "TranslationY"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuView$a;->mP:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v3}, Lcom/miui/internal/view/menu/ActionMenuView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$a;->mO:Landroid/animation/Animator;

    .line 281
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$a;->mO:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuView$a;->mP:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 283
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$a;->mO:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 285
    :cond_0
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$a;->mN:Landroid/animation/Animator;

    .line 319
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView$a;->mN:Landroid/animation/Animator;

    .line 314
    return-void
.end method

.method open()V
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView$a;->cancel()V

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$a;->mM:Z

    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuView$a;->setTranslationY(F)V

    .line 292
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView$a;->mP:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->startLayoutAnimation()V

    .line 293
    return-void
.end method

.method public setTranslationY(F)V
    .locals 2

    .prologue
    .line 269
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuView$a;->mP:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuView$a;->mP:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_0
    return-void
.end method
