.class Lcom/miui/internal/app/FragmentDelegate$2;
.super Lcom/miui/internal/view/SimpleWindowCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/FragmentDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cX:Lcom/miui/internal/app/FragmentDelegate;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/FragmentDelegate;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/miui/internal/app/FragmentDelegate$2;->cX:Lcom/miui/internal/app/FragmentDelegate;

    invoke-direct {p0}, Lcom/miui/internal/view/SimpleWindowCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$2;->cX:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {v0}, Lcom/miui/internal/app/FragmentDelegate;->c(Lcom/miui/internal/app/FragmentDelegate;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lmiui/app/IFragment;

    invoke-interface {v0, p1}, Lmiui/app/IFragment;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 95
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$2;->cX:Lcom/miui/internal/app/FragmentDelegate;

    invoke-static {v0}, Lcom/miui/internal/app/FragmentDelegate;->c(Lcom/miui/internal/app/FragmentDelegate;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lmiui/app/IFragment;

    invoke-interface {v0, p1}, Lmiui/app/IFragment;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 90
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$2;->cX:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/FragmentDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate$2;->cX:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/FragmentDelegate;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
