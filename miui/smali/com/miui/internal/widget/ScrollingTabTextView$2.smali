.class Lcom/miui/internal/widget/ScrollingTabTextView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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
    .line 119
    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabTextView$2;->uI:Lcom/miui/internal/widget/ScrollingTabTextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabTextView$2;->uI:Lcom/miui/internal/widget/ScrollingTabTextView;

    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabTextView$2;->uI:Lcom/miui/internal/widget/ScrollingTabTextView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ScrollingTabTextView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/internal/widget/ScrollingTabTextView;->a(Lcom/miui/internal/widget/ScrollingTabTextView;I)I

    .line 123
    return-void
.end method
