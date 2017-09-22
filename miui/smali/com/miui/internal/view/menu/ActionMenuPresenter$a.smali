.class Lcom/miui/internal/view/menu/ActionMenuPresenter$a;
.super Lcom/miui/internal/view/menu/MenuDialogHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic mG:Lcom/miui/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/SubMenuBuilder;)V
    .locals 1

    .prologue
    .line 606
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$a;->mG:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 607
    invoke-direct {p0, p2}, Lcom/miui/internal/view/menu/MenuDialogHelper;-><init>(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 608
    iget-object v0, p1, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mE:Lcom/miui/internal/view/menu/ActionMenuPresenter$g;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    .line 609
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 613
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuDialogHelper;->onDismiss(Landroid/content/DialogInterface;)V

    .line 614
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$a;->mG:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->a(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$a;)Lcom/miui/internal/view/menu/ActionMenuPresenter$a;

    .line 615
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$a;->mG:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mF:I

    .line 616
    return-void
.end method
