.class Lcom/miui/internal/widget/ActionBarView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/ActionBarView;->initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sb:Lcom/miui/internal/widget/ActionBarView;

.field final synthetic sc:Lcom/miui/internal/app/ActionBarDelegateImpl;

.field final synthetic sd:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarView;Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView$4;->sb:Lcom/miui/internal/widget/ActionBarView;

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarView$4;->sc:Lcom/miui/internal/app/ActionBarDelegateImpl;

    iput-object p3, p0, Lcom/miui/internal/widget/ActionBarView$4;->sd:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$4;->sc:Lcom/miui/internal/app/ActionBarDelegateImpl;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$4;->sd:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView$4;->sb:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/app/ActionBarDelegateImpl;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 296
    return-void
.end method