.class Lcom/miui/internal/view/menu/ActionMenuPresenter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic mG:Lcom/miui/internal/view/menu/ActionMenuPresenter;

.field private mI:Lcom/miui/internal/view/menu/ActionMenuPresenter$d;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$d;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$c;->mG:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iput-object p2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$c;->mI:Lcom/miui/internal/view/menu/ActionMenuPresenter$d;

    .line 645
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$c;->mG:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->changeMenuMode()V

    .line 649
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$c;->mG:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    .line 650
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$c;->mI:Lcom/miui/internal/view/menu/ActionMenuPresenter$d;

    invoke-interface {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$d;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$c;->mG:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$c;->mI:Lcom/miui/internal/view/menu/ActionMenuPresenter$d;

    invoke-static {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->a(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$d;)Lcom/miui/internal/view/menu/ActionMenuPresenter$d;

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$c;->mG:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->a(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$c;)Lcom/miui/internal/view/menu/ActionMenuPresenter$c;

    .line 654
    return-void
.end method
