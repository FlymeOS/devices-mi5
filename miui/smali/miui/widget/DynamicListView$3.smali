.class Lmiui/widget/DynamicListView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DynamicListView;->removeItems(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Rd:Lmiui/widget/DynamicListView;

.field final synthetic Re:Ljava/util/List;

.field final synthetic Rf:Ljava/util/List;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 907
    iput-object p1, p0, Lmiui/widget/DynamicListView$3;->Rd:Lmiui/widget/DynamicListView;

    iput-object p2, p0, Lmiui/widget/DynamicListView$3;->Re:Ljava/util/List;

    iput-object p3, p0, Lmiui/widget/DynamicListView$3;->Rf:Ljava/util/List;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 910
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 911
    iget-object v0, p0, Lmiui/widget/DynamicListView$3;->Rd:Lmiui/widget/DynamicListView;

    iget-object v1, p0, Lmiui/widget/DynamicListView$3;->Re:Ljava/util/List;

    iget-object v2, p0, Lmiui/widget/DynamicListView$3;->Rf:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;Ljava/util/List;Ljava/util/List;)V

    .line 912
    return-void
.end method
