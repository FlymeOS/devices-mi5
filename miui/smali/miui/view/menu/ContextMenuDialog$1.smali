.class Lmiui/view/menu/ContextMenuDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/menu/ContextMenuDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ms:Lmiui/view/menu/ContextMenuDialog;


# direct methods
.method constructor <init>(Lmiui/view/menu/ContextMenuDialog;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lmiui/view/menu/ContextMenuDialog$1;->Ms:Lmiui/view/menu/ContextMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 35
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 36
    iget-object v1, p0, Lmiui/view/menu/ContextMenuDialog$1;->Ms:Lmiui/view/menu/ContextMenuDialog;

    invoke-static {v1}, Lmiui/view/menu/ContextMenuDialog;->a(Lmiui/view/menu/ContextMenuDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
