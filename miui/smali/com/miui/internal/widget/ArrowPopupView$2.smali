.class Lcom/miui/internal/widget/ArrowPopupView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ArrowPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancel:Z

.field final synthetic sW:Lcom/miui/internal/widget/ArrowPopupView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ArrowPopupView;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->sW:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->mCancel:Z

    .line 169
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->mCancel:Z

    if-eqz v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->sW:Lcom/miui/internal/widget/ArrowPopupView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/internal/widget/ArrowPopupView;->a(Lcom/miui/internal/widget/ArrowPopupView;Z)Z

    .line 177
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->sW:Lcom/miui/internal/widget/ArrowPopupView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/internal/widget/ArrowPopupView;->a(Lcom/miui/internal/widget/ArrowPopupView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 178
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->sW:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lcom/miui/internal/widget/ArrowPopupView;->c(Lcom/miui/internal/widget/ArrowPopupView;)Lmiui/widget/ArrowPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->dismiss()V

    .line 179
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->sW:Lcom/miui/internal/widget/ArrowPopupView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ArrowPopupView;->setArrowMode(I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->mCancel:Z

    .line 163
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->sW:Lcom/miui/internal/widget/ArrowPopupView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/internal/widget/ArrowPopupView;->a(Lcom/miui/internal/widget/ArrowPopupView;Z)Z

    .line 164
    return-void
.end method
