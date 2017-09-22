.class Lcom/miui/internal/widget/SearchActionModeView$e;
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
    name = "e"
.end annotation


# instance fields
.field final synthetic vj:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$e;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 0

    .prologue
    .line 672
    return-void
.end method

.method public onStop(Z)V
    .locals 0

    .prologue
    .line 687
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 2

    .prologue
    .line 676
    if-nez p1, :cond_0

    .line 677
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p2, v0, p2

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$e;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SearchActionModeView;->getSplitActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v0

    .line 680
    if-eqz v0, :cond_1

    .line 681
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 683
    :cond_1
    return-void
.end method
