.class Lcom/miui/internal/widget/ScrollingTabTextView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/ScrollingTabTextView;->startScrollAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uI:Lcom/miui/internal/widget/ScrollingTabTextView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ScrollingTabTextView;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabTextView$1;->uI:Lcom/miui/internal/widget/ScrollingTabTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 115
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabTextView$1;->uI:Lcom/miui/internal/widget/ScrollingTabTextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/miui/internal/widget/ScrollingTabTextView;->a(Lcom/miui/internal/widget/ScrollingTabTextView;I)I

    .line 116
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView$1;->uI:Lcom/miui/internal/widget/ScrollingTabTextView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabTextView;->invalidate()V

    .line 117
    return-void
.end method
