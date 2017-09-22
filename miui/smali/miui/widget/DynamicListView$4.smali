.class Lmiui/widget/DynamicListView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DynamicListView;->a(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Rd:Lmiui/widget/DynamicListView;

.field final synthetic Rf:Ljava/util/List;

.field final synthetic Rg:Landroid/widget/BaseAdapter;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;Landroid/widget/BaseAdapter;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 966
    iput-object p1, p0, Lmiui/widget/DynamicListView$4;->Rd:Lmiui/widget/DynamicListView;

    iput-object p2, p0, Lmiui/widget/DynamicListView$4;->Rg:Landroid/widget/BaseAdapter;

    iput-object p3, p0, Lmiui/widget/DynamicListView$4;->Rf:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 968
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Rd:Lmiui/widget/DynamicListView;

    invoke-virtual {v0}, Lmiui/widget/DynamicListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 969
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Rd:Lmiui/widget/DynamicListView;

    invoke-virtual {v0}, Lmiui/widget/DynamicListView;->getFirstVisiblePosition()I

    move-result v3

    .line 970
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Rd:Lmiui/widget/DynamicListView;

    invoke-virtual {v0}, Lmiui/widget/DynamicListView;->getChildCount()I

    move-result v4

    .line 971
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 972
    :goto_0
    if-ge v1, v4, :cond_2

    .line 973
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Rd:Lmiui/widget/DynamicListView;

    invoke-virtual {v0, v1}, Lmiui/widget/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 974
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    const/4 v8, 0x0

    aput v8, v7, v2

    invoke-static {v6, v0, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 976
    new-instance v7, Lmiui/widget/DynamicListView$4$1;

    invoke-direct {v7, p0, v6}, Lmiui/widget/DynamicListView$4$1;-><init>(Lmiui/widget/DynamicListView$4;Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 998
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 999
    add-int v0, v3, v1

    .line 1000
    iget-object v7, p0, Lmiui/widget/DynamicListView$4;->Rg:Landroid/widget/BaseAdapter;

    invoke-virtual {v7, v0}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v8

    .line 1001
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->n(Lmiui/widget/DynamicListView;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1002
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1003
    if-eqz v0, :cond_1

    .line 1004
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v7, :cond_0

    .line 1005
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v7

    .line 1006
    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 972
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1014
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v8, p0, Lmiui/widget/DynamicListView$4;->Rd:Lmiui/widget/DynamicListView;

    invoke-virtual {v8}, Lmiui/widget/DynamicListView;->getDividerHeight()I

    move-result v8

    add-int/2addr v0, v8

    .line 1016
    iget-object v8, p0, Lmiui/widget/DynamicListView$4;->Rf:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    mul-int/2addr v0, v8

    add-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1017
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v7

    .line 1018
    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 1021
    :cond_2
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->n(Lmiui/widget/DynamicListView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1022
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1023
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1024
    new-instance v1, Lmiui/widget/DynamicListView$4$2;

    invoke-direct {v1, p0}, Lmiui/widget/DynamicListView$4$2;-><init>(Lmiui/widget/DynamicListView$4;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1031
    iget-object v1, p0, Lmiui/widget/DynamicListView$4;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v1}, Lmiui/widget/DynamicListView;->l(Lmiui/widget/DynamicListView;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1032
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1033
    return v10
.end method
