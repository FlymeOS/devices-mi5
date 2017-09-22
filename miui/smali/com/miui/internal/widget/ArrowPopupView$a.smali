.class Lcom/miui/internal/widget/ArrowPopupView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ArrowPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public rj:Landroid/view/View$OnClickListener;

.field final synthetic sW:Lcom/miui/internal/widget/ArrowPopupView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ArrowPopupView;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$a;->sW:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$a;->rj:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$a;->rj:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$a;->sW:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lcom/miui/internal/widget/ArrowPopupView;->c(Lcom/miui/internal/widget/ArrowPopupView;)Lmiui/widget/ArrowPopupWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/ArrowPopupWindow;->dismiss(Z)V

    .line 825
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$a;->rj:Landroid/view/View$OnClickListener;

    .line 817
    return-void
.end method
