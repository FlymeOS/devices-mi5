.class Lmiui/widget/DynamicListView$4$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DynamicListView$4;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Rh:Lmiui/widget/DynamicListView$4;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView$4;)V
    .locals 0

    .prologue
    .line 1024
    iput-object p1, p0, Lmiui/widget/DynamicListView$4$2;->Rh:Lmiui/widget/DynamicListView$4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1027
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1028
    iget-object v0, p0, Lmiui/widget/DynamicListView$4$2;->Rh:Lmiui/widget/DynamicListView$4;

    iget-object v0, v0, Lmiui/widget/DynamicListView$4;->Rd:Lmiui/widget/DynamicListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/DynamicListView;->setEnabled(Z)V

    .line 1029
    return-void
.end method
