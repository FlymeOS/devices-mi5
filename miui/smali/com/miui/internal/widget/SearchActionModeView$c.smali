.class Lcom/miui/internal/widget/SearchActionModeView$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic vj:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .locals 0

    .prologue
    .line 748
    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$c;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 2

    .prologue
    .line 752
    if-eqz p1, :cond_0

    .line 753
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$c;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->p(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$c;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 754
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$c;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->p(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 755
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$c;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->p(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 757
    :cond_0
    return-void
.end method

.method public onStop(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 767
    if-eqz p1, :cond_1

    .line 768
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$c;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$c;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->p(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 772
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$c;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->p(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$c;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->p(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public onUpdate(ZF)V
    .locals 1

    .prologue
    .line 761
    if-eqz p1, :cond_0

    .line 762
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$c;->vj:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->p(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 763
    return-void

    .line 761
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p2, v0, p2

    goto :goto_0
.end method
