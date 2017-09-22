.class Lcom/miui/internal/app/ActionBarImpl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/app/ActionBarImpl;->createSearchActionModeView()Lcom/miui/internal/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bC:Lcom/miui/internal/app/ActionBarImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarImpl;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$4;->bC:Lcom/miui/internal/app/ActionBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$4;->bC:Lcom/miui/internal/app/ActionBarImpl;

    iget-object v0, v0, Lcom/miui/internal/app/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$4;->bC:Lcom/miui/internal/app/ActionBarImpl;

    iget-object v0, v0, Lcom/miui/internal/app/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 857
    :cond_0
    return-void
.end method
