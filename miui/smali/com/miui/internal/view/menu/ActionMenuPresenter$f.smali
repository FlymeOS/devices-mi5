.class Lcom/miui/internal/view/menu/ActionMenuPresenter$f;
.super Lcom/miui/internal/view/menu/MenuPopupHelper;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/ActionMenuPresenter$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic mG:Lcom/miui/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 578
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$f;->mG:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 579
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/miui/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 580
    iget-object v0, p1, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mE:Lcom/miui/internal/view/menu/ActionMenuPresenter$g;

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$f;->setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    .line 581
    sget v0, Lcom/miui/internal/R$layout;->overflow_popup_menu_item_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$f;->setMenuItemLayout(I)V

    .line 582
    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 2

    .prologue
    .line 597
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    .line 598
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$f;->mG:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-static {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->e(Lcom/miui/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$f;->mG:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-static {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->e(Lcom/miui/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 601
    :cond_0
    return-void
.end method

.method public e(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    .prologue
    .line 593
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 586
    invoke-super {p0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 587
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$f;->mG:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->close()V

    .line 588
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$f;->mG:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->a(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$d;)Lcom/miui/internal/view/menu/ActionMenuPresenter$d;

    .line 589
    return-void
.end method
