.class Lcom/miui/internal/widget/ActionBarOverlayLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/miui/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic rg:Lcom/miui/internal/widget/ActionBarOverlayLayout;

.field private rk:Lcom/miui/internal/view/menu/MenuDialogHelper;


# direct methods
.method private constructor <init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;)V
    .locals 0

    .prologue
    .line 730
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$b;->rg:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Lcom/miui/internal/widget/ActionBarOverlayLayout$1;)V
    .locals 0

    .prologue
    .line 730
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$b;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;)V

    return-void
.end method


# virtual methods
.method public f(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 3

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 735
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 737
    :cond_0
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$b;->rg:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 743
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 744
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 2

    .prologue
    .line 749
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 750
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$b;->f(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 753
    :cond_0
    if-eqz p2, :cond_2

    .line 754
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 755
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$b;->rg:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->c(Lcom/miui/internal/widget/ActionBarOverlayLayout;)V

    .line 759
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$b;->rk:Lcom/miui/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_2

    .line 760
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$b;->rk:Lcom/miui/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 761
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$b;->rk:Lcom/miui/internal/view/menu/MenuDialogHelper;

    .line 764
    :cond_2
    return-void
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 780
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 782
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    .prologue
    .line 788
    return-void
.end method

.method public onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 2

    .prologue
    .line 768
    if-nez p1, :cond_0

    .line 769
    const/4 v0, 0x0

    .line 774
    :goto_0
    return v0

    .line 771
    :cond_0
    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    .line 772
    new-instance v0, Lcom/miui/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/miui/internal/view/menu/MenuDialogHelper;-><init>(Lcom/miui/internal/view/menu/MenuBuilder;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$b;->rk:Lcom/miui/internal/view/menu/MenuDialogHelper;

    .line 773
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$b;->rk:Lcom/miui/internal/view/menu/MenuDialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 774
    const/4 v0, 0x1

    goto :goto_0
.end method
