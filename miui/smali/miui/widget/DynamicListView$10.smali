.class Lmiui/widget/DynamicListView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DynamicListView;->el()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Rd:Lmiui/widget/DynamicListView;

.field final synthetic Rn:Landroid/view/ViewTreeObserver;

.field final synthetic Ro:J

.field final synthetic Rp:I

.field final synthetic Rq:I


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;Landroid/view/ViewTreeObserver;JII)V
    .locals 1

    .prologue
    .line 666
    iput-object p1, p0, Lmiui/widget/DynamicListView$10;->Rd:Lmiui/widget/DynamicListView;

    iput-object p2, p0, Lmiui/widget/DynamicListView$10;->Rn:Landroid/view/ViewTreeObserver;

    iput-wide p3, p0, Lmiui/widget/DynamicListView$10;->Ro:J

    iput p5, p0, Lmiui/widget/DynamicListView$10;->Rp:I

    iput p6, p0, Lmiui/widget/DynamicListView$10;->Rq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 668
    iget-object v0, p0, Lmiui/widget/DynamicListView$10;->Rn:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 669
    iget-object v0, p0, Lmiui/widget/DynamicListView$10;->Rd:Lmiui/widget/DynamicListView;

    iget-wide v2, p0, Lmiui/widget/DynamicListView$10;->Ro:J

    invoke-virtual {v0, v2, v3}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    .line 670
    iget-object v1, p0, Lmiui/widget/DynamicListView$10;->Rd:Lmiui/widget/DynamicListView;

    iget v2, p0, Lmiui/widget/DynamicListView$10;->Rp:I

    invoke-static {v1, v2}, Lmiui/widget/DynamicListView;->b(Lmiui/widget/DynamicListView;I)I

    .line 671
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 672
    iget v2, p0, Lmiui/widget/DynamicListView$10;->Rq:I

    sub-int v1, v2, v1

    .line 673
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 674
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v5, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 676
    iget-object v1, p0, Lmiui/widget/DynamicListView$10;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v1}, Lmiui/widget/DynamicListView;->l(Lmiui/widget/DynamicListView;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 677
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 678
    return v5
.end method
