.class Lmiui/widget/NavigationLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ty:Lmiui/widget/NavigationLayout;


# direct methods
.method constructor <init>(Lmiui/widget/NavigationLayout;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lmiui/widget/NavigationLayout$1;->Ty:Lmiui/widget/NavigationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 170
    iget-object v1, p0, Lmiui/widget/NavigationLayout$1;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v1}, Lmiui/widget/NavigationLayout;->a(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v2

    .line 172
    iget-object v1, p0, Lmiui/widget/NavigationLayout$1;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v1}, Lmiui/widget/NavigationLayout;->b(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/widget/ViewDragHelper;->getEdgeSize()I

    move-result v1

    .line 174
    iget-object v3, p0, Lmiui/widget/NavigationLayout$1;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v3}, Lmiui/widget/NavigationLayout;->c(Lmiui/widget/NavigationLayout;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    if-eqz v2, :cond_0

    iget-object v0, p0, Lmiui/widget/NavigationLayout$1;->Ty:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result v0

    :cond_0
    sub-int/2addr v0, v1

    move v1, v0

    .line 180
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lmiui/widget/NavigationLayout$1;->Ty:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->getDrawerLockMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 181
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 182
    iget-object v3, p0, Lmiui/widget/NavigationLayout$1;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v3}, Lmiui/widget/NavigationLayout;->b(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v2, v1, v4}, Lcom/miui/internal/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 183
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->Tz:Z

    .line 184
    iget-object v0, p0, Lmiui/widget/NavigationLayout$1;->Ty:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->invalidate()V

    .line 186
    iget-object v0, p0, Lmiui/widget/NavigationLayout$1;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->d(Lmiui/widget/NavigationLayout;)V

    .line 188
    :cond_1
    return-void

    .line 177
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    :cond_3
    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method
