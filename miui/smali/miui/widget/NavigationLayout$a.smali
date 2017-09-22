.class Lmiui/widget/NavigationLayout$a;
.super Lcom/miui/internal/widget/ViewDragHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic Ty:Lmiui/widget/NavigationLayout;


# direct methods
.method private constructor <init>(Lmiui/widget/NavigationLayout;)V
    .locals 0

    .prologue
    .line 1098
    iput-object p1, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-direct {p0}, Lcom/miui/internal/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/NavigationLayout;Lmiui/widget/NavigationLayout$1;)V
    .locals 0

    .prologue
    .line 1098
    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout$a;-><init>(Lmiui/widget/NavigationLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 2

    .prologue
    .line 1146
    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->c(Lmiui/widget/NavigationLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1147
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    .line 1149
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1146
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->a(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->a(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEdgeDragStarted(II)V
    .locals 2

    .prologue
    .line 1159
    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->getDrawerLockMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1160
    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->b(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v1}, Lmiui/widget/NavigationLayout;->a(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/internal/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 1161
    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    iget-object v1, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v1}, Lmiui/widget/NavigationLayout;->g(Lmiui/widget/NavigationLayout;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/NavigationLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1163
    :cond_0
    return-void
.end method

.method public onEdgeTouched(II)V
    .locals 4

    .prologue
    .line 1154
    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    iget-object v1, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v1}, Lmiui/widget/NavigationLayout;->g(Lmiui/widget/NavigationLayout;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Lmiui/widget/NavigationLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1155
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 1125
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 1126
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->Tz:Z

    .line 1127
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->h(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1168
    if-nez p1, :cond_0

    .line 1169
    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->isNavigationDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1170
    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->h(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;

    move-result-object v0

    invoke-interface {v0}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerOpened()V

    .line 1175
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->h(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerDragStateChanged(I)V

    .line 1177
    :cond_1
    return-void

    .line 1172
    :cond_2
    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->h(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;

    move-result-object v0

    invoke-interface {v0}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerClosed()V

    goto :goto_0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 2

    .prologue
    .line 1112
    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->a(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1113
    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->a(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1115
    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->c(Lmiui/widget/NavigationLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    .line 1117
    :goto_0
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1118
    iget-object v1, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v1, v0}, Lmiui/widget/NavigationLayout;->b(Lmiui/widget/NavigationLayout;F)V

    .line 1119
    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->invalidate()V

    .line 1121
    :cond_0
    return-void

    .line 1115
    :cond_1
    add-int v0, p2, v1

    goto :goto_0
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 1131
    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->f(Lmiui/widget/NavigationLayout;)F

    move-result v4

    .line 1132
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1134
    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->c(Lmiui/widget/NavigationLayout;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    .line 1135
    :goto_0
    iget-object v5, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v5}, Lmiui/widget/NavigationLayout;->c(Lmiui/widget/NavigationLayout;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v2, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-virtual {v2}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result v2

    .line 1136
    :goto_1
    iget-object v5, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v5}, Lmiui/widget/NavigationLayout;->c(Lmiui/widget/NavigationLayout;)Z

    move-result v5

    if-eqz v5, :cond_5

    cmpg-float v5, p2, v6

    if-gez v5, :cond_0

    move v1, v3

    .line 1138
    :cond_0
    :goto_2
    if-nez v1, :cond_1

    cmpl-float v1, p2, v6

    if-nez v1, :cond_2

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, v4, v1

    if-lez v1, :cond_2

    :cond_1
    move v2, v0

    .line 1140
    :cond_2
    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->b(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/miui/internal/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 1141
    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->invalidate()V

    .line 1142
    return-void

    :cond_3
    move v0, v1

    .line 1134
    goto :goto_0

    .line 1135
    :cond_4
    neg-int v2, v2

    goto :goto_1

    .line 1136
    :cond_5
    cmpl-float v5, p2, v6

    if-lez v5, :cond_0

    move v1, v3

    goto :goto_2
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->a(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lmiui/widget/NavigationLayout$a;->Ty:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->getDrawerLockMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
