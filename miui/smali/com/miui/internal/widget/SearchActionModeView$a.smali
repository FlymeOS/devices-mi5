.class Lcom/miui/internal/widget/SearchActionModeView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic vj:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$a;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 0

    .prologue
    .line 644
    return-void
.end method

.method public onStop(Z)V
    .locals 2

    .prologue
    .line 659
    if-eqz p1, :cond_0

    .line 660
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$a;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v0

    .line 661
    if-eqz v0, :cond_0

    .line 662
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 665
    :cond_0
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 4

    .prologue
    .line 648
    if-nez p1, :cond_0

    .line 649
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p2, v0, p2

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$a;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v0

    .line 652
    if-eqz v0, :cond_1

    .line 653
    neg-float v1, p2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$a;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->f(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 655
    :cond_1
    return-void
.end method
