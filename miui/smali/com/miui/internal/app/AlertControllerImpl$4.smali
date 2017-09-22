.class Lcom/miui/internal/app/AlertControllerImpl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/app/AlertControllerImpl;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cE:Lcom/miui/internal/app/AlertControllerImpl;

.field final synthetic cF:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/AlertControllerImpl;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$4;->cE:Lcom/miui/internal/app/AlertControllerImpl;

    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl$4;->cF:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 663
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$4;->cE:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->i(Lcom/miui/internal/app/AlertControllerImpl;)Lmiui/widget/EditableListViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/EditableListViewWrapper;->isAllItemsChecked()Z

    move-result v1

    .line 664
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$4;->cE:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->i(Lcom/miui/internal/app/AlertControllerImpl;)Lmiui/widget/EditableListViewWrapper;

    move-result-object v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lmiui/widget/EditableListViewWrapper;->setAllItemsChecked(Z)V

    .line 665
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl$4;->cF:Landroid/widget/Button;

    if-eqz v1, :cond_1

    sget v0, Lmiui/R$string;->select_all:I

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    .line 667
    return-void

    .line 664
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 665
    :cond_1
    sget v0, Lmiui/R$string;->deselect_all:I

    goto :goto_1
.end method
