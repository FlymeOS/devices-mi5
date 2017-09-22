.class Lmiui/widget/DynamicListView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DynamicListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Rd:Lmiui/widget/DynamicListView;

.field private ql:Z


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lmiui/widget/DynamicListView$5;->Rd:Lmiui/widget/DynamicListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 177
    iget-object v0, p0, Lmiui/widget/DynamicListView$5;->Rd:Lmiui/widget/DynamicListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/DynamicListView$5;->ql:Z

    .line 179
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    .line 157
    iget-object v0, p0, Lmiui/widget/DynamicListView$5;->Rd:Lmiui/widget/DynamicListView;

    iget-object v1, p0, Lmiui/widget/DynamicListView$5;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v1}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    .line 159
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_0
    iget-object v0, p0, Lmiui/widget/DynamicListView$5;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0, v4, v5}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;J)J

    .line 162
    iget-object v0, p0, Lmiui/widget/DynamicListView$5;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0, v4, v5}, Lmiui/widget/DynamicListView;->b(Lmiui/widget/DynamicListView;J)J

    .line 163
    iget-object v0, p0, Lmiui/widget/DynamicListView$5;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0, v4, v5}, Lmiui/widget/DynamicListView;->c(Lmiui/widget/DynamicListView;J)J

    .line 164
    iget-object v0, p0, Lmiui/widget/DynamicListView$5;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0, v6}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 165
    iget-object v0, p0, Lmiui/widget/DynamicListView$5;->Rd:Lmiui/widget/DynamicListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/DynamicListView;->setEnabled(Z)V

    .line 166
    iget-object v0, p0, Lmiui/widget/DynamicListView$5;->Rd:Lmiui/widget/DynamicListView;

    invoke-virtual {v0}, Lmiui/widget/DynamicListView;->invalidate()V

    .line 167
    iget-object v0, p0, Lmiui/widget/DynamicListView$5;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0, v6}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 169
    iget-boolean v0, p0, Lmiui/widget/DynamicListView$5;->ql:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/widget/DynamicListView$5;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->b(Lmiui/widget/DynamicListView;)Lmiui/widget/DynamicListView$RearrangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lmiui/widget/DynamicListView$5;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->b(Lmiui/widget/DynamicListView;)Lmiui/widget/DynamicListView$RearrangeListener;

    move-result-object v0

    invoke-interface {v0}, Lmiui/widget/DynamicListView$RearrangeListener;->onDragEnd()V

    .line 172
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lmiui/widget/DynamicListView$5;->Rd:Lmiui/widget/DynamicListView;

    invoke-virtual {v0, v1}, Lmiui/widget/DynamicListView;->setEnabled(Z)V

    .line 152
    iput-boolean v1, p0, Lmiui/widget/DynamicListView$5;->ql:Z

    .line 153
    return-void
.end method
